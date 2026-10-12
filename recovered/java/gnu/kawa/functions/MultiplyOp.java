package gnu.kawa.functions;

import gnu.mapping.Procedure;
import gnu.mapping.PropertySet;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.math.Numeric;
import gnu.math.RatNum;

/* loaded from: classes2.dex */
public class MultiplyOp extends ArithOp {
    public static final MultiplyOp $St = new MultiplyOp("*");

    public MultiplyOp(String str) {
        super(str, 3);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyArithOp");
        Procedure.compilerKey.set((PropertySet) this, "*gnu.kawa.functions.CompileArith:forMul");
    }

    @Override // gnu.kawa.functions.ArithOp
    public Object defaultResult() {
        return IntNum.one();
    }

    public static Object apply(Object obj, Object obj2) {
        return ((Numeric) obj).mul(obj2);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        Number num;
        int length = objArr.length;
        if (length == 0) {
            return IntNum.one();
        }
        Number l = (Number) objArr[0];
        int iClassifyValue = Arithmetic.classifyValue(l);
        for (int i = 1; i < length; i++) {
            Object obj = objArr[i];
            int iClassifyValue2 = Arithmetic.classifyValue(obj);
            if (iClassifyValue < iClassifyValue2) {
                iClassifyValue = iClassifyValue2;
            }
            switch (iClassifyValue) {
                case 1:
                    num = new Integer(Arithmetic.asInt(l) * Arithmetic.asInt(obj));
                    break;
                case 2:
                    l = new Long(Arithmetic.asLong(l) * Arithmetic.asLong(obj));
                    continue;
                case 3:
                    l = Arithmetic.asBigInteger(l).multiply(Arithmetic.asBigInteger(obj));
                    continue;
                case 4:
                    l = IntNum.times(Arithmetic.asIntNum(l), Arithmetic.asIntNum(obj));
                    continue;
                case 5:
                    l = Arithmetic.asBigDecimal(l).multiply(Arithmetic.asBigDecimal(obj));
                    continue;
                case 6:
                    l = RatNum.times(Arithmetic.asRatNum(l), Arithmetic.asRatNum(obj));
                    continue;
                case 7:
                    num = new Float(Arithmetic.asFloat(l) * Arithmetic.asFloat(obj));
                    break;
                case 8:
                    l = new Double(Arithmetic.asDouble(l) * Arithmetic.asDouble(obj));
                    continue;
                case 9:
                    l = new DFloNum(Arithmetic.asDouble(l) * Arithmetic.asDouble(obj));
                    continue;
                default:
                    l = Arithmetic.asNumeric(l).mul(Arithmetic.asNumeric(obj));
                    continue;
            }
            l = num;
        }
        return l;
    }
}
