package gnu.kawa.slib;

import com.google.youngandroid.a;
import gnu.bytecode.Type;
import gnu.expr.ApplyExp;
import gnu.expr.BeginExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.IfExp;
import gnu.expr.Keyword;
import gnu.expr.LambdaExp;
import gnu.expr.Language;
import gnu.expr.LetExp;
import gnu.expr.ModuleBody;
import gnu.expr.ModuleInfo;
import gnu.expr.ModuleMethod;
import gnu.expr.NameLookup;
import gnu.expr.QuoteExp;
import gnu.expr.ReferenceExp;
import gnu.expr.SetExp;
import gnu.expr.Special;
import gnu.kawa.functions.AddOp;
import gnu.kawa.functions.Format;
import gnu.kawa.functions.GetNamedPart;
import gnu.kawa.lispexpr.LangObjType;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.Consumer;
import gnu.lists.EofClass;
import gnu.lists.LList;
import gnu.lists.PairWithPosition;
import gnu.mapping.CallContext;
import gnu.mapping.Environment;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.WrongType;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.text.Char;
import gnu.text.SourceMessages;
import kawa.lang.Macro;
import kawa.lang.Quote;
import kawa.lang.SyntaxPattern;
import kawa.lang.SyntaxRule;
import kawa.lang.SyntaxRules;
import kawa.lang.Translator;
import kawa.lib.lists;
import kawa.lib.misc;
import kawa.standard.Scheme;

/* loaded from: classes2.dex */
public class syntaxutils extends ModuleBody {
    public static final Macro $Prvt$$Ex;
    public static final Macro $Prvt$typecase$Pc;
    public static final syntaxutils $instance;
    static final Keyword Lit0;
    static final PairWithPosition Lit1;
    static final PairWithPosition Lit10;
    static final PairWithPosition Lit11;
    static final PairWithPosition Lit12;
    static final SimpleSymbol Lit13;
    static final SyntaxRules Lit14;
    static final SimpleSymbol Lit15;
    static final SyntaxRules Lit16;
    static final SimpleSymbol Lit17;
    static final SimpleSymbol Lit18;
    static final SimpleSymbol Lit19;
    static final Keyword Lit2;
    static final SimpleSymbol Lit20;
    static final SimpleSymbol Lit21;
    static final SimpleSymbol Lit22;
    static final SimpleSymbol Lit23;
    static final SimpleSymbol Lit24;
    static final SimpleSymbol Lit25;
    static final SimpleSymbol Lit26;
    static final PairWithPosition Lit3;
    static final PairWithPosition Lit4;
    static final PairWithPosition Lit5;
    static final PairWithPosition Lit6;
    static final IntNum Lit7;
    static final IntNum Lit8;
    static final PairWithPosition Lit9;
    public static final ModuleMethod expand;

    public class frame extends ModuleBody {
        LList pack;
    }

    public class frame0 extends ModuleBody {
        LList pack;
    }

    public class frame1 extends ModuleBody {
        LList pack;
    }

    static {
        SimpleSymbol simpleSymbol = (SimpleSymbol) a.f("lambda");
        Lit26 = simpleSymbol;
        SimpleSymbol simpleSymbol2 = (SimpleSymbol) a.f("as");
        Lit25 = simpleSymbol2;
        SimpleSymbol simpleSymbol3 = (SimpleSymbol) a.f("else");
        Lit24 = simpleSymbol3;
        SimpleSymbol simpleSymbol4 = (SimpleSymbol) a.f("let");
        Lit23 = simpleSymbol4;
        SimpleSymbol simpleSymbol5 = (SimpleSymbol) a.f("cond");
        Lit22 = simpleSymbol5;
        SimpleSymbol simpleSymbol6 = (SimpleSymbol) a.f("begin");
        Lit21 = simpleSymbol6;
        SimpleSymbol simpleSymbol7 = (SimpleSymbol) a.f("or");
        Lit20 = simpleSymbol7;
        SimpleSymbol simpleSymbol8 = (SimpleSymbol) a.f(LispLanguage.quote_sym);
        Lit19 = simpleSymbol8;
        SimpleSymbol simpleSymbol9 = (SimpleSymbol) a.f("eql");
        Lit18 = simpleSymbol9;
        SimpleSymbol simpleSymbol10 = (SimpleSymbol) a.f("expand");
        Lit17 = simpleSymbol10;
        SimpleSymbol simpleSymbol11 = (SimpleSymbol) a.f("!");
        Lit15 = simpleSymbol11;
        SyntaxRules syntaxRules = new SyntaxRules(new Object[]{simpleSymbol11}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\f\u000f\r\u0017\u0010\b\b", new Object[0], 3), "\u0001\u0001\u0003", "\u0011\u0018\u0004\t\u000b)\u0011\u0018\f\b\u0003\b\u0015\u0013", new Object[]{(SimpleSymbol) a.f("invoke"), simpleSymbol8}, 1)}, 3);
        Lit16 = syntaxRules;
        SimpleSymbol simpleSymbol12 = (SimpleSymbol) a.f("typecase%");
        Lit13 = simpleSymbol12;
        Boolean bool = Boolean.TRUE;
        SyntaxRules syntaxRules2 = new SyntaxRules(new Object[]{simpleSymbol12, simpleSymbol9, simpleSymbol7}, new SyntaxRule[]{new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007<\f\u0002\r\u000f\b\b\b\r\u0017\u0010\b\b", new Object[]{bool}, 3), "\u0001\u0003\u0003", "\u0011\u0018\u0004\b\r\u000b", new Object[]{simpleSymbol6}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\\,\f\u0002\f\u000f\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{simpleSymbol9}, 4), "\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004yY\u0011\u0018\f\t\u0003\b\u0011\u0018\u0014\b\u000b\b\u0015\u0013\b\u0011\u0018\u001c\b\u0011\u0018$\t\u0003\b\u001d\u001b", new Object[]{simpleSymbol5, (SimpleSymbol) a.f("eqv?"), simpleSymbol8, simpleSymbol3, simpleSymbol12}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\\,\f\u0002\f\u000f\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{simpleSymbol7}, 4), "\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004\t\u0003)\t\u000b\b\u0015\u0013\b\u001d\u001b", new Object[]{simpleSymbol12}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007l<\f\u0002\r\u000f\b\b\b\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[]{simpleSymbol7}, 4), "\u0001\u0003\u0003\u0003", "\u0011\u0018\u0004\u0091\b\u0011\u0018\f\b\u0011\u0018\u0014\u0011\b\u0003\b\u0011\u0018\u001c\b\u0015\u0013\b\u0011\u0018$\t\u0003I\r\t\u000b\b\u0011\u0018\f\b\u0003\b\u0011\u0018,\b\u0011\u0018$\t\u0003\b\u001d\u001b", new Object[]{simpleSymbol4, (SimpleSymbol) a.f("f"), simpleSymbol, simpleSymbol6, simpleSymbol12, bool}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007<\f\u000f\r\u0017\u0010\b\b\r\u001f\u0018\b\b", new Object[0], 4), "\u0001\u0001\u0003\u0003", "\u0011\u0018\u0004ñ9\u0011\u0018\f\t\u0003\b\u000b\b\u0011\u0018\u0014Q\b\t\u0003\u0011\u0018\u001c\t\u000b\b\u0003\b\u0011\u0018$\b\u0015\u0013\b\u0011\u0018,\b\u0011\u00184\t\u0003\b\u001d\u001b", new Object[]{simpleSymbol5, (SimpleSymbol) a.f(GetNamedPart.INSTANCEOF_METHOD_NAME), simpleSymbol4, (SimpleSymbol) a.f("::"), simpleSymbol6, simpleSymbol3, simpleSymbol12}, 1), new SyntaxRule(new SyntaxPattern("\f\u0018\f\u0007\b", new Object[0], 1), "\u0001", "\u0011\u0018\u0004\u0011\u0018\f\t\u0003\b\u0011\u0018\u0014\u0011\u0018\u001c\b\u0011\u0018$\u0011\u0018,\b\u0003", new Object[]{(SimpleSymbol) a.f("error"), "typecase% failed", simpleSymbol11, (SimpleSymbol) a.f("getClass"), simpleSymbol2, (SimpleSymbol) a.f("<object>")}, 0)}, 4);
        Lit14 = syntaxRules2;
        SimpleSymbol simpleSymbol13 = (SimpleSymbol) a.f(":");
        LList lList = LList.Empty;
        Lit12 = PairWithPosition.make(simpleSymbol13, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 634896);
        Lit11 = PairWithPosition.make(simpleSymbol2, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 626704);
        Lit10 = PairWithPosition.make(simpleSymbol8, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 552972);
        Lit9 = PairWithPosition.make(simpleSymbol4, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 479236);
        Lit8 = IntNum.make(1);
        Lit7 = IntNum.make(0);
        Lit6 = PairWithPosition.make((SimpleSymbol) a.f("if"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 417799);
        Lit5 = PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 409627);
        Lit4 = PairWithPosition.make(simpleSymbol, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 376839);
        Lit3 = PairWithPosition.make((SimpleSymbol) a.f("set"), lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 368647);
        Lit2 = Keyword.make("lang");
        Lit1 = PairWithPosition.make(simpleSymbol6, lList, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/syntaxutils.scm", 278557);
        Lit0 = Keyword.make("env");
        syntaxutils syntaxutilsVar = new syntaxutils();
        $instance = syntaxutilsVar;
        $Prvt$typecase$Pc = Macro.make(simpleSymbol12, syntaxRules2, syntaxutilsVar);
        $Prvt$$Ex = Macro.make(simpleSymbol11, syntaxRules, syntaxutilsVar);
        expand = new ModuleMethod(syntaxutilsVar, 1, simpleSymbol10, -4095);
        syntaxutilsVar.run();
    }

    public syntaxutils() {
        ModuleInfo.register(this);
    }

    @Override // gnu.expr.ModuleBody
    public final void run(CallContext callContext) {
        Consumer consumer = callContext.consumer;
    }

    public static Object expand$V(Object obj, Object[] objArr) {
        Keyword keyword = Lit0;
        Object objSearchForKeyword = Keyword.searchForKeyword(objArr, 0, keyword);
        if (objSearchForKeyword == Special.dfault) {
            objSearchForKeyword = misc.interactionEnvironment();
        }
        return unrewrite(rewriteForm$V(Quote.append$V(new Object[]{Lit1, LList.consX(new Object[]{obj, LList.Empty})}), new Object[]{keyword, objSearchForKeyword}));
    }

    @Override // gnu.expr.ModuleBody
    public Object applyN(ModuleMethod moduleMethod, Object[] objArr) {
        if (moduleMethod.selector != 1) {
            return super.applyN(moduleMethod, objArr);
        }
        Object obj = objArr[0];
        int length = objArr.length - 1;
        Object[] objArr2 = new Object[length];
        while (true) {
            int i = length - 1;
            if (i < 0) {
                return expand$V(obj, objArr2);
            }
            objArr2[i] = objArr[length];
            length = i;
        }
    }

    @Override // gnu.expr.ModuleBody
    public int matchN(ModuleMethod moduleMethod, Object[] objArr, CallContext callContext) {
        if (moduleMethod.selector != 1) {
            return super.matchN(moduleMethod, objArr, callContext);
        }
        callContext.values = objArr;
        callContext.proc = moduleMethod;
        callContext.pc = 5;
        return 0;
    }

    public static Expression rewriteForm$V(Object obj, Object[] objArr) {
        Object objSearchForKeyword = Keyword.searchForKeyword(objArr, 0, Lit2);
        Special special = Special.dfault;
        if (objSearchForKeyword == special) {
            objSearchForKeyword = Language.getDefaultLanguage();
        }
        Object objSearchForKeyword2 = Keyword.searchForKeyword(objArr, 0, Lit0);
        if (objSearchForKeyword2 == special) {
            objSearchForKeyword2 = misc.interactionEnvironment();
        }
        try {
            try {
                try {
                    Translator translator = new Translator((Language) objSearchForKeyword, new SourceMessages(), NameLookup.getInstance((Environment) objSearchForKeyword2, (Language) objSearchForKeyword));
                    translator.pushNewModule((String) null);
                    Compilation saveCurrent = Compilation.setSaveCurrent(translator);
                    try {
                        return translator.rewrite(obj);
                    } finally {
                        Compilation.restoreCurrent(saveCurrent);
                    }
                } catch (ClassCastException e) {
                    throw new WrongType(e, "kawa.lang.Translator.<init>(gnu.expr.Language,gnu.text.SourceMessages,gnu.expr.NameLookup)", 1, objSearchForKeyword);
                }
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)", 2, objSearchForKeyword);
            }
        } catch (ClassCastException e3) {
            throw new WrongType(e3, "gnu.expr.NameLookup.getInstance(gnu.mapping.Environment,gnu.expr.Language)", 1, objSearchForKeyword2);
        }
    }

    public static Object unrewrite(Expression expression) {
        frame frameVar = new frame();
        if (expression instanceof LetExp) {
            try {
                return unrewriteLet((LetExp) expression);
            } catch (ClassCastException e) {
                throw new WrongType(e, "exp", -2, expression);
            }
        }
        if (expression instanceof QuoteExp) {
            try {
                return unrewriteQuote((QuoteExp) expression);
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "exp", -2, expression);
            }
        }
        if (expression instanceof SetExp) {
            try {
                SetExp setExp = (SetExp) expression;
                return Quote.append$V(new Object[]{Lit3, LList.consX(new Object[]{setExp.getSymbol(), LList.consX(new Object[]{unrewrite(setExp.getNewValue()), LList.Empty})})});
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "exp", -2, expression);
            }
        }
        if (expression instanceof LambdaExp) {
            try {
                LambdaExp lambdaExp = (LambdaExp) expression;
                frameVar.pack = LList.Empty;
                for (Declaration declarationFirstDecl = lambdaExp.firstDecl(); declarationFirstDecl != null; declarationFirstDecl = declarationFirstDecl.nextDecl()) {
                    frameVar.pack = lists.cons(declarationFirstDecl.getSymbol(), frameVar.pack);
                }
                return Quote.append$V(new Object[]{Lit4, LList.consX(new Object[]{LList.reverseInPlace(frameVar.pack), LList.consX(new Object[]{unrewrite(lambdaExp.body), LList.Empty})})});
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "exp", -2, expression);
            }
        }
        if (expression instanceof ReferenceExp) {
            try {
                return ((ReferenceExp) expression).getSymbol();
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "exp", -2, expression);
            }
        }
        if (expression instanceof ApplyExp) {
            try {
                return unrewriteApply((ApplyExp) expression);
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "exp", -2, expression);
            }
        }
        if (expression instanceof BeginExp) {
            try {
                return Quote.append$V(new Object[]{Lit5, unrewrite$St(((BeginExp) expression).getExpressions())});
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "exp", -2, expression);
            }
        }
        if (!(expression instanceof IfExp)) {
            return expression;
        }
        try {
            IfExp ifExp = (IfExp) expression;
            Object objUnrewrite = unrewrite(ifExp.getTest());
            Object objUnrewrite2 = unrewrite(ifExp.getThenClause());
            Expression elseClause = ifExp.getElseClause();
            return Quote.append$V(new Object[]{Lit6, LList.consX(new Object[]{objUnrewrite, LList.consX(new Object[]{objUnrewrite2, Quote.append$V(new Object[]{elseClause == null ? LList.Empty : LList.list1(unrewrite(elseClause)), LList.Empty})})})});
        } catch (ClassCastException e8) {
            throw new WrongType(e8, "exp", -2, expression);
        }
    }

    public static Object unrewrite$St(Expression[] expressionArr) throws Throwable {
        frame0 frame0Var = new frame0();
        frame0Var.pack = LList.Empty;
        Integer numValueOf = Integer.valueOf(expressionArr.length);
        for (Object objApply2 = Lit7; Scheme.numEqu.apply2(objApply2, numValueOf) == Boolean.FALSE; objApply2 = AddOp.$Pl.apply2(objApply2, Lit8)) {
            frame0Var.pack = lists.cons(unrewrite(expressionArr[((Number) objApply2).intValue()]), frame0Var.pack);
        }
        return LList.reverseInPlace(frame0Var.pack);
    }

    public static Object unrewriteLet(LetExp letExp) throws Throwable {
        frame1 frame1Var = new frame1();
        frame1Var.pack = LList.Empty;
        Declaration declarationFirstDecl = letExp.firstDecl();
        Object objApply2 = Lit7;
        while (declarationFirstDecl != null) {
            frame1Var.pack = lists.cons(LList.list2(declarationFirstDecl.getSymbol(), unrewrite(letExp.inits[((Number) objApply2).intValue()])), frame1Var.pack);
            declarationFirstDecl = declarationFirstDecl.nextDecl();
            objApply2 = AddOp.$Pl.apply2(objApply2, Lit8);
        }
        return Quote.append$V(new Object[]{Lit9, LList.consX(new Object[]{LList.reverseInPlace(frame1Var.pack), LList.consX(new Object[]{unrewrite(letExp.body), LList.Empty})})});
    }

    public static Object unrewriteQuote(QuoteExp quoteExp) {
        String name;
        Object value = quoteExp.getValue();
        if (Numeric.asNumericOrNull(value) != null) {
            try {
                return LangObjType.coerceNumeric(value);
            } catch (ClassCastException e) {
                throw new WrongType(e, "val", -2, value);
            }
        }
        if (value instanceof Boolean) {
            try {
                Boolean bool = Boolean.FALSE;
                return value != bool ? Boolean.TRUE : bool;
            } catch (ClassCastException e2) {
                throw new WrongType(e2, "val", -2, value);
            }
        }
        if (value instanceof Char) {
            try {
                return (Char) value;
            } catch (ClassCastException e3) {
                throw new WrongType(e3, "val", -2, value);
            }
        }
        if (value instanceof Keyword) {
            try {
                return (Keyword) value;
            } catch (ClassCastException e4) {
                throw new WrongType(e4, "val", -2, value);
            }
        }
        if (value instanceof CharSequence) {
            try {
                return (CharSequence) value;
            } catch (ClassCastException e5) {
                throw new WrongType(e5, "val", -2, value);
            }
        }
        if (value == Special.undefined || value == EofClass.eofValue) {
            return value;
        }
        if (value instanceof Type) {
            try {
                name = ((Type) value).getName();
            } catch (ClassCastException e6) {
                throw new WrongType(e6, "val", -2, value);
            }
        } else {
            if (!(value instanceof Class)) {
                return Quote.append$V(new Object[]{Lit10, LList.consX(new Object[]{value, LList.Empty})});
            }
            try {
                name = ((Class) value).getName();
            } catch (ClassCastException e7) {
                throw new WrongType(e7, "val", -2, value);
            }
        }
        return misc.string$To$Symbol(Format.formatToString(0, "<~a>", name));
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x005e, code lost:
    
        if (r6 != 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0060, code lost:
    
        return r4;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Object unrewriteApply(gnu.expr.ApplyExp r13) throws java.lang.Throwable {
        /*
            r0 = 2
            r1 = 1
            r2 = 0
            gnu.expr.Expression r3 = r13.getFunction()
            gnu.expr.Expression[] r4 = r13.getArgs()
            java.lang.Object r4 = unrewrite$St(r4)
            boolean r5 = r3 instanceof gnu.expr.ReferenceExp
            if (r5 == 0) goto L27
            r5 = r3
            gnu.expr.ReferenceExp r5 = (gnu.expr.ReferenceExp) r5     // Catch: java.lang.ClassCastException -> L1c
            gnu.expr.Declaration r5 = r5.getBinding()
        L1a:
            r7 = r5
            goto L29
        L1c:
            r0 = move-exception
            r13 = r0
            gnu.mapping.WrongType r0 = new gnu.mapping.WrongType
            java.lang.String r1 = "fun"
            r2 = -2
            r0.<init>(r13, r1, r2, r3)
            throw r0
        L27:
            r5 = 0
            goto L1a
        L29:
            java.lang.String r5 = "kawa.standard.Scheme"
            java.lang.String r6 = "applyToArgs"
            gnu.expr.Declaration r5 = gnu.expr.Declaration.getDeclarationFromStatic(r5, r6)
            java.lang.Object r13 = r13.getFunctionValue()
            if (r7 != 0) goto L39
            r6 = 1
            goto L3a
        L39:
            r6 = 0
        L3a:
            int r6 = r6 + r1
            r6 = r6 & r1
            if (r6 == 0) goto L5e
            if (r5 != 0) goto L42
            r6 = 1
            goto L43
        L42:
            r6 = 0
        L43:
            int r6 = r6 + r1
            r6 = r6 & r1
            if (r6 == 0) goto L5b
            java.lang.String r11 = "isField"
            kawa.standard.Scheme r12 = kawa.standard.Scheme.instance
            r6 = 0
            java.lang.String r8 = "field"
            java.lang.String r9 = "field"
            java.lang.String r10 = "getField"
            java.lang.Object r6 = gnu.kawa.reflect.SlotGet.getSlotValue(r6, r7, r8, r9, r10, r11, r12)
            gnu.bytecode.Field r5 = r5.field
            if (r6 != r5) goto L61
            goto L60
        L5b:
            if (r6 == 0) goto L61
            goto L60
        L5e:
            if (r6 == 0) goto L61
        L60:
            return r4
        L61:
            boolean r5 = r13 instanceof gnu.kawa.functions.Convert
            if (r5 == 0) goto L72
            java.lang.Object[] r13 = new java.lang.Object[r0]
            gnu.lists.PairWithPosition r5 = gnu.kawa.slib.syntaxutils.Lit11
            r13[r2] = r5
            r13[r1] = r4
            java.lang.Object r13 = kawa.lang.Quote.append$V(r13)
            goto L85
        L72:
            boolean r13 = r13 instanceof gnu.kawa.functions.GetNamedPart
            if (r13 == 0) goto L83
            java.lang.Object[] r13 = new java.lang.Object[r0]
            gnu.lists.PairWithPosition r5 = gnu.kawa.slib.syntaxutils.Lit12
            r13[r2] = r5
            r13[r1] = r4
            java.lang.Object r13 = kawa.lang.Quote.append$V(r13)
            goto L85
        L83:
            java.lang.Boolean r13 = java.lang.Boolean.FALSE
        L85:
            java.lang.Boolean r5 = java.lang.Boolean.FALSE
            if (r13 == r5) goto L8a
            return r13
        L8a:
            java.lang.Object r13 = unrewrite(r3)
            java.lang.Object[] r0 = new java.lang.Object[r0]
            r0[r2] = r13
            r0[r1] = r4
            java.lang.Object r13 = kawa.lang.Quote.consX$V(r0)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.slib.syntaxutils.unrewriteApply(gnu.expr.ApplyExp):java.lang.Object");
    }
}
