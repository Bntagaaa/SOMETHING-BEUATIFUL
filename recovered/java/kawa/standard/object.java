package kawa.standard;

import gnu.bytecode.Type;
import gnu.expr.BeginExp;
import gnu.expr.ClassExp;
import gnu.expr.Compilation;
import gnu.expr.Declaration;
import gnu.expr.Expression;
import gnu.expr.Keyword;
import gnu.expr.LambdaExp;
import gnu.expr.ObjectExp;
import gnu.expr.QuoteExp;
import gnu.expr.SetExp;
import gnu.expr.ThisExp;
import gnu.lists.FString;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Namespace;
import gnu.mapping.SimpleSymbol;
import gnu.mapping.Symbol;
import kawa.lang.Lambda;
import kawa.lang.Syntax;
import kawa.lang.SyntaxForm;
import kawa.lang.Translator;

/* loaded from: classes2.dex */
public class object extends Syntax {
    public static final Keyword accessKeyword;
    public static final Keyword allocationKeyword;
    public static final Keyword classNameKeyword;
    static final Symbol coloncolon;
    static final Keyword initKeyword;
    static final Keyword init_formKeyword;
    static final Keyword init_keywordKeyword;
    static final Keyword init_valueKeyword;
    static final Keyword initformKeyword;
    public static final Keyword interfaceKeyword;
    public static final object objectSyntax;
    public static final Keyword throwsKeyword;
    static final Keyword typeKeyword;
    Lambda lambda;

    static {
        object objectVar = new object(SchemeCompilation.lambda);
        objectSyntax = objectVar;
        objectVar.setName("object");
        accessKeyword = Keyword.make("access");
        classNameKeyword = Keyword.make("class-name");
        interfaceKeyword = Keyword.make("interface");
        throwsKeyword = Keyword.make("throws");
        typeKeyword = Keyword.make("type");
        allocationKeyword = Keyword.make("allocation");
        initKeyword = Keyword.make("init");
        initformKeyword = Keyword.make("initform");
        init_formKeyword = Keyword.make("init-form");
        init_valueKeyword = Keyword.make("init-value");
        init_keywordKeyword = Keyword.make("init-keyword");
        coloncolon = Namespace.EmptyNamespace.getSymbol("::");
    }

    public object(Lambda lambda) {
        this.lambda = lambda;
    }

    @Override // kawa.lang.Syntax
    public Expression rewriteForm(Pair pair, Translator translator) {
        if (!(pair.getCdr() instanceof Pair)) {
            return translator.syntaxError("missing superclass specification in object");
        }
        Pair pair2 = (Pair) pair.getCdr();
        ObjectExp objectExp = new ObjectExp();
        if (pair2.getCar() instanceof FString) {
            if (!(pair2.getCdr() instanceof Pair)) {
                return translator.syntaxError("missing superclass specification after object class name");
            }
            pair2 = (Pair) pair2.getCdr();
        }
        Object[] objArrScanClassDef = scanClassDef(pair2, objectExp, translator);
        if (objArrScanClassDef != null) {
            rewriteClassDef(objArrScanClassDef, translator);
        }
        return objectExp;
    }

    /* JADX WARN: Code restructure failed: missing block: B:159:0x0363, code lost:
    
        r5 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object[] scanClassDef(gnu.lists.Pair r37, gnu.expr.ClassExp r38, kawa.lang.Translator r39) {
        /*
            Method dump skipped, instructions count: 1056
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.object.scanClassDef(gnu.lists.Pair, gnu.expr.ClassExp, kawa.lang.Translator):java.lang.Object[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x0212 A[Catch: all -> 0x00f9, TryCatch #0 {all -> 0x00f9, blocks: (B:43:0x00e2, B:45:0x00ea, B:47:0x00ee, B:51:0x00fc, B:52:0x0103, B:54:0x0107, B:55:0x010f, B:57:0x0113, B:59:0x0117, B:62:0x011e, B:64:0x0122, B:66:0x0128, B:67:0x012f, B:69:0x013b, B:70:0x0140, B:73:0x015c, B:77:0x016b, B:81:0x0178, B:83:0x017f, B:84:0x0182, B:85:0x0187, B:86:0x018e, B:91:0x019b, B:93:0x019f, B:95:0x01a3, B:96:0x01ab, B:97:0x01b1, B:99:0x01b5, B:100:0x01bc, B:102:0x01cc, B:106:0x01d5, B:108:0x01d9, B:110:0x01e7, B:113:0x01ec, B:115:0x01f0, B:117:0x01f4, B:119:0x01f8, B:136:0x022e, B:124:0x0205, B:128:0x0212, B:133:0x021c, B:135:0x0224, B:139:0x0239, B:141:0x0243, B:143:0x024e, B:145:0x0256, B:89:0x0193), top: B:160:0x00e2 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x017f A[Catch: all -> 0x00f9, TryCatch #0 {all -> 0x00f9, blocks: (B:43:0x00e2, B:45:0x00ea, B:47:0x00ee, B:51:0x00fc, B:52:0x0103, B:54:0x0107, B:55:0x010f, B:57:0x0113, B:59:0x0117, B:62:0x011e, B:64:0x0122, B:66:0x0128, B:67:0x012f, B:69:0x013b, B:70:0x0140, B:73:0x015c, B:77:0x016b, B:81:0x0178, B:83:0x017f, B:84:0x0182, B:85:0x0187, B:86:0x018e, B:91:0x019b, B:93:0x019f, B:95:0x01a3, B:96:0x01ab, B:97:0x01b1, B:99:0x01b5, B:100:0x01bc, B:102:0x01cc, B:106:0x01d5, B:108:0x01d9, B:110:0x01e7, B:113:0x01ec, B:115:0x01f0, B:117:0x01f4, B:119:0x01f8, B:136:0x022e, B:124:0x0205, B:128:0x0212, B:133:0x021c, B:135:0x0224, B:139:0x0239, B:141:0x0243, B:143:0x024e, B:145:0x0256, B:89:0x0193), top: B:160:0x00e2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void rewriteClassDef(java.lang.Object[] r20, kawa.lang.Translator r21) {
        /*
            Method dump skipped, instructions count: 637
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.standard.object.rewriteClassDef(java.lang.Object[], kawa.lang.Translator):void");
    }

    private static void rewriteInit(Object obj, ClassExp classExp, Pair pair, Translator translator, SyntaxForm syntaxForm) {
        Expression expressionMakeCoercion;
        boolean z = obj instanceof Declaration;
        boolean flag = z ? ((Declaration) obj).getFlag(2048L) : obj == Boolean.TRUE;
        LambdaExp lambdaExp = flag ? classExp.clinitMethod : classExp.initMethod;
        if (lambdaExp == null) {
            lambdaExp = new LambdaExp(new BeginExp());
            lambdaExp.setClassMethod(true);
            lambdaExp.setReturnType(Type.voidType);
            if (flag) {
                lambdaExp.setName("$clinit$");
                classExp.clinitMethod = lambdaExp;
            } else {
                lambdaExp.setName("$finit$");
                classExp.initMethod = lambdaExp;
                lambdaExp.add(null, new Declaration(ThisExp.THIS_NAME));
            }
            lambdaExp.nextSibling = classExp.firstChild;
            classExp.firstChild = lambdaExp;
        }
        translator.push(lambdaExp);
        LambdaExp lambdaExp2 = translator.curMethodLambda;
        translator.curMethodLambda = lambdaExp;
        Expression expressionRewrite_car = translator.rewrite_car(pair, syntaxForm);
        if (z) {
            Declaration declaration = (Declaration) obj;
            expressionMakeCoercion = new SetExp(declaration, expressionRewrite_car);
            expressionMakeCoercion.setLocation(declaration);
            declaration.noteValue(null);
        } else {
            expressionMakeCoercion = Compilation.makeCoercion(expressionRewrite_car, new QuoteExp(Type.voidType));
        }
        ((BeginExp) lambdaExp.body).add(expressionMakeCoercion);
        translator.curMethodLambda = lambdaExp2;
        translator.pop(lambdaExp);
    }

    public static boolean matches(Object obj, String str, Translator translator) {
        String string;
        if (obj instanceof Keyword) {
            string = ((Keyword) obj).getName();
        } else if (obj instanceof FString) {
            string = ((FString) obj).toString();
        } else {
            if (obj instanceof Pair) {
                Object objMatchQuoted = translator.matchQuoted((Pair) obj);
                if (objMatchQuoted instanceof SimpleSymbol) {
                    string = objMatchQuoted.toString();
                }
            }
            return false;
        }
        return str == null || str.equals(string);
    }

    public static long addAccessFlags(Object obj, long j, long j2, String str, Translator translator) {
        long jMatchAccess = matchAccess(obj, translator);
        if (jMatchAccess == 0) {
            translator.error('e', "unknown access specifier " + obj);
        } else if (((~j2) & jMatchAccess) != 0) {
            translator.error('e', "invalid " + str + " access specifier " + obj);
        } else if ((j & jMatchAccess) != 0) {
            translator.error('w', "duplicate " + str + " access specifiers " + obj);
        }
        return j | jMatchAccess;
    }

    public static long matchAccess(Object obj, Translator translator) {
        while (obj instanceof SyntaxForm) {
            obj = ((SyntaxForm) obj).getDatum();
        }
        if (obj instanceof Pair) {
            obj = translator.matchQuoted((Pair) obj);
            if (obj instanceof Pair) {
                return matchAccess2((Pair) obj, translator);
            }
        }
        return matchAccess1(obj, translator);
    }

    private static long matchAccess2(Pair pair, Translator translator) {
        long jMatchAccess1 = matchAccess1(pair.getCar(), translator);
        Object cdr = pair.getCdr();
        if (cdr == LList.Empty || jMatchAccess1 == 0) {
            return jMatchAccess1;
        }
        if (cdr instanceof Pair) {
            long jMatchAccess2 = matchAccess2((Pair) cdr, translator);
            if (jMatchAccess2 != 0) {
                return jMatchAccess2 | jMatchAccess1;
            }
        }
        return 0L;
    }

    private static long matchAccess1(Object obj, Translator translator) {
        if (obj instanceof Keyword) {
            obj = ((Keyword) obj).getName();
        } else if (obj instanceof FString) {
            obj = ((FString) obj).toString();
        } else if (obj instanceof SimpleSymbol) {
            obj = obj.toString();
        }
        if ("private".equals(obj)) {
            return 16777216L;
        }
        if ("protected".equals(obj)) {
            return 33554432L;
        }
        if ("public".equals(obj)) {
            return 67108864L;
        }
        if ("package".equals(obj)) {
            return 134217728L;
        }
        if ("volatile".equals(obj)) {
            return Declaration.VOLATILE_ACCESS;
        }
        if ("transient".equals(obj)) {
            return Declaration.TRANSIENT_ACCESS;
        }
        if ("enum".equals(obj)) {
            return Declaration.ENUM_ACCESS;
        }
        if ("final".equals(obj)) {
            return Declaration.FINAL_ACCESS;
        }
        return 0L;
    }
}
