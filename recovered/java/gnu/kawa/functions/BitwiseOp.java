package gnu.kawa.functions;

import androidx.fragment.app.FragmentTransaction;
import gnu.kawa.lispexpr.LangObjType;
import gnu.mapping.Procedure;
import gnu.mapping.PropertySet;
import gnu.mapping.WrongType;
import gnu.math.BitOps;
import gnu.math.IntNum;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public class BitwiseOp extends ArithOp {
    public static final BitwiseOp and = new BitwiseOp("bitwise-and", 13);
    public static final BitwiseOp ior = new BitwiseOp("bitwise-ior", 14);
    public static final BitwiseOp xor = new BitwiseOp("bitwise-xor", 15);
    public static final BitwiseOp ashift = new BitwiseOp("bitwise-arithmetic-shift", 9);
    public static final BitwiseOp ashiftl = new BitwiseOp("bitwise-arithmetic-shift-left", 10);
    public static final BitwiseOp ashiftr = new BitwiseOp("bitwise-arithmetic-shift-right", 11);
    public static final BitwiseOp not = new BitwiseOp("bitwise-not", 16);

    public BitwiseOp(String str, int i) {
        super(str, i);
        setProperty(Procedure.validateApplyKey, "gnu.kawa.functions.CompileArith:validateApplyArithOp");
        Procedure.compilerKey.set((PropertySet) this, "*gnu.kawa.functions.CompileArith:forBitwise");
    }

    @Override // gnu.kawa.functions.ArithOp
    public Object defaultResult() {
        if (this.op == 13) {
            return IntNum.minusOne();
        }
        return IntNum.zero();
    }

    public Object adjustResult(IntNum intNum, int i) {
        if (i == 1) {
            return Integer.valueOf(intNum.intValue());
        }
        if (i != 2) {
            return i != 3 ? intNum : new BigInteger(intNum.toString());
        }
        return Long.valueOf(intNum.longValue());
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply1(Object obj) {
        if (this.op == 16) {
            return adjustResult(BitOps.not(LangObjType.coerceIntNum(obj)), Arithmetic.classifyValue(obj));
        }
        return apply2(defaultResult(), obj);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object apply2(Object obj, Object obj2) {
        IntNum intNumShift;
        int iClassifyValue = Arithmetic.classifyValue(obj);
        int iClassifyValue2 = Arithmetic.classifyValue(obj2);
        int i = this.op;
        if ((i < 9 || i > 12) && iClassifyValue > 0 && (iClassifyValue <= iClassifyValue2 || iClassifyValue2 <= 0)) {
            iClassifyValue = iClassifyValue2;
        }
        IntNum intNumCoerceIntNum = LangObjType.coerceIntNum(obj);
        IntNum intNumCoerceIntNum2 = LangObjType.coerceIntNum(obj2);
        switch (this.op) {
            case 9:
            case 10:
            case 11:
                int iIntValue = intNumCoerceIntNum2.intValue();
                int i2 = this.op;
                if (i2 == 11 || i2 == 10) {
                    checkNonNegativeShift(this, iIntValue);
                    if (this.op == 11) {
                        iIntValue = -iIntValue;
                    }
                }
                intNumShift = IntNum.shift(intNumCoerceIntNum, iIntValue);
                break;
            case 12:
            default:
                throw new Error();
            case 13:
                intNumShift = BitOps.and(intNumCoerceIntNum, intNumCoerceIntNum2);
                break;
            case 14:
                intNumShift = BitOps.ior(intNumCoerceIntNum, intNumCoerceIntNum2);
                break;
            case 15:
                intNumShift = BitOps.xor(intNumCoerceIntNum, intNumCoerceIntNum2);
                break;
        }
        return adjustResult(intNumShift, iClassifyValue);
    }

    @Override // gnu.mapping.ProcedureN, gnu.mapping.Procedure
    public Object applyN(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return defaultResult();
        }
        if (length == 1) {
            return apply1(objArr[0]);
        }
        Object objApply2 = objArr[0];
        for (int i = 1; i < length; i++) {
            objApply2 = apply2(objApply2, objArr[i]);
        }
        return objApply2;
    }

    public static int checkNonNegativeShift(Procedure procedure, int i) {
        if (i >= 0) {
            return i;
        }
        throw new WrongType(procedure, 2, Integer.valueOf(i), "non-negative integer");
    }

    public static IntNum shiftLeft(IntNum intNum, int i) {
        return IntNum.shift(intNum, checkNonNegativeShift(ashiftl, i));
    }

    public static IntNum shiftRight(IntNum intNum, int i) {
        return IntNum.shift(intNum, -checkNonNegativeShift(ashiftr, i));
    }

    @Override // gnu.mapping.Procedure
    public int numArgs() {
        int i = this.op;
        if (i >= 9 && i <= 12) {
            return 8194;
        }
        if (i == 16) {
            return FragmentTransaction.TRANSIT_FRAGMENT_OPEN;
        }
        return -4096;
    }
}
