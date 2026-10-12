package gnu.math;

import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public abstract class Numeric extends Number {
    public static final int CEILING = 2;
    public static final int FLOOR = 1;
    public static final int NONNEG_MOD = 5;
    public static final int ROUND = 4;
    public static final int TRUNCATE = 3;

    public abstract Numeric abs();

    public abstract Numeric add(Object obj, int i);

    public int compare(Object obj) {
        return -3;
    }

    public abstract Numeric div(Object obj);

    public abstract boolean isExact();

    public abstract boolean isZero();

    public abstract Numeric mul(Object obj);

    public abstract Numeric neg();

    public Numeric toExact() {
        return this;
    }

    public Numeric toInexact() {
        return this;
    }

    public abstract String toString(int i);

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) longValue();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) doubleValue();
    }

    public final Numeric add(Object obj) {
        return add(obj, 1);
    }

    public final Numeric sub(Object obj) {
        return add(obj, -1);
    }

    public String toString() {
        return toString(10);
    }

    public static Numeric asNumericOrNull(Object obj) {
        if (obj instanceof Numeric) {
            return (Numeric) obj;
        }
        if ((obj instanceof BigInteger) || (obj instanceof Long) || (obj instanceof Short) || (obj instanceof Byte) || (obj instanceof Integer)) {
            return IntNum.asIntNumOrNull(obj);
        }
        if (obj instanceof BigDecimal) {
            return RatNum.asRatNumOrNull(obj);
        }
        if ((obj instanceof Float) || (obj instanceof Double)) {
            return new DFloNum(((Number) obj).doubleValue());
        }
        return null;
    }

    public int compareReversed(Numeric numeric) {
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof Numeric) && compare(obj) == 0;
    }

    public boolean grt(Object obj) {
        return compare(obj) > 0;
    }

    public boolean geq(Object obj) {
        return compare(obj) >= 0;
    }

    public Numeric addReversed(Numeric numeric, int i) {
        throw new IllegalArgumentException();
    }

    public Numeric mulReversed(Numeric numeric) {
        throw new IllegalArgumentException();
    }

    public Numeric divReversed(Numeric numeric) {
        throw new IllegalArgumentException();
    }

    public Numeric div_inv() {
        return IntNum.one().div(this);
    }

    public Numeric mul_ident() {
        return IntNum.one();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [gnu.math.Numeric] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [gnu.math.Numeric, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3 */
    public Numeric power(IntNum intNum) {
        Numeric numericMul;
        if (intNum.isNegative()) {
            return power(IntNum.neg(intNum)).div_inv();
        }
        ?? r0 = 0;
        ?? Mul = this;
        while (true) {
            numericMul = r0;
            if (intNum.isOdd()) {
                numericMul = r0 == 0 ? Mul : r0.mul(Mul);
            }
            intNum = IntNum.shift(intNum, -1);
            if (intNum.isZero()) {
                break;
            }
            r0 = numericMul;
            Mul = Mul.mul(Mul);
        }
        return numericMul == null ? mul_ident() : numericMul;
    }
}
