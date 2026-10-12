package gnu.kawa.functions;

import gnu.mapping.Procedure;
import gnu.mapping.PropertySet;
import gnu.math.DFloNum;
import gnu.math.IntNum;
import gnu.math.RatNum;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public class AddOp extends ArithOp {
    int plusOrMinus;
    public static final AddOp $Pl = new AddOp("+", 1);
    public static final AddOp $Mn = new AddOp("-", -1);

    public AddOp(String str, int i) {
        super(str, i > 0 ? 1 : 2);
        this.plusOrMinus = i;
        Procedure.compilerKey.set((PropertySet) this, i > 0 ? "gnu.kawa.functions.CompileArith:$Pl" : "gnu.kawa.functions.CompileArith:$Mn");
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyArithOp");
    }

    public static Object apply2(int i, Object obj, Object obj2) {
        int iClassifyValue = Arithmetic.classifyValue(obj);
        int iClassifyValue2 = Arithmetic.classifyValue(obj2);
        if (iClassifyValue < iClassifyValue2) {
            iClassifyValue = iClassifyValue2;
        }
        switch (iClassifyValue) {
            case 1:
                int iAsInt = Arithmetic.asInt(obj);
                int iAsInt2 = Arithmetic.asInt(obj2);
                return new Integer(i > 0 ? iAsInt + iAsInt2 : iAsInt - iAsInt2);
            case 2:
                long jAsLong = Arithmetic.asLong(obj);
                long jAsLong2 = Arithmetic.asLong(obj2);
                return new Long(i > 0 ? jAsLong + jAsLong2 : jAsLong - jAsLong2);
            case 3:
                BigInteger bigIntegerAsBigInteger = Arithmetic.asBigInteger(obj);
                BigInteger bigIntegerAsBigInteger2 = Arithmetic.asBigInteger(obj2);
                return i > 0 ? bigIntegerAsBigInteger.add(bigIntegerAsBigInteger2) : bigIntegerAsBigInteger.subtract(bigIntegerAsBigInteger2);
            case 4:
                return IntNum.add(Arithmetic.asIntNum(obj), Arithmetic.asIntNum(obj2), i);
            case 5:
                BigDecimal bigDecimalAsBigDecimal = Arithmetic.asBigDecimal(obj);
                BigDecimal bigDecimalAsBigDecimal2 = Arithmetic.asBigDecimal(obj2);
                return i > 0 ? bigDecimalAsBigDecimal.add(bigDecimalAsBigDecimal2) : bigDecimalAsBigDecimal.subtract(bigDecimalAsBigDecimal2);
            case 6:
                return RatNum.add(Arithmetic.asRatNum(obj), Arithmetic.asRatNum(obj2), i);
            case 7:
                float fAsFloat = Arithmetic.asFloat(obj);
                float fAsFloat2 = Arithmetic.asFloat(obj2);
                return new Float(i > 0 ? fAsFloat + fAsFloat2 : fAsFloat - fAsFloat2);
            case 8:
                double dAsDouble = Arithmetic.asDouble(obj);
                double dAsDouble2 = Arithmetic.asDouble(obj2);
                return new Double(i > 0 ? dAsDouble + dAsDouble2 : dAsDouble - dAsDouble2);
            case 9:
                double dAsDouble3 = Arithmetic.asDouble(obj);
                double dAsDouble4 = Arithmetic.asDouble(obj2);
                return new DFloNum(i > 0 ? dAsDouble3 + dAsDouble4 : dAsDouble3 - dAsDouble4);
            default:
                return Arithmetic.asNumeric(obj).add(Arithmetic.asNumeric(obj2), i);
        }
    }

    public static Object $Mn(Object obj) {
        switch (Arithmetic.classifyValue(obj)) {
            case 1:
                return new Integer(-Arithmetic.asInt(obj));
            case 2:
                return new Long(-Arithmetic.asLong(obj));
            case 3:
                return Arithmetic.asBigInteger(obj).negate();
            case 4:
                return IntNum.neg(Arithmetic.asIntNum(obj));
            case 5:
                return Arithmetic.asBigDecimal(obj).negate();
            case 6:
                return RatNum.neg(Arithmetic.asRatNum(obj));
            case 7:
                return new Float(-Arithmetic.asFloat(obj));
            case 8:
                return new Double(-Arithmetic.asDouble(obj));
            case 9:
                return new DFloNum(-Arithmetic.asDouble(obj));
            default:
                return Arithmetic.asNumeric(obj).neg();
        }
    }

    public static Object applyN(int i, Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return IntNum.zero();
        }
        Object objApply2 = objArr[0];
        if (length == 1 && i < 0) {
            return $Mn(objApply2);
        }
        for (int i2 = 1; i2 < length; i2++) {
            objApply2 = apply2(i, objApply2, objArr[i2]);
        }
        return objApply2;
    }

    public static Object applyN(int i, Object obj, Object[] objArr) {
        for (Object obj2 : objArr) {
            obj = apply2(i, obj, obj2);
        }
        return obj;
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        return applyN(this.plusOrMinus, objArr);
    }
}
