package kawa.lang;

import gnu.bytecode.ClassType;
import gnu.bytecode.Method;
import gnu.expr.ApplyExp;
import gnu.expr.Compilation;
import gnu.expr.Expression;
import gnu.expr.QuoteExp;
import gnu.kawa.lispexpr.LispLanguage;
import gnu.lists.LList;
import gnu.lists.Pair;
import gnu.mapping.Namespace;
import gnu.mapping.Symbol;
import java.util.IdentityHashMap;

/* loaded from: classes2.dex */
public class Quote extends Syntax {
    protected static final int QUOTE_DEPTH = -1;
    static final Method appendMethod;
    static final Method consXMethod;
    static final Method makePairMethod;
    static final Method makeVectorMethod;
    static final ClassType quoteType;
    protected boolean isQuasi;
    public static final Quote plainQuote = new Quote(LispLanguage.quote_sym, false);
    public static final Quote quasiQuote = new Quote(LispLanguage.quasiquote_sym, true);
    private static final Object WORKING = new String("(working)");
    private static final Object CYCLE = new String("(cycle)");
    static final Method vectorAppendMethod = ClassType.make("kawa.standard.vector_append").getDeclaredMethod("apply$V", 1);

    public boolean expandColonForms() {
        return true;
    }

    static {
        ClassType classTypeMake = ClassType.make("kawa.lang.Quote");
        quoteType = classTypeMake;
        consXMethod = classTypeMake.getDeclaredMethod("consX$V", 1);
        appendMethod = classTypeMake.getDeclaredMethod("append$V", 1);
        makePairMethod = Compilation.typePair.getDeclaredMethod("make", 2);
        makeVectorMethod = ClassType.make("gnu.lists.FVector").getDeclaredMethod("make", 1);
    }

    public Quote(String str, boolean z) {
        super(str);
        this.isQuasi = z;
    }

    public Object expand(Object obj, int i, Translator translator) {
        return expand(obj, i, null, new IdentityHashMap(), translator);
    }

    public static Object quote(Object obj, Translator translator) {
        return plainQuote.expand(obj, -1, translator);
    }

    public static Object quote(Object obj) {
        return plainQuote.expand(obj, -1, (Translator) Compilation.getCurrent());
    }

    public Expression coerceExpression(Object obj, Translator translator) {
        return obj instanceof Expression ? (Expression) obj : leaf(obj, translator);
    }

    public Expression leaf(Object obj, Translator translator) {
        return new QuoteExp(obj);
    }

    public static Symbol makeSymbol(Namespace namespace, Object obj) {
        String string;
        if (obj instanceof CharSequence) {
            string = ((CharSequence) obj).toString();
        } else {
            string = (String) obj;
        }
        return namespace.getSymbol(string.intern());
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
    
        r0 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0136, code lost:
    
        return r5.syntaxError("invalid used of " + r11.getCar() + " in quasiquote template");
     */
    /* JADX WARN: Removed duplicated region for block: B:68:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object expand_pair(gnu.lists.Pair r17, int r18, kawa.lang.SyntaxForm r19, java.lang.Object r20, kawa.lang.Translator r21) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Quote.expand_pair(gnu.lists.Pair, int, kawa.lang.SyntaxForm, java.lang.Object, kawa.lang.Translator):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0101 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object expand(java.lang.Object r20, int r21, kawa.lang.SyntaxForm r22, java.lang.Object r23, kawa.lang.Translator r24) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kawa.lang.Quote.expand(java.lang.Object, int, kawa.lang.SyntaxForm, java.lang.Object, kawa.lang.Translator):java.lang.Object");
    }

    private static ApplyExp makeInvokeMakeVector(Expression[] expressionArr) {
        return new ApplyExp(makeVectorMethod, expressionArr);
    }

    @Override // kawa.lang.Syntax
    public Expression rewrite(Object obj, Translator translator) {
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            if (pair.getCdr() == LList.Empty) {
                return coerceExpression(expand(pair.getCar(), this.isQuasi ? 1 : -1, translator), translator);
            }
        }
        return translator.syntaxError("wrong number of arguments to quote");
    }

    public static Object append$V(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return LList.Empty;
        }
        int i = length - 1;
        Object obj = objArr[i];
        while (true) {
            i--;
            if (i < 0) {
                return obj;
            }
            Object datum = objArr[i];
            SyntaxForm syntaxForm = null;
            Pair pair = null;
            Pair pair2 = null;
            while (true) {
                if (datum instanceof SyntaxForm) {
                    syntaxForm = (SyntaxForm) datum;
                    datum = syntaxForm.getDatum();
                } else {
                    if (datum == LList.Empty) {
                        break;
                    }
                    Pair pair3 = (Pair) datum;
                    Object car = pair3.getCar();
                    if (syntaxForm != null && !(car instanceof SyntaxForm)) {
                        car = SyntaxForms.makeForm(car, syntaxForm.getScope());
                    }
                    Pair pair4 = new Pair(car, null);
                    if (pair == null) {
                        pair2 = pair4;
                    } else {
                        pair.setCdr(pair4);
                    }
                    datum = pair3.getCdr();
                    pair = pair4;
                }
            }
            if (pair != null) {
                pair.setCdr(obj);
                obj = pair2;
            }
        }
    }
}
