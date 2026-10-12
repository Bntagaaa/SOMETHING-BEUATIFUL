package gnu.kawa.functions;

import gnu.bytecode.Type;
import gnu.expr.Expression;
import gnu.expr.Inlineable;
import gnu.expr.Language;
import gnu.expr.QuoteExp;
import gnu.mapping.Procedure;
import gnu.mapping.ProcedureN;
import gnu.math.IntNum;
import gnu.math.RatNum;

/* loaded from: classes2.dex */
public class NumberCompare extends ProcedureN implements Inlineable {
    static final int RESULT_EQU = 0;
    static final int RESULT_GRT = 1;
    static final int RESULT_LSS = -1;
    static final int RESULT_NAN = -2;
    static final int RESULT_NEQ = -3;
    public static final int TRUE_IF_EQU = 8;
    public static final int TRUE_IF_GRT = 16;
    public static final int TRUE_IF_LSS = 4;
    public static final int TRUE_IF_NAN = 2;
    public static final int TRUE_IF_NEQ = 1;
    int flags;
    Language language;

    public static boolean checkCompareCode(int i, int i2) {
        return ((1 << (i + 3)) & i2) != 0;
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        return -4094;
    }

    public static boolean $Eq(Object obj, Object obj2) {
        return apply2(8, obj, obj2);
    }

    public static boolean $Gr(Object obj, Object obj2) {
        return apply2(16, obj, obj2);
    }

    public static boolean $Gr$Eq(Object obj, Object obj2) {
        return apply2(24, obj, obj2);
    }

    public static boolean $Ls(Object obj, Object obj2) {
        return apply2(4, obj, obj2);
    }

    public static boolean $Ls$Eq(Object obj, Object obj2) {
        return apply2(12, obj, obj2);
    }

    public static boolean $Eq$V(Object obj, Object obj2, Object obj3, Object[] objArr) {
        if ($Eq(obj, obj2) && $Eq(obj2, obj3)) {
            if (objArr.length == 0) {
                return true;
            }
            if ($Eq(obj3, objArr[0]) && applyN(8, objArr)) {
                return true;
            }
        }
        return false;
    }

    public static boolean $Gr$V(Object obj, Object obj2, Object obj3, Object[] objArr) {
        if ($Gr(obj, obj2) && $Gr(obj2, obj3)) {
            if (objArr.length == 0) {
                return true;
            }
            if ($Gr(obj3, objArr[0]) && applyN(16, objArr)) {
                return true;
            }
        }
        return false;
    }

    public static boolean $Gr$Eq$V(Object obj, Object obj2, Object obj3, Object[] objArr) {
        if ($Gr$Eq(obj, obj2) && $Gr$Eq(obj2, obj3)) {
            if (objArr.length == 0) {
                return true;
            }
            if ($Gr$Eq(obj3, objArr[0]) && applyN(24, objArr)) {
                return true;
            }
        }
        return false;
    }

    public static boolean $Ls$V(Object obj, Object obj2, Object obj3, Object[] objArr) {
        if ($Ls(obj, obj2) && $Ls(obj2, obj3)) {
            if (objArr.length == 0) {
                return true;
            }
            if ($Ls(obj3, objArr[0]) && applyN(4, objArr)) {
                return true;
            }
        }
        return false;
    }

    public static boolean $Ls$Eq$V(Object obj, Object obj2, Object obj3, Object[] objArr) {
        if ($Ls$Eq(obj, obj2) && $Ls$Eq(obj2, obj3)) {
            if (objArr.length == 0) {
                return true;
            }
            if ($Ls$Eq(obj3, objArr[0]) && applyN(12, objArr)) {
                return true;
            }
        }
        return false;
    }

    public static NumberCompare make(Language language, String str, int i) {
        NumberCompare numberCompare = new NumberCompare();
        numberCompare.language = language;
        numberCompare.setName(str);
        numberCompare.flags = i;
        numberCompare.setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyNumberCompare");
        return numberCompare;
    }

    public final Language getLanguage() {
        return this.language;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        return getLanguage().booleanObject(apply2(this.flags, obj, obj2));
    }

    public static boolean apply2(int i, Object obj, Object obj2) {
        return (i & (1 << (compare(obj, obj2, true) + 3))) != 0;
    }

    public static boolean applyWithPromotion(int i, Object obj, Object obj2) {
        return checkCompareCode(compare(obj, obj2, false), i);
    }

    public static int compare(Object obj, Object obj2, boolean z) {
        return compare(obj, Arithmetic.classifyValue(obj), obj2, Arithmetic.classifyValue(obj2), z);
    }

    public static int compare(Object obj, int i, Object obj2, int i2, boolean z) {
        if (i < 0 || i2 < 0) {
            return -3;
        }
        switch (i < i2 ? i2 : i) {
            case 1:
                int iAsInt = Arithmetic.asInt(obj);
                int iAsInt2 = Arithmetic.asInt(obj2);
                if (iAsInt < iAsInt2) {
                    return -1;
                }
                return iAsInt > iAsInt2 ? 1 : 0;
            case 2:
                long jAsLong = Arithmetic.asLong(obj);
                long jAsLong2 = Arithmetic.asLong(obj2);
                if (jAsLong < jAsLong2) {
                    return -1;
                }
                return jAsLong > jAsLong2 ? 1 : 0;
            case 3:
                return Arithmetic.asBigInteger(obj).compareTo(Arithmetic.asBigInteger(obj2));
            case 4:
                return IntNum.compare(Arithmetic.asIntNum(obj), Arithmetic.asIntNum(obj2));
            case 5:
                return Arithmetic.asBigDecimal(obj).compareTo(Arithmetic.asBigDecimal(obj2));
            case 6:
                return RatNum.compare(Arithmetic.asRatNum(obj), Arithmetic.asRatNum(obj2));
            case 7:
                if (!z || (i > 6 && i2 > 6)) {
                    float fAsFloat = Arithmetic.asFloat(obj);
                    float fAsFloat2 = Arithmetic.asFloat(obj2);
                    if (fAsFloat > fAsFloat2) {
                        return 1;
                    }
                    if (fAsFloat < fAsFloat2) {
                        return -1;
                    }
                    return fAsFloat == fAsFloat2 ? 0 : -2;
                }
            case 8:
            case 9:
                if (!z || (i > 6 && i2 > 6)) {
                    double dAsDouble = Arithmetic.asDouble(obj);
                    double dAsDouble2 = Arithmetic.asDouble(obj2);
                    if (dAsDouble > dAsDouble2) {
                        return 1;
                    }
                    if (dAsDouble < dAsDouble2) {
                        return -1;
                    }
                    return dAsDouble == dAsDouble2 ? 0 : -2;
                }
            default:
                return Arithmetic.asNumeric(obj).compare(Arithmetic.asNumeric(obj2));
        }
    }

    public static boolean applyN(int i, Object[] objArr) {
        int i2 = 0;
        while (i2 < objArr.length - 1) {
            Object obj = objArr[i2];
            i2++;
            if (!apply2(i, obj, objArr[i2])) {
                return false;
            }
        }
        return true;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        return getLanguage().booleanObject(applyN(this.flags, objArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:94:0x012b  */
    @Override // gnu.expr.Inlineable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void compile(gnu.expr.ApplyExp r20, gnu.expr.Compilation r21, gnu.expr.Target r22) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gnu.kawa.functions.NumberCompare.compile(gnu.expr.ApplyExp, gnu.expr.Compilation, gnu.expr.Target):void");
    }

    public static int classify(Expression expression) {
        int iClassifyType = Arithmetic.classifyType(expression.getType());
        if (iClassifyType == 4 && (expression instanceof QuoteExp)) {
            Object value = ((QuoteExp) expression).getValue();
            if (value instanceof IntNum) {
                int iIntLength = ((IntNum) value).intLength();
                if (iIntLength < 32) {
                    return 1;
                }
                if (iIntLength < 64) {
                    return 2;
                }
            }
        }
        return iClassifyType;
    }

    @Override // gnu.mapping.Procedure
    public Type getReturnType(Expression[] expressionArr) {
        return Type.booleanType;
    }
}
