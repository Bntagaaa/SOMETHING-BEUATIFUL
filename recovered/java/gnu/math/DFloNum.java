package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class DFloNum extends RealNum implements Externalizable {
    private static final DFloNum one = new DFloNum(1.0d);
    double value;

    public static int compare(double d, double d2) {
        if (d > d2) {
            return 1;
        }
        if (d < d2) {
            return -1;
        }
        return d == d2 ? 0 : -2;
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean isExact() {
        return false;
    }

    public DFloNum() {
    }

    public DFloNum(double d) {
        this.value = d;
    }

    public DFloNum(String str) throws NumberFormatException {
        double dDoubleValue = Double.valueOf(str).doubleValue();
        this.value = dDoubleValue;
        if (dDoubleValue == 0.0d && str.charAt(0) == '-') {
            this.value = -0.0d;
        }
    }

    public static DFloNum make(double d) {
        return new DFloNum(d);
    }

    public static DFloNum asDFloNumOrNull(Object obj) {
        if (obj instanceof DFloNum) {
            return (DFloNum) obj;
        }
        if ((obj instanceof RealNum) || (obj instanceof Number)) {
            return new DFloNum(((Number) obj).doubleValue());
        }
        return null;
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, java.lang.Number
    public final double doubleValue() {
        return this.value;
    }

    @Override // gnu.math.Complex, gnu.math.Numeric, java.lang.Number
    public long longValue() {
        return (long) this.value;
    }

    public int hashCode() {
        return (int) this.value;
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean equals(Object obj) {
        return obj != null && (obj instanceof DFloNum) && Double.doubleToLongBits(((DFloNum) obj).value) == Double.doubleToLongBits(this.value);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof RealNum) {
            return new DFloNum((((RealNum) obj).doubleValue() * i) + this.value);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).addReversed(this, i);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric addReversed(Numeric numeric, int i) {
        if (numeric instanceof RealNum) {
            return new DFloNum((i * this.value) + ((RealNum) numeric).doubleValue());
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof RealNum) {
            return new DFloNum(((RealNum) obj).doubleValue() * this.value);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric mulReversed(Numeric numeric) {
        if (numeric instanceof RealNum) {
            return new DFloNum(((RealNum) numeric).doubleValue() * this.value);
        }
        throw new IllegalArgumentException();
    }

    public static final DFloNum one() {
        return one;
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof RealNum) {
            return new DFloNum(this.value / ((RealNum) obj).doubleValue());
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).divReversed(this);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric divReversed(Numeric numeric) {
        if (numeric instanceof RealNum) {
            return new DFloNum(((RealNum) numeric).doubleValue() / this.value);
        }
        throw new IllegalArgumentException();
    }

    @Override // gnu.math.Numeric
    public Numeric power(IntNum intNum) {
        return new DFloNum(Math.pow(doubleValue(), intNum.doubleValue()));
    }

    @Override // gnu.math.RealNum
    public boolean isNegative() {
        return this.value < 0.0d;
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric neg() {
        return new DFloNum(-this.value);
    }

    @Override // gnu.math.RealNum
    public int sign() {
        double d = this.value;
        if (d > 0.0d) {
            return 1;
        }
        if (d < 0.0d) {
            return -1;
        }
        return d == 0.0d ? 0 : -2;
    }

    public static int compare(IntNum intNum, IntNum intNum2, double d) {
        if (Double.isNaN(d)) {
            return -2;
        }
        if (Double.isInfinite(d)) {
            int i = d >= 0.0d ? -1 : 1;
            if (!intNum2.isZero()) {
                return i;
            }
            if (intNum.isZero()) {
                return -2;
            }
            int i2 = i >> 1;
            return intNum.isNegative() ? i2 : ~i2;
        }
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        boolean z = jDoubleToLongBits < 0;
        int i3 = ((int) (jDoubleToLongBits >> 52)) & 2047;
        long j = jDoubleToLongBits & 4503599627370495L;
        long j2 = i3 == 0 ? j << 1 : j | 4503599627370496L;
        if (z) {
            j2 = -j2;
        }
        IntNum intNumMake = IntNum.make(j2);
        if (i3 >= 1075) {
            intNumMake = IntNum.shift(intNumMake, i3 - 1075);
        } else {
            intNum = IntNum.shift(intNum, 1075 - i3);
        }
        return IntNum.compare(intNum, IntNum.times(intNumMake, intNum2));
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public int compare(Object obj) {
        if (obj instanceof RatNum) {
            RatNum ratNum = (RatNum) obj;
            int iCompare = compare(ratNum.numerator(), ratNum.denominator(), this.value);
            return iCompare < -1 ? iCompare : -iCompare;
        }
        return compare(this.value, ((RealNum) obj).doubleValue());
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public int compareReversed(Numeric numeric) {
        if (numeric instanceof RatNum) {
            RatNum ratNum = (RatNum) numeric;
            return compare(ratNum.numerator(), ratNum.denominator(), this.value);
        }
        return compare(((RealNum) numeric).doubleValue(), this.value);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Numeric
    public boolean isZero() {
        return this.value == 0.0d;
    }

    public static RatNum toExact(double d) {
        if (Double.isInfinite(d)) {
            return RatNum.infinity(d < 0.0d ? -1 : 1);
        }
        if (Double.isNaN(d)) {
            throw new ArithmeticException("cannot convert NaN to exact rational");
        }
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        boolean z = jDoubleToLongBits < 0;
        int i = ((int) (jDoubleToLongBits >> 52)) & 2047;
        long j = jDoubleToLongBits & 4503599627370495L;
        long j2 = i == 0 ? j << 1 : j | 4503599627370496L;
        if (z) {
            j2 = -j2;
        }
        IntNum intNumMake = IntNum.make(j2);
        if (i >= 1075) {
            return IntNum.shift(intNumMake, i - 1075);
        }
        return RatNum.make(intNumMake, IntNum.shift(IntNum.one(), 1075 - i));
    }

    @Override // gnu.math.Numeric
    public String toString() {
        double d = this.value;
        return d == Double.POSITIVE_INFINITY ? "+inf.0" : d == Double.NEGATIVE_INFINITY ? "-inf.0" : Double.isNaN(d) ? "+nan.0" : Double.toString(this.value);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public String toString(int i) {
        if (i == 10) {
            return toString();
        }
        return "#d" + toString();
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeDouble(this.value);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.value = objectInput.readDouble();
    }
}
