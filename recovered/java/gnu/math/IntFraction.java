package gnu.math;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;

/* loaded from: classes2.dex */
public class IntFraction extends RatNum implements Externalizable {
    IntNum den;
    IntNum num;

    public IntFraction() {
    }

    public IntFraction(IntNum intNum, IntNum intNum2) {
        this.num = intNum;
        this.den = intNum2;
    }

    @Override // gnu.math.RatNum
    public final IntNum numerator() {
        return this.num;
    }

    @Override // gnu.math.RatNum
    public final IntNum denominator() {
        return this.den;
    }

    @Override // gnu.math.RealNum
    public final boolean isNegative() {
        return this.num.isNegative();
    }

    @Override // gnu.math.RealNum
    public final int sign() {
        return this.num.sign();
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public final int compare(Object obj) {
        if (obj instanceof RatNum) {
            return RatNum.compare((RatNum) this, (RatNum) obj);
        }
        return ((RealNum) obj).compareReversed(this);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public int compareReversed(Numeric numeric) {
        return RatNum.compare((RatNum) numeric, (RatNum) this);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof RatNum) {
            return RatNum.add((RatNum) this, (RatNum) obj, i);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).addReversed(this, i);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric addReversed(Numeric numeric, int i) {
        if (!(numeric instanceof RatNum)) {
            throw new IllegalArgumentException();
        }
        return RatNum.add((RatNum) numeric, (RatNum) this, i);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof RatNum) {
            return RatNum.times((RatNum) this, (RatNum) obj);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric mulReversed(Numeric numeric) {
        if (!(numeric instanceof RatNum)) {
            throw new IllegalArgumentException();
        }
        return RatNum.times((RatNum) numeric, (RatNum) this);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof RatNum) {
            return RatNum.divide((RatNum) this, (RatNum) obj);
        }
        if (!(obj instanceof Numeric)) {
            throw new IllegalArgumentException();
        }
        return ((Numeric) obj).divReversed(this);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric divReversed(Numeric numeric) {
        if (!(numeric instanceof RatNum)) {
            throw new IllegalArgumentException();
        }
        return RatNum.divide((RatNum) numeric, (RatNum) this);
    }

    public static IntFraction neg(IntFraction intFraction) {
        return new IntFraction(IntNum.neg(intFraction.numerator()), intFraction.denominator());
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric neg() {
        return neg(this);
    }

    @Override // gnu.math.Complex, gnu.math.Numeric, java.lang.Number
    public long longValue() {
        return toExactInt(4).longValue();
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, java.lang.Number
    public double doubleValue() {
        int i;
        boolean zIsNegative = this.num.isNegative();
        if (this.den.isZero()) {
            if (zIsNegative) {
                return Double.NEGATIVE_INFINITY;
            }
            return this.num.isZero() ? Double.NaN : Double.POSITIVE_INFINITY;
        }
        IntNum intNumShift = this.num;
        if (zIsNegative) {
            intNumShift = IntNum.neg(intNumShift);
        }
        int iIntLength = intNumShift.intLength();
        int iIntLength2 = this.den.intLength() + 54;
        if (iIntLength < iIntLength2) {
            int i2 = iIntLength2 - iIntLength;
            intNumShift = IntNum.shift(intNumShift, i2);
            i = -i2;
        } else {
            i = 0;
        }
        IntNum intNum = new IntNum();
        IntNum.divide(intNumShift, this.den, intNum, new IntNum(), 3);
        return intNum.canonicalize().roundToDouble(i, zIsNegative, !r4.canonicalize().isZero());
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public String toString(int i) {
        return this.num.toString(i) + '/' + this.den.toString(i);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeObject(this.num);
        objectOutput.writeObject(this.den);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.num = (IntNum) objectInput.readObject();
        this.den = (IntNum) objectInput.readObject();
    }
}
