package gnu.math;

/* loaded from: classes2.dex */
public abstract class Complex extends Quantity {
    private static CComplex imMinusOne;
    private static CComplex imOne;

    @Override // gnu.math.Quantity
    public Complex number() {
        return this;
    }

    @Override // gnu.math.Numeric
    public boolean isExact() {
        return re().isExact() && im().isExact();
    }

    @Override // gnu.math.Numeric
    public Complex toExact() {
        RealNum realNumRe = re();
        RealNum realNumIm = im();
        RatNum exact = realNumRe.toExact();
        RatNum exact2 = realNumIm.toExact();
        return (exact == realNumRe && exact2 == realNumIm) ? this : new CComplex(exact, exact2);
    }

    @Override // gnu.math.Numeric
    public Complex toInexact() {
        return isExact() ? this : new DComplex(re().doubleValue(), im().doubleValue());
    }

    public static CComplex imOne() {
        if (imOne == null) {
            imOne = new CComplex(IntNum.zero(), IntNum.one());
        }
        return imOne;
    }

    public static CComplex imMinusOne() {
        if (imMinusOne == null) {
            imMinusOne = new CComplex(IntNum.zero(), IntNum.minusOne());
        }
        return imMinusOne;
    }

    @Override // gnu.math.Quantity, java.lang.Number
    public double doubleValue() {
        return re().doubleValue();
    }

    @Override // gnu.math.Quantity
    public double doubleImagValue() {
        return im().doubleValue();
    }

    public final double doubleRealValue() {
        return doubleValue();
    }

    @Override // gnu.math.Numeric, java.lang.Number
    public long longValue() {
        return re().longValue();
    }

    public static Complex make(RealNum realNum, RealNum realNum2) {
        if (realNum2.isZero()) {
            return realNum;
        }
        if (!realNum.isExact() || !realNum2.isExact()) {
            return new DComplex(realNum.doubleValue(), realNum2.doubleValue());
        }
        return new CComplex(realNum, realNum2);
    }

    public static Complex make(double d, double d2) {
        if (d2 == 0.0d) {
            return new DFloNum(d);
        }
        return new DComplex(d, d2);
    }

    public static DComplex polar(double d, double d2) {
        return new DComplex(Math.cos(d2) * d, Math.sin(d2) * d);
    }

    public static DComplex polar(RealNum realNum, RealNum realNum2) {
        return polar(realNum.doubleValue(), realNum2.doubleValue());
    }

    public static Complex power(Complex complex, Complex complex2) {
        if (complex2 instanceof IntNum) {
            return (Complex) complex.power((IntNum) complex2);
        }
        double dDoubleRealValue = complex.doubleRealValue();
        double dDoubleImagValue = complex.doubleImagValue();
        double dDoubleRealValue2 = complex2.doubleRealValue();
        double dDoubleImagValue2 = complex2.doubleImagValue();
        if (dDoubleImagValue == 0.0d && dDoubleImagValue2 == 0.0d && (dDoubleRealValue >= 0.0d || Double.isInfinite(dDoubleRealValue) || Double.isNaN(dDoubleRealValue))) {
            return new DFloNum(Math.pow(dDoubleRealValue, dDoubleRealValue2));
        }
        return DComplex.power(dDoubleRealValue, dDoubleImagValue, dDoubleRealValue2, dDoubleImagValue2);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric abs() {
        return new DFloNum(Math.hypot(doubleRealValue(), doubleImagValue()));
    }

    public RealNum angle() {
        return new DFloNum(Math.atan2(doubleImagValue(), doubleRealValue()));
    }

    public static boolean equals(Complex complex, Complex complex2) {
        return complex.re().equals(complex2.re()) && complex.im().equals(complex.im());
    }

    @Override // gnu.math.Numeric
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Complex)) {
            return false;
        }
        return equals(this, (Complex) obj);
    }

    public static int compare(Complex complex, Complex complex2) {
        int iCompare = complex.im().compare(complex2.im());
        return iCompare != 0 ? iCompare : complex.re().compare(complex2.re());
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public int compare(Object obj) {
        if (!(obj instanceof Complex)) {
            return ((Numeric) obj).compareReversed(this);
        }
        return compare(this, (Complex) obj);
    }

    @Override // gnu.math.Numeric
    public boolean isZero() {
        return re().isZero() && im().isZero();
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public String toString(int i) {
        if (im().isZero()) {
            return re().toString(i);
        }
        String strConcat = im().toString(i) + "i";
        if (strConcat.charAt(0) != '-') {
            strConcat = "+".concat(strConcat);
        }
        if (re().isZero()) {
            return strConcat;
        }
        return re().toString(i) + strConcat;
    }

    public static Complex neg(Complex complex) {
        return make(complex.re().rneg(), complex.im().rneg());
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric neg() {
        return neg(this);
    }

    public static Complex add(Complex complex, Complex complex2, int i) {
        return make(RealNum.add(complex.re(), complex2.re(), i), RealNum.add(complex.im(), complex2.im(), i));
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric add(Object obj, int i) {
        if (obj instanceof Complex) {
            return add(this, (Complex) obj, i);
        }
        return ((Numeric) obj).addReversed(this, i);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric addReversed(Numeric numeric, int i) {
        if (numeric instanceof Complex) {
            return add((Complex) numeric, this, i);
        }
        throw new IllegalArgumentException();
    }

    public static Complex times(Complex complex, Complex complex2) {
        RealNum realNumRe = complex.re();
        RealNum realNumIm = complex.im();
        RealNum realNumRe2 = complex2.re();
        RealNum realNumIm2 = complex2.im();
        return make(RealNum.add(RealNum.times(realNumRe, realNumRe2), RealNum.times(realNumIm, realNumIm2), -1), RealNum.add(RealNum.times(realNumRe, realNumIm2), RealNum.times(realNumIm, realNumRe2), 1));
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric mul(Object obj) {
        if (obj instanceof Complex) {
            return times(this, (Complex) obj);
        }
        return ((Numeric) obj).mulReversed(this);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric mulReversed(Numeric numeric) {
        if (numeric instanceof Complex) {
            return times((Complex) numeric, this);
        }
        throw new IllegalArgumentException();
    }

    public static Complex divide(Complex complex, Complex complex2) {
        if (!complex.isExact() || !complex2.isExact()) {
            return DComplex.div(complex.doubleRealValue(), complex.doubleImagValue(), complex2.doubleRealValue(), complex2.doubleImagValue());
        }
        RealNum realNumRe = complex.re();
        RealNum realNumIm = complex.im();
        RealNum realNumRe2 = complex2.re();
        RealNum realNumIm2 = complex2.im();
        RealNum realNumAdd = RealNum.add(RealNum.times(realNumRe2, realNumRe2), RealNum.times(realNumIm2, realNumIm2), 1);
        return make(RealNum.divide(RealNum.add(RealNum.times(realNumRe, realNumRe2), RealNum.times(realNumIm, realNumIm2), 1), realNumAdd), RealNum.divide(RealNum.add(RealNum.times(realNumIm, realNumRe2), RealNum.times(realNumRe, realNumIm2), -1), realNumAdd));
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric div(Object obj) {
        if (obj instanceof Complex) {
            return divide(this, (Complex) obj);
        }
        return ((Numeric) obj).divReversed(this);
    }

    @Override // gnu.math.Quantity, gnu.math.Numeric
    public Numeric divReversed(Numeric numeric) {
        if (numeric instanceof Complex) {
            return divide((Complex) numeric, this);
        }
        throw new IllegalArgumentException();
    }

    public Complex exp() {
        return polar(Math.exp(doubleRealValue()), doubleImagValue());
    }

    public Complex log() {
        return DComplex.log(doubleRealValue(), doubleImagValue());
    }

    public Complex sqrt() {
        return DComplex.sqrt(doubleRealValue(), doubleImagValue());
    }
}
