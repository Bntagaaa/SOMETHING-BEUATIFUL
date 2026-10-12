package gnu.math;

import java.math.BigDecimal;

/* loaded from: classes2.dex */
public abstract class RealNum extends Complex implements Comparable {
    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public abstract Numeric add(Object obj, int i);

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public abstract Numeric div(Object obj);

    public abstract boolean isNegative();

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public abstract Numeric mul(Object obj);

    @Override // gnu.math.Quantity
    public final RealNum re() {
        return this;
    }

    public abstract int sign();

    @Override // gnu.math.Quantity
    public final RealNum im() {
        return IntNum.zero();
    }

    public static RealNum asRealNumOrNull(Object obj) {
        if (obj instanceof RealNum) {
            return (RealNum) obj;
        }
        if ((obj instanceof Float) || (obj instanceof Double)) {
            return new DFloNum(((Number) obj).doubleValue());
        }
        return RatNum.asRatNumOrNull(obj);
    }

    public RealNum max(RealNum realNum) {
        boolean z = isExact() && realNum.isExact();
        if (grt(realNum)) {
            realNum = this;
        }
        return (z || !realNum.isExact()) ? realNum : new DFloNum(realNum.doubleValue());
    }

    public RealNum min(RealNum realNum) {
        boolean z = isExact() && realNum.isExact();
        if (!grt(realNum)) {
            realNum = this;
        }
        return (z || !realNum.isExact()) ? realNum : new DFloNum(realNum.doubleValue());
    }

    public static RealNum add(RealNum realNum, RealNum realNum2, int i) {
        return (RealNum) realNum.add(realNum2, i);
    }

    public static RealNum times(RealNum realNum, RealNum realNum2) {
        return (RealNum) realNum.mul(realNum2);
    }

    public static RealNum divide(RealNum realNum, RealNum realNum2) {
        return (RealNum) realNum.div(realNum2);
    }

    @Override // gnu.math.Complex, gnu.math.Quantity, gnu.math.Numeric
    public Numeric abs() {
        return isNegative() ? neg() : this;
    }

    public RealNum rneg() {
        return (RealNum) neg();
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean isZero() {
        return sign() == 0;
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public RatNum toExact() {
        return DFloNum.toExact(doubleValue());
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public RealNum toInexact() {
        return isExact() ? new DFloNum(doubleValue()) : this;
    }

    public static double toInt(double d, int i) {
        if (i == 1) {
            return Math.floor(d);
        }
        if (i != 2) {
            return i != 3 ? i != 4 ? d : Math.rint(d) : d < 0.0d ? Math.ceil(d) : Math.floor(d);
        }
        return Math.ceil(d);
    }

    public RealNum toInt(int i) {
        return new DFloNum(toInt(doubleValue(), i));
    }

    public IntNum toExactInt(int i) {
        return toExactInt(doubleValue(), i);
    }

    public static IntNum toExactInt(double d, int i) {
        return toExactInt(toInt(d, i));
    }

    public static IntNum toExactInt(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new ArithmeticException("cannot convert " + d + " to exact integer");
        }
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        boolean z = jDoubleToLongBits < 0;
        int i = ((int) (jDoubleToLongBits >> 52)) & 2047;
        long j = jDoubleToLongBits & 4503599627370495L;
        long j2 = i == 0 ? j << 1 : j | 4503599627370496L;
        if (i > 1075) {
            if (z) {
                j2 = -j2;
            }
            return IntNum.shift(IntNum.make(j2), i - 1075);
        }
        int i2 = 1075 - i;
        if (i2 > 53) {
            return IntNum.zero();
        }
        long j3 = j2 >> i2;
        if (z) {
            j3 = -j3;
        }
        return IntNum.make(j3);
    }

    @Override // gnu.math.Complex
    public Complex exp() {
        return new DFloNum(Math.exp(doubleValue()));
    }

    @Override // gnu.math.Complex
    public Complex log() {
        double dDoubleValue = doubleValue();
        if (dDoubleValue < 0.0d) {
            return DComplex.log(dDoubleValue, 0.0d);
        }
        return new DFloNum(Math.log(dDoubleValue));
    }

    public final Complex sin() {
        return new DFloNum(Math.sin(doubleValue()));
    }

    @Override // gnu.math.Complex
    public final Complex sqrt() {
        double dDoubleValue = doubleValue();
        if (dDoubleValue >= 0.0d) {
            return new DFloNum(Math.sqrt(dDoubleValue));
        }
        return DComplex.sqrt(dDoubleValue, 0.0d);
    }

    public static IntNum toScaledInt(double d, int i) {
        return toScaledInt(DFloNum.toExact(d), i);
    }

    public static IntNum toScaledInt(RatNum ratNum, int i) {
        if (i != 0) {
            IntNum intNumPower = IntNum.power(IntNum.ten(), i < 0 ? -i : i);
            IntNum intNumNumerator = ratNum.numerator();
            IntNum intNumDenominator = ratNum.denominator();
            if (i >= 0) {
                intNumNumerator = IntNum.times(intNumNumerator, intNumPower);
            } else {
                intNumDenominator = IntNum.times(intNumDenominator, intNumPower);
            }
            ratNum = RatNum.make(intNumNumerator, intNumDenominator);
        }
        return ratNum.toExactInt(4);
    }

    public IntNum toScaledInt(int i) {
        return toScaledInt(toExact(), i);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return compare(obj);
    }

    public BigDecimal asBigDecimal() {
        return new BigDecimal(doubleValue());
    }

    public static String toStringScientific(float f) {
        return toStringScientific(Float.toString(f));
    }

    public static String toStringScientific(double d) {
        return toStringScientific(Double.toString(d));
    }

    public static String toStringScientific(String str) {
        if (str.indexOf(69) >= 0) {
            return str;
        }
        int length = str.length();
        char cCharAt = str.charAt(length - 1);
        if (cCharAt == 'y' || cCharAt == 'N') {
            return str;
        }
        StringBuffer stringBuffer = new StringBuffer(length + 10);
        int stringScientific = toStringScientific(str, stringBuffer);
        stringBuffer.append('E');
        stringBuffer.append(stringScientific);
        return stringBuffer.toString();
    }

    public static int toStringScientific(String str, StringBuffer stringBuffer) {
        char cCharAt;
        int i = str.charAt(0) == '-' ? 1 : 0;
        if (i != 0) {
            stringBuffer.append('-');
        }
        int length = str.length();
        if (str.charAt(i) == '0') {
            int i2 = i;
            while (i2 != length) {
                int i3 = i2 + 1;
                char cCharAt2 = str.charAt(i2);
                if (cCharAt2 < '0' || cCharAt2 > '9' || (cCharAt2 == '0' && i3 != length)) {
                    i2 = i3;
                } else {
                    stringBuffer.append(cCharAt2);
                    stringBuffer.append('.');
                    iIndexOf = cCharAt2 != '0' ? (i - i3) + 2 : 0;
                    if (i3 == length) {
                        stringBuffer.append('0');
                    } else {
                        while (i3 < length) {
                            stringBuffer.append(str.charAt(i3));
                            i3++;
                        }
                    }
                }
            }
            stringBuffer.append("0");
        } else {
            iIndexOf = ((length - (i == 0 ? 1 : 2)) - length) + str.indexOf(46);
            int i4 = i + 1;
            stringBuffer.append(str.charAt(i));
            stringBuffer.append('.');
            while (i4 < length) {
                int i5 = i4 + 1;
                char cCharAt3 = str.charAt(i4);
                if (cCharAt3 != '.') {
                    stringBuffer.append(cCharAt3);
                }
                i4 = i5;
            }
        }
        int length2 = stringBuffer.length();
        int i6 = -1;
        while (true) {
            int i7 = length2 - 1;
            cCharAt = stringBuffer.charAt(i7);
            if (cCharAt != '0') {
                break;
            }
            length2 = i7;
            i6 = length2;
        }
        if (cCharAt == '.') {
            i6 = length2 + 1;
        }
        if (i6 >= 0) {
            stringBuffer.setLength(i6);
        }
        return iIndexOf;
    }

    public static String toStringDecimal(String str) {
        int iIndexOf = str.indexOf(69);
        if (iIndexOf >= 0) {
            int length = str.length();
            char cCharAt = str.charAt(length - 1);
            if (cCharAt != 'y' && cCharAt != 'N') {
                StringBuffer stringBuffer = new StringBuffer(length + 10);
                boolean z = str.charAt(0) == '-';
                if (str.charAt(iIndexOf + 1) != '-') {
                    throw new Error("not implemented: toStringDecimal given non-negative exponent: ".concat(str));
                }
                int iCharAt = 0;
                for (int i = iIndexOf + 2; i < length; i++) {
                    iCharAt = (iCharAt * 10) + (str.charAt(i) - '0');
                }
                if (z) {
                    stringBuffer.append('-');
                }
                stringBuffer.append("0.");
                while (true) {
                    iCharAt--;
                    if (iCharAt <= 0) {
                        break;
                    }
                    stringBuffer.append('0');
                }
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 == 'E') {
                        return stringBuffer.toString();
                    }
                    if (((cCharAt2 != '-') & (cCharAt2 != '.')) && (cCharAt2 != '0' || i3 < iIndexOf)) {
                        stringBuffer.append(cCharAt2);
                    }
                    i2 = i3;
                }
            }
        }
        return str;
    }
}
