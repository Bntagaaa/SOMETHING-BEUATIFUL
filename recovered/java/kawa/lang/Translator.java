package kawa.lang;

import gnu.bytecode.ClassType;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.InlineCalls;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.LetExp;
import gnu.expr.ModuleExp;
import gnu.expr.ModuleInfo;
import gnu.expr.NameLookup;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.ScopeExp;
import gnu.expr.Special;
import gnu.kawa.functions.AppendValues;
import gnu.kawa.functions.CompileNamedPart;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.lists.PairWithPosition;
import gnu.mapping.Environment;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.Namespace;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import gnu.mapping.Values;
import gnu.text.SourceLocator;
import gnu.text.SourceMessages;
import gnu.xml.NamespaceBinding;
import java.util.Stack;
import java.util.Vector;
import kawa.standard.begin;
import kawa.standard.require;

/* loaded from: classes2.dex */
public class Translator extends Compilation {
    private static Expression errorExp;
    public static final Declaration getNamedPartDecl;
    public LambdaExp curMethodLambda;
    public Macro currentMacroDefinition;
    Syntax currentSyntax;
    private Environment env;
    public int firstForm;
    public Stack formStack;
    Declaration macroContext;
    public Declaration matchArray;
    Vector notedAccess;
    public PatternScope patternScope;
    public Object pendingForm;
    PairWithPosition positionPair;
    Stack renamedAliasStack;
    public Declaration templateScopeDecl;
    public NamespaceBinding xmlElementNamespaces;

    static {
        Declaration declarationFromStatic = Declaration.getDeclarationFromStatic("gnu.kawa.functions.GetNamedPart", "getNamedPart");
        getNamedPartDecl = declarationFromStatic;
        LispLanguage.getNamedPartLocation.setDeclaration(declarationFromStatic);
        errorExp = new ErrorExp("unknown syntax error");
    }

    public Translator(Language language, SourceMessages sourceMessages, NameLookup nameLookup) {
        super(language, sourceMessages, nameLookup);
        this.formStack = new Stack();
        this.xmlElementNamespaces = NamespaceBinding.predefinedXML;
        this.env = Environment.getCurrent();
    }

    public final Environment getGlobalEnvironment() {
        return this.env;
    }

    @Override // gnu.expr.Compilation
    public Expression parse(Object obj) {
        return rewrite(obj);
    }

    public final Expression rewrite_car(Pair pair, SyntaxForm syntaxForm) {
        if (syntaxForm == null || syntaxForm.getScope() == this.current_scope || (pair.getCar() instanceof SyntaxForm)) {
            return rewrite_car(pair, false);
        }
        ScopeExp scopeExp = this.current_scope;
        try {
            setCurrentScope(syntaxForm.getScope());
            return rewrite_car(pair, false);
        } finally {
            setCurrentScope(scopeExp);
        }
    }

    public final Expression rewrite_car(Pair pair, boolean z) {
        Object car = pair.getCar();
        if (pair instanceof PairWithPosition) {
            return rewrite_with_position(car, z, (PairWithPosition) pair);
        }
        return rewrite(car, z);
    }

    public Syntax getCurrentSyntax() {
        return this.currentSyntax;
    }

    public Expression apply_rewrite(Syntax syntax, Pair pair) {
        Syntax syntax2 = this.currentSyntax;
        this.currentSyntax = syntax;
        try {
            return syntax.rewriteForm(pair, this);
        } finally {
            this.currentSyntax = syntax2;
        }
    }

    public static ReferenceExp getOriginalRef(Declaration declaration) {
        if (declaration == null || !declaration.isAlias() || declaration.isIndirectBinding()) {
            return null;
        }
        Expression value = declaration.getValue();
        if (value instanceof ReferenceExp) {
            return (ReferenceExp) value;
        }
        return null;
    }

    public final boolean selfEvaluatingSymbol(Object obj) {
        return ((LispLanguage) getLanguage()).selfEvaluatingSymbol(obj);
    }

    public final boolean matches(Object obj, String str) {
        return matches(obj, (SyntaxForm) null, str);
    }

    public boolean matches(Object obj, SyntaxForm syntaxForm, String str) {
        ReferenceExp originalRef;
        if (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        if ((obj instanceof SimpleSymbol) && !selfEvaluatingSymbol(obj) && (originalRef = getOriginalRef(this.lexical.lookup(obj, -1))) != null) {
            obj = originalRef.getSymbol();
        }
        return (obj instanceof SimpleSymbol) && ((Symbol) obj).getLocalPart() == str;
    }

    public boolean matches(Object obj, SyntaxForm syntaxForm, Symbol symbol) {
        ReferenceExp originalRef;
        if (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        if ((obj instanceof SimpleSymbol) && !selfEvaluatingSymbol(obj) && (originalRef = getOriginalRef(this.lexical.lookup(obj, -1))) != null) {
            obj = originalRef.getSymbol();
        }
        return obj == symbol;
    }

    public Object matchQuoted(Pair pair) {
        if (!matches(pair.getCar(), LispLanguage.quote_sym) || !(pair.getCdr() instanceof Pair)) {
            return null;
        }
        Pair pair2 = (Pair) pair.getCdr();
        if (pair2.getCdr() == LList.Empty) {
            return pair2.getCar();
        }
        return null;
    }

    @Override // gnu.expr.Compilation
    public Declaration lookup(Object obj, int i) {
        Declaration declarationLookup = this.lexical.lookup(obj, i);
        return (declarationLookup == null || !getLanguage().hasNamespace(declarationLookup, i)) ? currentModule().lookup(obj, getLanguage(), i) : declarationLookup;
    }

    public Declaration lookupGlobal(Object obj) {
        return lookupGlobal(obj, -1);
    }

    public Declaration lookupGlobal(Object obj, int i) {
        ModuleExp moduleExpCurrentModule = currentModule();
        Declaration declarationLookup = moduleExpCurrentModule.lookup(obj, getLanguage(), i);
        if (declarationLookup != null) {
            return declarationLookup;
        }
        Declaration noDefine = moduleExpCurrentModule.getNoDefine(obj);
        noDefine.setIndirectBinding(true);
        return noDefine;
    }

    public Syntax check_if_Syntax(Declaration declaration) {
        Object objEval;
        Declaration declarationFollowAliases = Declaration.followAliases(declaration);
        Expression value = declarationFollowAliases.getValue();
        if (value != null && declarationFollowAliases.getFlag(32768L)) {
            try {
                if (declaration.getValue() instanceof ReferenceExp) {
                    Declaration declarationContextDecl = ((ReferenceExp) declaration.getValue()).contextDecl();
                    if (declarationContextDecl != null) {
                        this.macroContext = declarationContextDecl;
                    } else {
                        ScopeExp scopeExp = this.current_scope;
                        if (scopeExp instanceof TemplateScope) {
                            this.macroContext = ((TemplateScope) scopeExp).macroContext;
                        }
                    }
                } else {
                    ScopeExp scopeExp2 = this.current_scope;
                    if (scopeExp2 instanceof TemplateScope) {
                        this.macroContext = ((TemplateScope) scopeExp2).macroContext;
                    }
                }
                objEval = value.eval(this.env);
            } catch (Throwable th) {
                th.printStackTrace();
                error('e', "unable to evaluate macro for " + declaration.getSymbol());
            }
        } else {
            objEval = (!declaration.getFlag(32768L) || declaration.needsContext()) ? null : StaticFieldLocation.make(declaration).get(null);
        }
        if (objEval instanceof Syntax) {
            return (Syntax) objEval;
        }
        return null;
    }

    public Expression rewrite_pair(Pair pair, boolean z) {
        Symbol symbol;
        Expression expressionRewrite_car = rewrite_car(pair, true);
        if (expressionRewrite_car instanceof QuoteExp) {
            Object objValueIfConstant = expressionRewrite_car.valueIfConstant();
            if (objValueIfConstant instanceof Syntax) {
                return apply_rewrite((Syntax) objValueIfConstant, pair);
            }
        }
        boolean z2 = expressionRewrite_car instanceof ReferenceExp;
        if (z2) {
            ReferenceExp referenceExp = (ReferenceExp) expressionRewrite_car;
            Declaration binding = referenceExp.getBinding();
            if (binding == null) {
                Object symbol2 = referenceExp.getSymbol();
                if ((symbol2 instanceof Symbol) && !selfEvaluatingSymbol(symbol2)) {
                    symbol = (Symbol) symbol2;
                    symbol.getName();
                } else {
                    symbol = this.env.getSymbol(symbol2.toString());
                }
                Object obj = this.env.get(symbol, getLanguage().hasSeparateFunctionNamespace() ? EnvironmentKey.FUNCTION : null, null);
                if (obj instanceof Syntax) {
                    return apply_rewrite((Syntax) obj, pair);
                }
                if (obj instanceof AutoloadProcedure) {
                    try {
                        ((AutoloadProcedure) obj).getLoaded();
                    } catch (RuntimeException unused) {
                    }
                }
            } else {
                Declaration declaration = this.macroContext;
                Syntax syntaxCheck_if_Syntax = check_if_Syntax(binding);
                if (syntaxCheck_if_Syntax != null) {
                    Expression expressionApply_rewrite = apply_rewrite(syntaxCheck_if_Syntax, pair);
                    this.macroContext = declaration;
                    return expressionApply_rewrite;
                }
            }
            referenceExp.setProcedureName(true);
            if (getLanguage().hasSeparateFunctionNamespace()) {
                expressionRewrite_car.setFlag(8);
            }
        }
        Object cdr = pair.getCdr();
        int iListLength = listLength(cdr);
        if (iListLength == -1) {
            return syntaxError("circular list is not allowed after " + pair.getCar());
        }
        if (iListLength < 0) {
            return syntaxError("dotted list [" + cdr + "] is not allowed after " + pair.getCar());
        }
        Stack stack = new Stack();
        ScopeExp scopeExp = this.current_scope;
        int i = 0;
        while (i < iListLength) {
            if (cdr instanceof SyntaxForm) {
                SyntaxForm syntaxForm = (SyntaxForm) cdr;
                Object datum = syntaxForm.getDatum();
                setCurrentScope(syntaxForm.getScope());
                cdr = datum;
            }
            Pair pair2 = (Pair) cdr;
            i++;
            stack.addElement(rewrite_car(pair2, false));
            cdr = pair2.getCdr();
        }
        Expression[] expressionArr = new Expression[stack.size()];
        stack.copyInto(expressionArr);
        if (scopeExp != this.current_scope) {
            setCurrentScope(scopeExp);
        }
        if (z2 && ((ReferenceExp) expressionRewrite_car).getBinding() == getNamedPartDecl) {
            Expression expression = expressionArr[0];
            Expression expression2 = expressionArr[1];
            Symbol symbolNamespaceResolve = namespaceResolve(expression, expression2);
            if (symbolNamespaceResolve != null) {
                return rewrite(symbolNamespaceResolve, z);
            }
            return CompileNamedPart.makeExp(expression, expression2);
        }
        return ((LispLanguage) getLanguage()).makeApply(expressionRewrite_car, expressionArr);
    }

    public Namespace namespaceResolvePrefix(Expression expression) {
        Object constantValue;
        if (expression instanceof ReferenceExp) {
            ReferenceExp referenceExp = (ReferenceExp) expression;
            Declaration binding = referenceExp.getBinding();
            if (binding == null || binding.getFlag(65536L)) {
                Object symbol = referenceExp.getSymbol();
                constantValue = this.env.get(symbol instanceof Symbol ? (Symbol) symbol : this.env.getSymbol(symbol.toString()), (Object) null);
            } else {
                constantValue = binding.isNamespaceDecl() ? binding.getConstantValue() : null;
            }
            if (constantValue instanceof Namespace) {
                Namespace namespace = (Namespace) constantValue;
                String name = namespace.getName();
                if (name == null || !name.startsWith("class:")) {
                    return namespace;
                }
                return null;
            }
        }
        return null;
    }

    public Symbol namespaceResolve(Namespace namespace, Expression expression) {
        if (namespace == null || !(expression instanceof QuoteExp)) {
            return null;
        }
        return namespace.getSymbol(((QuoteExp) expression).getValue().toString().intern());
    }

    public Symbol namespaceResolve(Expression expression, Expression expression2) {
        return namespaceResolve(namespaceResolvePrefix(expression), expression2);
    }

    public static Object stripSyntax(Object obj) {
        while (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        return obj;
    }

    public static Object safeCar(Object obj) {
        while (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        if (obj instanceof Pair) {
            return stripSyntax(((Pair) obj).getCar());
        }
        return null;
    }

    public static Object safeCdr(Object obj) {
        while (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        if (obj instanceof Pair) {
            return stripSyntax(((Pair) obj).getCdr());
        }
        return null;
    }

    public static int listLength(Object obj) {
        int i = 0;
        Object cdr = obj;
        while (true) {
            if (obj instanceof SyntaxForm) {
                obj = ((SyntaxForm) obj).getDatum();
            } else {
                while (cdr instanceof SyntaxForm) {
                    cdr = ((SyntaxForm) cdr).getDatum();
                }
                if (obj == LList.Empty) {
                    return i;
                }
                if (!(obj instanceof Pair)) {
                    return (-1) - i;
                }
                int i2 = i + 1;
                Object cdr2 = ((Pair) obj).getCdr();
                while (cdr2 instanceof SyntaxForm) {
                    cdr2 = ((SyntaxForm) cdr2).getDatum();
                }
                if (cdr2 == LList.Empty) {
                    return i2;
                }
                if (!(cdr2 instanceof Pair)) {
                    return (-1) - i2;
                }
                cdr = ((Pair) cdr).getCdr();
                obj = ((Pair) cdr2).getCdr();
                i += 2;
                if (obj == cdr) {
                    return Integer.MIN_VALUE;
                }
            }
        }
    }

    public void rewriteInBody(Object obj) {
        if (obj instanceof SyntaxForm) {
            SyntaxForm syntaxForm = (SyntaxForm) obj;
            ScopeExp scopeExp = this.current_scope;
            try {
                setCurrentScope(syntaxForm.getScope());
                rewriteInBody(syntaxForm.getDatum());
                return;
            } finally {
                setCurrentScope(scopeExp);
            }
        }
        if (obj instanceof Values) {
            for (Object obj2 : ((Values) obj).getValues()) {
                rewriteInBody(obj2);
            }
            return;
        }
        this.formStack.add(rewrite(obj, false));
    }

    public Expression rewrite(Object obj) {
        return rewrite(obj, false);
    }

    public Object namespaceResolve(Object obj) {
        if ((obj instanceof SimpleSymbol) || !(obj instanceof Pair)) {
            return obj;
        }
        Pair pair = (Pair) obj;
        if (safeCar(pair) != LispLanguage.lookup_sym || !(pair.getCdr() instanceof Pair)) {
            return obj;
        }
        Pair pair2 = (Pair) pair.getCdr();
        if (!(pair2.getCdr() instanceof Pair)) {
            return obj;
        }
        Expression expressionRewrite = rewrite(pair2.getCar());
        Expression expressionRewrite2 = rewrite(((Pair) pair2.getCdr()).getCar());
        Symbol symbolNamespaceResolve = namespaceResolve(expressionRewrite, expressionRewrite2);
        if (symbolNamespaceResolve != null) {
            return symbolNamespaceResolve;
        }
        String strCombineName = CompileNamedPart.combineName(expressionRewrite, expressionRewrite2);
        return strCombineName != null ? Namespace.EmptyNamespace.getSymbol(strCombineName) : obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0219  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression rewrite(java.lang.Object r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 649
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Translator.rewrite(java.lang.Object, boolean):gnu.expr.Expression");
    }

    public static void setLine(Expression expression, Object obj) {
        if (obj instanceof SourceLocator) {
            expression.setLocation((SourceLocator) obj);
        }
    }

    public static void setLine(Declaration declaration, Object obj) {
        if (obj instanceof SourceLocator) {
            declaration.setLocation((SourceLocator) obj);
        }
    }

    public Object pushPositionOf(Object obj) {
        PairWithPosition pairWithPosition;
        if (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        if (!(obj instanceof PairWithPosition)) {
            return null;
        }
        PairWithPosition pairWithPosition2 = (PairWithPosition) obj;
        PairWithPosition pairWithPosition3 = this.positionPair;
        if (pairWithPosition3 == null || pairWithPosition3.getFileName() != getFileName() || this.positionPair.getLineNumber() != getLineNumber() || this.positionPair.getColumnNumber() != getColumnNumber()) {
            pairWithPosition = new PairWithPosition(this, Special.eof, this.positionPair);
        } else {
            pairWithPosition = this.positionPair;
        }
        setLine(obj);
        this.positionPair = pairWithPosition2;
        return pairWithPosition;
    }

    public void popPositionOf(Object obj) {
        if (obj == null) {
            return;
        }
        setLine(obj);
        PairWithPosition pairWithPosition = (PairWithPosition) obj;
        this.positionPair = pairWithPosition;
        if (pairWithPosition.getCar() == Special.eof) {
            this.positionPair = (PairWithPosition) this.positionPair.getCdr();
        }
    }

    public void setLineOf(Expression expression) {
        if (expression instanceof QuoteExp) {
            return;
        }
        expression.setLocation(this);
    }

    public Type exp2Type(Pair pair) {
        Object objPushPositionOf = pushPositionOf(pair);
        try {
            Expression expressionInlineCalls = InlineCalls.inlineCalls(rewrite_car(pair, false), this);
            if (!(expressionInlineCalls instanceof ErrorExp)) {
                Type typeFor = getLanguage().getTypeFor(expressionInlineCalls);
                if (typeFor == null) {
                    try {
                        Object objEval = expressionInlineCalls.eval(this.env);
                        if (objEval instanceof Class) {
                            typeFor = Type.make((Class) objEval);
                        } else if (objEval instanceof Type) {
                            typeFor = (Type) objEval;
                        }
                    } catch (Throwable unused) {
                    }
                }
                if (typeFor != null) {
                    popPositionOf(objPushPositionOf);
                    return typeFor;
                }
                if (expressionInlineCalls instanceof ReferenceExp) {
                    error('e', "unknown type name '" + ((ReferenceExp) expressionInlineCalls).getName() + '\'');
                } else {
                    error('e', "invalid type spec (must be \"type\" or 'type or <type>)");
                }
                ClassType classType = Type.pointer_type;
                popPositionOf(objPushPositionOf);
                return classType;
            }
            popPositionOf(objPushPositionOf);
            return null;
        } catch (Throwable th) {
            popPositionOf(objPushPositionOf);
            throw th;
        }
    }

    public Expression rewrite_with_position(Object obj, boolean z, PairWithPosition pairWithPosition) {
        Expression expressionRewrite;
        Object objPushPositionOf = pushPositionOf(pairWithPosition);
        try {
            if (obj == pairWithPosition) {
                expressionRewrite = rewrite_pair(pairWithPosition, z);
            } else {
                expressionRewrite = rewrite(obj, z);
            }
            setLineOf(expressionRewrite);
            popPositionOf(objPushPositionOf);
            return expressionRewrite;
        } catch (Throwable th) {
            popPositionOf(objPushPositionOf);
            throw th;
        }
    }

    public static Object wrapSyntax(Object obj, SyntaxForm syntaxForm) {
        return (syntaxForm == null || (obj instanceof Expression)) ? obj : SyntaxForms.fromDatumIfNeeded(obj, syntaxForm);
    }

    public Object popForms(int i) {
        Object objElementAt;
        int size = this.formStack.size();
        if (size == i) {
            return Values.empty;
        }
        if (size == i + 1) {
            objElementAt = this.formStack.elementAt(i);
        } else {
            Values values = new Values();
            for (int i2 = i; i2 < size; i2++) {
                values.writeObject(this.formStack.elementAt(i2));
            }
            objElementAt = values;
        }
        this.formStack.setSize(i);
        return objElementAt;
    }

    public void scanForm(Object obj, ScopeExp scopeExp) {
        if (obj instanceof SyntaxForm) {
            SyntaxForm syntaxForm = (SyntaxForm) obj;
            ScopeExp scopeExpCurrentScope = currentScope();
            try {
                setCurrentScope(syntaxForm.getScope());
                int size = this.formStack.size();
                scanForm(syntaxForm.getDatum(), scopeExp);
                this.formStack.add(wrapSyntax(popForms(size), syntaxForm));
                return;
            } finally {
                setCurrentScope(scopeExpCurrentScope);
            }
        }
        if (obj instanceof Values) {
            if (obj == Values.empty) {
                obj = QuoteExp.voidExp;
            } else {
                for (Object obj2 : ((Values) obj).getValues()) {
                    scanForm(obj2, scopeExp);
                }
                return;
            }
        }
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Declaration declaration = this.macroContext;
            ScopeExp scopeExp2 = this.current_scope;
            Object objPushPositionOf = pushPositionOf(obj);
            if ((obj instanceof SourceLocator) && scopeExp.getLineNumber() < 0) {
                scopeExp.setLocation((SourceLocator) obj);
            }
            try {
                Object car = pair.getCar();
                if (car instanceof SyntaxForm) {
                    SyntaxForm syntaxForm2 = (SyntaxForm) pair.getCar();
                    setCurrentScope(syntaxForm2.getScope());
                    car = syntaxForm2.getDatum();
                }
                Syntax syntaxCheck_if_Syntax = null;
                if (car instanceof Pair) {
                    Pair pair2 = (Pair) car;
                    if (pair2.getCar() == LispLanguage.lookup_sym && (pair2.getCdr() instanceof Pair)) {
                        Pair pair3 = (Pair) pair2.getCdr();
                        if (pair3.getCdr() instanceof Pair) {
                            Expression expressionRewrite = rewrite(pair3.getCar());
                            Expression expressionRewrite2 = rewrite(((Pair) pair3.getCdr()).getCar());
                            Object objValueIfConstant = expressionRewrite.valueIfConstant();
                            Object objValueIfConstant2 = expressionRewrite2.valueIfConstant();
                            if ((objValueIfConstant instanceof Class) && (objValueIfConstant2 instanceof Symbol)) {
                                try {
                                    car = GetNamedPart.getNamedPart(objValueIfConstant, (Symbol) objValueIfConstant2);
                                    if (car instanceof Syntax) {
                                        syntaxCheck_if_Syntax = (Syntax) car;
                                    }
                                } catch (Throwable unused) {
                                    car = null;
                                }
                            } else {
                                car = namespaceResolve(expressionRewrite, expressionRewrite2);
                            }
                        }
                    }
                }
                if ((car instanceof Symbol) && !selfEvaluatingSymbol(car)) {
                    Expression expressionRewrite3 = rewrite(car, true);
                    if (expressionRewrite3 instanceof ReferenceExp) {
                        Declaration binding = ((ReferenceExp) expressionRewrite3).getBinding();
                        if (binding != null) {
                            syntaxCheck_if_Syntax = check_if_Syntax(binding);
                        } else {
                            Object objResolve = resolve(car, true);
                            if (objResolve instanceof Syntax) {
                                syntaxCheck_if_Syntax = (Syntax) objResolve;
                            }
                        }
                    }
                } else if (car == begin.begin) {
                    syntaxCheck_if_Syntax = (Syntax) car;
                }
                if (scopeExp2 != this.current_scope) {
                    setCurrentScope(scopeExp2);
                }
                popPositionOf(objPushPositionOf);
                if (syntaxCheck_if_Syntax != null) {
                    String fileName = getFileName();
                    int lineNumber = getLineNumber();
                    int columnNumber = getColumnNumber();
                    try {
                        setLine(pair);
                        syntaxCheck_if_Syntax.scanForm(pair, scopeExp, this);
                        return;
                    } finally {
                        this.macroContext = declaration;
                        setLine(fileName, lineNumber, columnNumber);
                    }
                }
            } catch (Throwable th) {
                if (scopeExp2 != this.current_scope) {
                    setCurrentScope(scopeExp2);
                }
                popPositionOf(objPushPositionOf);
                throw th;
            }
        }
        this.formStack.add(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c1, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.lists.LList scanBody(java.lang.Object r9, gnu.expr.ScopeExp r10, boolean r11) {
        /*
            r8 = this;
            r0 = 0
            if (r11 == 0) goto L6
            gnu.lists.LList r1 = gnu.lists.LList.Empty
            goto L7
        L6:
            r1 = r0
        L7:
            r2 = r0
        L8:
            gnu.lists.LList r3 = gnu.lists.LList.Empty
            if (r9 == r3) goto Lc1
            boolean r4 = r9 instanceof kawa.lang.SyntaxForm
            if (r4 == 0) goto L55
            kawa.lang.SyntaxForm r9 = (kawa.lang.SyntaxForm) r9
            gnu.expr.ScopeExp r3 = r8.current_scope
            kawa.lang.TemplateScope r4 = r9.getScope()     // Catch: java.lang.Throwable -> L3e
            r8.setCurrentScope(r4)     // Catch: java.lang.Throwable -> L3e
            java.util.Stack r4 = r8.formStack     // Catch: java.lang.Throwable -> L3e
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r5 = r9.getDatum()     // Catch: java.lang.Throwable -> L3e
            gnu.lists.LList r10 = r8.scanBody(r5, r10, r11)     // Catch: java.lang.Throwable -> L3e
            if (r11 == 0) goto L40
            java.lang.Object r9 = kawa.lang.SyntaxForms.fromDatumIfNeeded(r10, r9)     // Catch: java.lang.Throwable -> L3e
            gnu.lists.LList r9 = (gnu.lists.LList) r9     // Catch: java.lang.Throwable -> L3e
            if (r2 != 0) goto L37
            r8.setCurrentScope(r3)
            return r9
        L37:
            r2.setCdrBackdoor(r9)     // Catch: java.lang.Throwable -> L3e
            r8.setCurrentScope(r3)
            return r1
        L3e:
            r9 = move-exception
            goto L51
        L40:
            java.util.Stack r10 = r8.formStack     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r11 = r8.popForms(r4)     // Catch: java.lang.Throwable -> L3e
            java.lang.Object r9 = wrapSyntax(r11, r9)     // Catch: java.lang.Throwable -> L3e
            r10.add(r9)     // Catch: java.lang.Throwable -> L3e
            r8.setCurrentScope(r3)
            return r0
        L51:
            r8.setCurrentScope(r3)
            throw r9
        L55:
            boolean r4 = r9 instanceof gnu.lists.Pair
            if (r4 == 0) goto Lb6
            gnu.lists.Pair r9 = (gnu.lists.Pair) r9
            java.util.Stack r4 = r8.formStack
            int r4 = r4.size()
            java.lang.Object r5 = r9.getCar()
            r8.scanForm(r5, r10)
            int r5 = r8.getState()
            r6 = 2
            if (r5 != r6) goto L89
            java.lang.Object r10 = r9.getCar()
            java.lang.Object r11 = r8.pendingForm
            if (r10 == r11) goto L7f
            java.lang.Object r10 = r9.getCdr()
            gnu.lists.Pair r9 = makePair(r9, r11, r10)
        L7f:
            gnu.lists.Pair r10 = new gnu.lists.Pair
            kawa.standard.begin r11 = kawa.standard.begin.begin
            r10.<init>(r11, r9)
            r8.pendingForm = r10
            return r3
        L89:
            java.util.Stack r3 = r8.formStack
            int r3 = r3.size()
            if (r11 == 0) goto Lb0
            r5 = r4
        L92:
            if (r5 >= r3) goto Lab
            java.util.Stack r6 = r8.formStack
            java.lang.Object r6 = r6.elementAt(r5)
            gnu.lists.LList r7 = gnu.lists.LList.Empty
            gnu.lists.Pair r6 = makePair(r9, r6, r7)
            if (r2 != 0) goto La4
            r1 = r6
            goto La7
        La4:
            r2.setCdrBackdoor(r6)
        La7:
            int r5 = r5 + 1
            r2 = r6
            goto L92
        Lab:
            java.util.Stack r3 = r8.formStack
            r3.setSize(r4)
        Lb0:
            java.lang.Object r9 = r9.getCdr()
            goto L8
        Lb6:
            java.util.Stack r9 = r8.formStack
            java.lang.String r10 = "body is not a proper list"
            gnu.expr.Expression r10 = r8.syntaxError(r10)
            r9.add(r10)
        Lc1:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Translator.scanBody(java.lang.Object, gnu.expr.ScopeExp, boolean):gnu.lists.LList");
    }

    public static Pair makePair(Pair pair, Object obj, Object obj2) {
        if (pair instanceof PairWithPosition) {
            return new PairWithPosition((PairWithPosition) pair, obj, obj2);
        }
        return new Pair(obj, obj2);
    }

    public Expression rewrite_body(Object obj) {
        Object objPushPositionOf = pushPositionOf(obj);
        LetExp letExp = new LetExp(null);
        int size = this.formStack.size();
        letExp.outer = this.current_scope;
        this.current_scope = letExp;
        try {
            LList lListScanBody = scanBody(obj, letExp, true);
            if (lListScanBody.isEmpty()) {
                this.formStack.add(syntaxError("body with no expressions"));
            }
            int iCountNonDynamicDecls = letExp.countNonDynamicDecls();
            if (iCountNonDynamicDecls != 0) {
                Expression[] expressionArr = new Expression[iCountNonDynamicDecls];
                int i = iCountNonDynamicDecls;
                while (true) {
                    i--;
                    if (i < 0) {
                        break;
                    }
                    expressionArr[i] = QuoteExp.undefined_exp;
                }
                letExp.inits = expressionArr;
            }
            rewriteBody(lListScanBody);
            Expression expressionMakeBody = makeBody(size, null);
            setLineOf(expressionMakeBody);
            if (iCountNonDynamicDecls != 0) {
                letExp.body = expressionMakeBody;
                setLineOf(letExp);
                pop(letExp);
                popPositionOf(objPushPositionOf);
                return letExp;
            }
            pop(letExp);
            popPositionOf(objPushPositionOf);
            return expressionMakeBody;
        } catch (Throwable th) {
            pop(letExp);
            popPositionOf(objPushPositionOf);
            throw th;
        }
    }

    private void rewriteBody(LList lList) {
        while (lList != LList.Empty) {
            Pair pair = (Pair) lList;
            Object objPushPositionOf = pushPositionOf(pair);
            try {
                rewriteInBody(pair.getCar());
                popPositionOf(objPushPositionOf);
                lList = (LList) pair.getCdr();
            } catch (Throwable th) {
                popPositionOf(objPushPositionOf);
                throw th;
            }
        }
    }

    private Expression makeBody(int i, ScopeExp scopeExp) {
        int size = this.formStack.size() - i;
        if (size == 0) {
            return QuoteExp.voidExp;
        }
        if (size == 1) {
            return (Expression) this.formStack.pop();
        }
        Expression[] expressionArr = new Expression[size];
        for (int i2 = 0; i2 < size; i2++) {
            expressionArr[i2] = (Expression) this.formStack.elementAt(i + i2);
        }
        this.formStack.setSize(i);
        if (scopeExp instanceof ModuleExp) {
            return new ApplyExp(AppendValues.appendValues, expressionArr);
        }
        return ((LispLanguage) getLanguage()).makeBody(expressionArr);
    }

    public void noteAccess(Object obj, ScopeExp scopeExp) {
        if (this.notedAccess == null) {
            this.notedAccess = new Vector();
        }
        this.notedAccess.addElement(obj);
        this.notedAccess.addElement(scopeExp);
    }

    public void processAccesses() {
        Vector vector = this.notedAccess;
        if (vector == null) {
            return;
        }
        int size = vector.size();
        ScopeExp scopeExp = this.current_scope;
        for (int i = 0; i < size; i += 2) {
            Object objElementAt = this.notedAccess.elementAt(i);
            ScopeExp scopeExp2 = (ScopeExp) this.notedAccess.elementAt(i + 1);
            if (this.current_scope != scopeExp2) {
                setCurrentScope(scopeExp2);
            }
            Declaration declarationLookup = this.lexical.lookup(objElementAt, -1);
            if (declarationLookup != null && !declarationLookup.getFlag(65536L)) {
                declarationLookup.getContext().currentLambda().capture(declarationLookup);
                declarationLookup.setCanRead(true);
                declarationLookup.setSimple(false);
                declarationLookup.setFlag(524288L);
            }
        }
        if (this.current_scope != scopeExp) {
            setCurrentScope(scopeExp);
        }
    }

    public void finishModule(ModuleExp moduleExp) {
        boolean zIsStatic = moduleExp.isStatic();
        for (Declaration declarationFirstDecl = moduleExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (declarationFirstDecl.getFlag(512L)) {
                error('e', declarationFirstDecl, "'", declarationFirstDecl.getFlag(1024L) ? "' exported but never defined" : declarationFirstDecl.getFlag(2048L) ? "' declared static but never defined" : "' declared but never defined");
            }
            if (moduleExp.getFlag(16384) || (this.generateMain && !this.immediate)) {
                if (declarationFirstDecl.getFlag(1024L)) {
                    if (declarationFirstDecl.isPrivate()) {
                        if (declarationFirstDecl.getFlag(16777216L)) {
                            error('e', declarationFirstDecl, "'", "' is declared both private and exported");
                        }
                        declarationFirstDecl.setPrivate(false);
                    }
                } else {
                    declarationFirstDecl.setPrivate(true);
                }
            }
            if (zIsStatic) {
                declarationFirstDecl.setFlag(2048L);
            } else if ((moduleExp.getFlag(65536) && !declarationFirstDecl.getFlag(2048L)) || Compilation.moduleStatic < 0 || moduleExp.getFlag(131072)) {
                declarationFirstDecl.setFlag(4096L);
            }
        }
    }

    public static void vectorReverse(Vector vector, int i, int i2) {
        int i3 = i2 / 2;
        int i4 = (i2 + i) - 1;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i + i5;
            Object objElementAt = vector.elementAt(i6);
            int i7 = i4 - i5;
            vector.setElementAt(vector.elementAt(i7), i6);
            vector.setElementAt(objElementAt, i7);
        }
    }

    public void resolveModule(ModuleExp moduleExp) {
        Stack<Object> stack = this.pendingImports;
        int i = 0;
        int size = stack == null ? 0 : stack.size();
        while (i < size) {
            ModuleInfo moduleInfo = (ModuleInfo) this.pendingImports.elementAt(i);
            ScopeExp scopeExp = (ScopeExp) this.pendingImports.elementAt(i + 1);
            int i2 = i + 3;
            Expression expression = (Expression) this.pendingImports.elementAt(i + 2);
            i += 4;
            Integer num = (Integer) this.pendingImports.elementAt(i2);
            if (moduleExp == scopeExp) {
                ReferenceExp referenceExp = new ReferenceExp((Object) null);
                referenceExp.setLine(this);
                setLine(expression);
                int size2 = this.formStack.size();
                require.importDefinitions(null, moduleInfo, null, this.formStack, scopeExp, this);
                int iIntValue = num.intValue();
                if (num.intValue() != size2) {
                    int size3 = this.formStack.size();
                    vectorReverse(this.formStack, iIntValue, size2 - iIntValue);
                    vectorReverse(this.formStack, size2, size3 - size2);
                    vectorReverse(this.formStack, iIntValue, size3 - iIntValue);
                }
                setLine((Expression) referenceExp);
            }
        }
        this.pendingImports = null;
        processAccesses();
        setModule(moduleExp);
        Compilation saveCurrent = Compilation.setSaveCurrent(this);
        try {
            rewriteInBody(popForms(this.firstForm));
            moduleExp.body = makeBody(this.firstForm, moduleExp);
            if (!this.immediate) {
                this.lexical.pop(moduleExp);
            }
            Compilation.restoreCurrent(saveCurrent);
        } catch (Throwable th) {
            Compilation.restoreCurrent(saveCurrent);
            throw th;
        }
    }

    public Declaration makeRenamedAlias(Declaration declaration, ScopeExp scopeExp) {
        return scopeExp == null ? declaration : makeRenamedAlias(declaration.getSymbol(), declaration, scopeExp);
    }

    public Declaration makeRenamedAlias(Object obj, Declaration declaration, ScopeExp scopeExp) {
        Declaration declaration2 = new Declaration(obj);
        declaration2.setAlias(true);
        declaration2.setPrivate(true);
        declaration2.context = scopeExp;
        ReferenceExp referenceExp = new ReferenceExp(declaration);
        referenceExp.setDontDereference(true);
        declaration2.noteValue(referenceExp);
        return declaration2;
    }

    public void pushRenamedAlias(Declaration declaration) {
        Declaration binding = getOriginalRef(declaration).getBinding();
        ScopeExp scopeExp = declaration.context;
        binding.setSymbol(null);
        Declaration declarationLookup = scopeExp.lookup(binding.getSymbol());
        if (declarationLookup != null) {
            scopeExp.remove(declarationLookup);
        }
        scopeExp.addDeclaration(declaration);
        if (this.renamedAliasStack == null) {
            this.renamedAliasStack = new Stack();
        }
        this.renamedAliasStack.push(declarationLookup);
        this.renamedAliasStack.push(declaration);
        this.renamedAliasStack.push(scopeExp);
    }

    public void popRenamedAlias(int i) {
        while (true) {
            i--;
            if (i < 0) {
                return;
            }
            ScopeExp scopeExp = (ScopeExp) this.renamedAliasStack.pop();
            Declaration declaration = (Declaration) this.renamedAliasStack.pop();
            getOriginalRef(declaration).getBinding().setSymbol(declaration.getSymbol());
            scopeExp.remove(declaration);
            Object objPop = this.renamedAliasStack.pop();
            if (objPop != null) {
                scopeExp.addDeclaration((Declaration) objPop);
            }
        }
    }

    public Declaration define(Object obj, SyntaxForm syntaxForm, ScopeExp scopeExp) {
        boolean z = (syntaxForm == null || syntaxForm.getScope() == currentScope()) ? false : true;
        Declaration define = scopeExp.getDefine(z ? new String(obj.toString()) : obj, 'w', this);
        if (z) {
            syntaxForm.getScope().addDeclaration(makeRenamedAlias(obj, define, syntaxForm.getScope()));
        }
        push(define);
        return define;
    }
}
