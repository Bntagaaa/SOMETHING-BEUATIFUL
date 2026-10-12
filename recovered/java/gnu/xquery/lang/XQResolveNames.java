package gnu.xquery.lang;

import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.repackaged.org.json.zip.JSONzip;
import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.ErrorExp;
import gnu.expr.Expression;
import gnu.expr.ModuleExp;
import gnu.expr.PrimProcedure;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.ResolveNames;
import gnu.expr.ScopeExp;
import gnu.expr.SetExp;
import gnu.kawa.functions.GetModuleClass;
import gnu.kawa.reflect.StaticFieldLocation;
import gnu.mapping.EnvironmentKey;
import gnu.mapping.Location;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import gnu.mapping.WrongArguments;
import gnu.xml.NamespaceBinding;
import gnu.xquery.util.NamedCollator;

/* loaded from: classes2.dex */
public class XQResolveNames extends ResolveNames {
    public static final int BASE_URI_BUILTIN = -11;
    public static final int CASTABLE_AS_BUILTIN = -34;
    public static final int CAST_AS_BUILTIN = -33;
    public static final int COLLECTION_BUILTIN = -8;
    public static final int COMPARE_BUILTIN = -4;
    public static final int DEEP_EQUAL_BUILTIN = -25;
    public static final int DEFAULT_COLLATION_BUILTIN = -29;
    public static final int DISTINCT_VALUES_BUILTIN = -5;
    public static final int DOC_AVAILABLE_BUILTIN = -10;
    public static final int DOC_BUILTIN = -9;
    public static final int HANDLE_EXTENSION_BUILTIN = -3;
    public static final int IDREF_BUILTIN = -31;
    public static final int ID_BUILTIN = -30;
    public static final int INDEX_OF_BUILTIN = -15;
    public static final int LANG_BUILTIN = -23;
    public static final int LAST_BUILTIN = -1;
    public static final int LOCAL_NAME_BUILTIN = -6;
    public static final int MAX_BUILTIN = -27;
    public static final int MIN_BUILTIN = -26;
    public static final int NAMESPACE_URI_BUILTIN = -7;
    public static final int NAME_BUILTIN = -24;
    public static final int NORMALIZE_SPACE_BUILTIN = -17;
    public static final int NUMBER_BUILTIN = -28;
    public static final int POSITION_BUILTIN = -2;
    public static final int RESOLVE_PREFIX_BUILTIN = -13;
    public static final int RESOLVE_URI_BUILTIN = -12;
    public static final int ROOT_BUILTIN = -32;
    public static final int STATIC_BASE_URI_BUILTIN = -14;
    public static final int STRING_BUILTIN = -16;
    public static final int UNORDERED_BUILTIN = -18;
    public static final int XS_QNAME_BUILTIN = -35;
    public static final int XS_QNAME_IGNORE_DEFAULT_BUILTIN = -36;

    /* renamed from: a, reason: collision with root package name */
    public Declaration f5529a;
    public Namespace[] functionNamespacePath;
    public XQParser parser;
    public static final Declaration handleExtensionDecl = makeBuiltin("(extension)", -3);
    public static final Declaration castAsDecl = makeBuiltin("(cast as)", -33);
    public static final Declaration castableAsDecl = makeBuiltin("(castable as)", -34);
    public static final Declaration lastDecl = makeBuiltin("last", -1);
    public static final Declaration xsQNameDecl = makeBuiltin(Symbol.make(XQuery.SCHEMA_NAMESPACE, "QName"), -35);
    public static final Declaration xsQNameIgnoreDefaultDecl = makeBuiltin(Symbol.make(XQuery.SCHEMA_NAMESPACE, "(QName-ignore-default)"), -36);
    public static final Declaration staticBaseUriDecl = makeBuiltin("static-base-uri", -14);
    public static final Declaration resolvePrefixDecl = makeBuiltin(Symbol.make(XQuery.SCHEMA_NAMESPACE, "(resolve-prefix)"), -13);

    public Expression checkPragma(Symbol symbol, Expression expression) {
        return null;
    }

    public static Declaration makeBuiltin(String str, int i) {
        return makeBuiltin(Symbol.make(XQuery.XQUERY_FUNCTION_NAMESPACE, str, "fn"), i);
    }

    public static Declaration makeBuiltin(Symbol symbol, int i) {
        Declaration declaration = new Declaration(symbol);
        declaration.setProcedureDecl(true);
        declaration.setCode(i);
        return declaration;
    }

    public XQResolveNames() {
        this(null);
    }

    public final void f(int i, String str) {
        this.lookup.push(makeBuiltin(str, i));
    }

    public XQResolveNames(Compilation compilation) {
        super(compilation);
        this.functionNamespacePath = XQuery.defaultFunctionNamespacePath;
        this.lookup.push(lastDecl);
        this.lookup.push(xsQNameDecl);
        this.lookup.push(staticBaseUriDecl);
        f(-2, "position");
        f(-4, "compare");
        f(-5, "distinct-values");
        f(-6, "local-name");
        f(-24, "name");
        f(-7, "namespace-uri");
        f(-32, "root");
        f(-11, "base-uri");
        f(-23, "lang");
        f(-12, "resolve-uri");
        f(-8, "collection");
        f(-9, "doc");
        f(-9, "document");
        f(-10, "doc-available");
        f(-15, "index-of");
        f(-16, PropertyTypeConstants.PROPERTY_TYPE_STRING);
        f(-17, "normalize-space");
        f(-18, "unordered");
        f(-25, "deep-equal");
        f(-26, "min");
        f(-27, "max");
        f(-28, "number");
        f(-29, "default-collation");
        f(-30, "id");
        f(-31, "idref");
    }

    @Override // gnu.expr.ResolveNames
    public void push(ScopeExp scopeExp) throws ClassNotFoundException {
        for (Declaration declarationFirstDecl = scopeExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            e(declarationFirstDecl);
        }
    }

    public final void e(Declaration declaration) throws ClassNotFoundException {
        Compilation compilation = getCompilation();
        Object symbol = declaration.getSymbol();
        boolean zIsProcedureDecl = declaration.isProcedureDecl();
        if (symbol instanceof String) {
            if (declaration.getLineNumber() > 0 && compilation != null) {
                String fileName = compilation.getFileName();
                int lineNumber = compilation.getLineNumber();
                int columnNumber = compilation.getColumnNumber();
                compilation.setLocation(declaration);
                symbol = this.parser.namespaceResolve((String) symbol, zIsProcedureDecl);
                compilation.setLine(fileName, lineNumber, columnNumber);
            } else {
                symbol = this.parser.namespaceResolve((String) symbol, zIsProcedureDecl);
            }
            if (symbol == null) {
                return;
            } else {
                declaration.setName(symbol);
            }
        }
        Declaration declarationLookup = this.lookup.lookup(symbol, XQuery.instance.getNamespaceOf(declaration));
        if (declarationLookup != null) {
            if (declaration.context == declarationLookup.context) {
                ScopeExp.duplicateDeclarationError(declarationLookup, declaration, compilation);
            } else if (XQParser.warnHidePreviousDeclaration && (!(symbol instanceof Symbol) || ((Symbol) symbol).getNamespace() != null)) {
                compilation.error('w', declaration, "declaration ", " hides previous declaration");
            }
        }
        this.lookup.push(declaration);
    }

    public static Declaration b(Symbol symbol) {
        Declaration declaration;
        Location locationLookup = XQuery.xqEnvironment.lookup(symbol, EnvironmentKey.FUNCTION);
        if (locationLookup == null) {
            return null;
        }
        Location base = locationLookup.getBase();
        if ((base instanceof StaticFieldLocation) && (declaration = ((StaticFieldLocation) base).getDeclaration()) != null) {
            return declaration;
        }
        Object obj = base.get(null);
        if (obj == null) {
            return null;
        }
        Declaration declaration2 = new Declaration(symbol);
        declaration2.setProcedureDecl(true);
        declaration2.noteValue(new QuoteExp(obj));
        declaration2.setFlag(JSONzip.int14);
        return declaration2;
    }

    @Override // gnu.expr.ResolveNames, gnu.expr.ExpVisitor
    public Expression visitReferenceExp(ReferenceExp referenceExp, Void r2) {
        return visitReferenceExp(referenceExp, (ApplyExp) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression visitReferenceExp(gnu.expr.ReferenceExp r11, gnu.expr.ApplyExp r12) throws java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQResolveNames.visitReferenceExp(gnu.expr.ReferenceExp, gnu.expr.ApplyExp):gnu.expr.Expression");
    }

    @Override // gnu.expr.ResolveNames, gnu.expr.ExpVisitor
    public Expression visitSetExp(SetExp setExp, Void r5) {
        Expression expressionVisitSetExp = super.visitSetExp(setExp, r5);
        Declaration binding = setExp.getBinding();
        if (binding != null && !getCompilation().immediate) {
            Object symbol = binding.getSymbol();
            if ((symbol instanceof Symbol) && XQuery.LOCAL_NAMESPACE.equals(((Symbol) symbol).getNamespaceURI())) {
                Expression newValue = setExp.getNewValue();
                if (!(newValue instanceof ApplyExp) || ((ApplyExp) newValue).getFunction() != XQParser.getExternalFunction) {
                    binding.setFlag(16777216L);
                    binding.setPrivate(true);
                }
            }
        }
        return expressionVisitSetExp;
    }

    public final Expression g(Expression expression) throws ClassNotFoundException {
        if (expression instanceof BeginExp) {
            BeginExp beginExp = (BeginExp) expression;
            Expression[] expressions = beginExp.getExpressions();
            int expressionCount = beginExp.getExpressionCount();
            for (int i = 0; i < expressionCount; i++) {
                expressions[i] = g(expressions[i]);
            }
            return expression;
        }
        if (expression instanceof SetExp) {
            Declaration declarationNextDecl = this.f5529a;
            SetExp setExp = (SetExp) expression;
            Expression expressionVisitSetExp = visitSetExp(setExp, (Void) null);
            if (setExp.isDefining() && setExp.getBinding() == declarationNextDecl) {
                if (!declarationNextDecl.isProcedureDecl()) {
                    e(declarationNextDecl);
                }
                declarationNextDecl = declarationNextDecl.nextDecl();
            }
            this.f5529a = declarationNextDecl;
            return expressionVisitSetExp;
        }
        return visit(expression, null);
    }

    @Override // gnu.expr.ResolveNames
    public void resolveModule(ModuleExp moduleExp) throws ClassNotFoundException {
        this.currentLambda = moduleExp;
        for (Declaration declarationFirstDecl = moduleExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
            if (declarationFirstDecl.isProcedureDecl()) {
                e(declarationFirstDecl);
            }
        }
        this.f5529a = moduleExp.firstDecl();
        moduleExp.body = g(moduleExp.body);
        for (Declaration declarationFirstDecl2 = moduleExp.firstDecl(); declarationFirstDecl2 != null; declarationFirstDecl2 = declarationFirstDecl2.nextDecl()) {
            if (declarationFirstDecl2.getSymbol() != null) {
                this.lookup.removeSubsumed(declarationFirstDecl2);
            }
        }
    }

    public final Expression h(Method method, Expression[] expressionArr, String str, int i) {
        Expression quoteExp;
        QuoteExp quoteExp2 = new QuoteExp(new PrimProcedure(method));
        int i2 = i + 1;
        String strCheckArgCount = WrongArguments.checkArgCount(str, i, i2, expressionArr.length);
        if (strCheckArgCount != null) {
            return getCompilation().syntaxError(strCheckArgCount);
        }
        Expression[] expressionArr2 = new Expression[i2];
        System.arraycopy(expressionArr, 0, expressionArr2, 0, i);
        if (expressionArr.length > i) {
            quoteExp = new ApplyExp(ClassType.make("gnu.xquery.util.NamedCollator").getDeclaredMethod("find", 1), expressionArr[i]);
        } else {
            NamedCollator namedCollator = this.parser.i;
            quoteExp = namedCollator == null ? QuoteExp.nullExp : new QuoteExp(namedCollator);
        }
        expressionArr2[i] = quoteExp;
        return new ApplyExp((Expression) quoteExp2, expressionArr2);
    }

    public final Expression i(Method method, Expression[] expressionArr, String str, int i) {
        int i2 = i + 1;
        String strCheckArgCount = WrongArguments.checkArgCount(str, i, i2, expressionArr.length);
        if (strCheckArgCount != null) {
            return getCompilation().syntaxError(strCheckArgCount);
        }
        if (expressionArr.length == i) {
            Expression[] expressionArr2 = new Expression[i2];
            System.arraycopy(expressionArr, 0, expressionArr2, 0, i);
            Declaration declarationLookup = this.lookup.lookup((Object) XQParser.F, false);
            if (declarationLookup == null) {
                String strConcat = "undefined context for ".concat(str);
                this.messages.error('e', strConcat, "XPDY0002");
                return new ErrorExp(strConcat);
            }
            expressionArr2[i] = new ReferenceExp(declarationLookup);
            expressionArr = expressionArr2;
        }
        return new ApplyExp(method, expressionArr);
    }

    public final Expression a(Expression[] expressionArr, Declaration declaration, int i, int i2) {
        String strCheckArgCount = WrongArguments.checkArgCount("fn:" + declaration.getName(), i, i2, expressionArr.length);
        if (strCheckArgCount == null) {
            return null;
        }
        return getCompilation().syntaxError(strCheckArgCount);
    }

    /* JADX WARN: Removed duplicated region for block: B:162:0x03ff  */
    @Override // gnu.expr.ExpVisitor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public gnu.expr.Expression visitApplyExp(gnu.expr.ApplyExp r20, java.lang.Void r21) throws java.lang.ClassNotFoundException {
        /*
            Method dump skipped, instructions count: 1520
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.xquery.lang.XQResolveNames.visitApplyExp(gnu.expr.ApplyExp, java.lang.Void):gnu.expr.Expression");
    }

    public final Expression c() {
        Compilation compilation = getCompilation();
        String staticBaseUri = this.parser.getStaticBaseUri();
        if (staticBaseUri != null) {
            return QuoteExp.getInstance(staticBaseUri);
        }
        return GetModuleClass.getModuleClassURI(compilation);
    }

    public static NamespaceBinding d(Symbol symbol, boolean z, NamespaceBinding namespaceBinding) {
        if (symbol != null) {
            String prefix = symbol.getPrefix();
            String namespaceURI = symbol.getNamespaceURI();
            if (prefix == "") {
                prefix = null;
            }
            if (namespaceURI == "") {
                namespaceURI = null;
            }
            if (!z || prefix != null || namespaceURI != null) {
                return NamespaceBinding.maybeAdd(prefix, namespaceURI, namespaceBinding);
            }
        }
        return namespaceBinding;
    }
}
