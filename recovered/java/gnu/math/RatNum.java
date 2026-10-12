package gnu.math;

import com.airbnb.lottie.utils.Utils;
import com.google.appinventor.components.runtime.Form;
import java.math.BigDecimal;
import kotlin.time.DurationKt;

/* loaded from: classes2.dex */
public abstract class RatNum extends RealNum {
    public static final IntNum ten_exp_9 = IntNum.make(Utils.SECOND_IN_NANOS);

    public abstract IntNum denominator();

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean isExact() {
        return true;
    }

    public abstract IntNum numerator();

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Numeric
    public final RatNum toExact() {
        return this;
    }

    public static RatNum make(IntNum intNum, IntNum intNum2) {
        IntNum intNumGcd = IntNum.gcd(intNum, intNum2);
        if (intNum2.isNegative()) {
            intNumGcd = IntNum.neg(intNumGcd);
        }
        if (!intNumGcd.isOne()) {
            intNum = IntNum.quotient(intNum, intNumGcd);
            intNum2 = IntNum.quotient(intNum2, intNumGcd);
        }
        return intNum2.isOne() ? intNum : new IntFraction(intNum, intNum2);
    }

    public static RatNum valueOf(BigDecimal bigDecimal) throws NumberFormatException {
        IntNum intNumMake;
        RatNum ratNumValueOf = IntNum.valueOf(bigDecimal.unscaledValue().toString(), 10);
        int iScale = bigDecimal.scale();
        while (iScale >= 9) {
            ratNumValueOf = divide(ratNumValueOf, (RatNum) ten_exp_9);
            iScale -= 9;
        }
        while (iScale <= -9) {
            ratNumValueOf = times(ratNumValueOf, (RatNum) ten_exp_9);
            iScale += 9;
        }
        switch (iScale > 0 ? iScale : -iScale) {
            case 1:
                intNumMake = IntNum.make(10);
                break;
            case 2:
                intNumMake = IntNum.make(100);
                break;
            case 3:
                intNumMake = IntNum.make(1000);
                break;
            case 4:
                intNumMake = IntNum.make(10000);
                break;
            case 5:
                intNumMake = IntNum.make(Form.MAX_PERMISSION_NONCE);
                break;
            case 6:
                intNumMake = IntNum.make(DurationKt.NANOS_IN_MILLIS);
                break;
            case 7:
                intNumMake = IntNum.make(10000000);
                break;
            case 8:
                intNumMake = IntNum.make(100000000);
                break;
            default:
                return ratNumValueOf;
        }
        if (iScale > 0) {
            return divide(ratNumValueOf, (RatNum) intNumMake);
        }
        return times(ratNumValueOf, (RatNum) intNumMake);
    }

    public static RatNum asRatNumOrNull(Object obj) {
        if (obj instanceof RatNum) {
            return (RatNum) obj;
        }
        if (obj instanceof BigDecimal) {
            return valueOf((BigDecimal) obj);
        }
        return IntNum.asIntNumOrNull(obj);
    }

    @Override // gnu.math.RealNum, gnu.math.Complex, gnu.math.Numeric
    public boolean isZero() {
        return numerator().isZero();
    }

    @Override // gnu.math.RealNum
    public final RatNum rneg() {
        return neg(this);
    }

    public static RatNum infinity(int i) {
        return new IntFraction(IntNum.make(i), IntNum.zero());
    }

    public static int compare(RatNum ratNum, RatNum ratNum2) {
        return IntNum.compare(IntNum.times(ratNum.numerator(), ratNum2.denominator()), IntNum.times(ratNum2.numerator(), ratNum.denominator()));
    }

    public static boolean equals(RatNum ratNum, RatNum ratNum2) {
        return IntNum.equals(ratNum.numerator(), ratNum2.numerator()) && IntNum.equals(ratNum.denominator(), ratNum2.denominator());
    }

    @Override // gnu.math.Complex, gnu.math.Numeric
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof RatNum)) {
            return false;
        }
        return equals(this, (RatNum) obj);
    }

    public static RatNum add(RatNum ratNum, RatNum ratNum2, int i) {
        IntNum intNumNumerator = ratNum.numerator();
        IntNum intNumDenominator = ratNum.denominator();
        IntNum intNumNumerator2 = ratNum2.numerator();
        IntNum intNumDenominator2 = ratNum2.denominator();
        if (IntNum.equals(intNumDenominator, intNumDenominator2)) {
            return make(IntNum.add(intNumNumerator, intNumNumerator2, i), intNumDenominator);
        }
        return make(IntNum.add(IntNum.times(intNumDenominator2, intNumNumerator), IntNum.times(intNumNumerator2, intNumDenominator), i), IntNum.times(intNumDenominator, intNumDenominator2));
    }

    public static RatNum neg(RatNum ratNum) {
        IntNum intNumNumerator = ratNum.numerator();
        return make(IntNum.neg(intNumNumerator), ratNum.denominator());
    }

    public static RatNum times(RatNum ratNum, RatNum ratNum2) {
        return make(IntNum.times(ratNum.numerator(), ratNum2.numerator()), IntNum.times(ratNum.denominator(), ratNum2.denominator()));
    }

    public static RatNum divide(RatNum ratNum, RatNum ratNum2) {
        return make(IntNum.times(ratNum.numerator(), ratNum2.denominator()), IntNum.times(ratNum.denominator(), ratNum2.numerator()));
    }

    @Override // gnu.math.Numeric
    public Numeric power(IntNum intNum) {
        boolean z;
        boolean z2 = false;
        if (intNum.isNegative()) {
            intNum = IntNum.neg(intNum);
            z = true;
        } else {
            z = false;
        }
        if (intNum.words == null) {
            IntNum intNumPower = IntNum.power(numerator(), intNum.ival);
            IntNum intNumPower2 = IntNum.power(denominator(), intNum.ival);
            return z ? make(intNumPower2, intNumPower) : make(intNumPower, intNumPower2);
        }
        double dDoubleValue = doubleValue();
        if (dDoubleValue < 0.0d && intNum.isOdd()) {
            z2 = true;
        }
        double dPow = Math.pow(dDoubleValue, intNum.doubleValue());
        if (z) {
            dPow = 1.0d / dPow;
        }
        if (z2) {
            dPow = -dPow;
        }
        return new DFloNum(dPow);
    }

    @Override // gnu.math.RealNum
    public RealNum toInt(int i) {
        return IntNum.quotient(numerator(), denominator(), i);
    }

    @Override // gnu.math.RealNum
    public IntNum toExactInt(int i) {
        return IntNum.quotient(numerator(), denominator(), i);
    }

    public static RealNum rationalize(RealNum realNum, RealNum realNum2) {
        if (realNum.grt(realNum2)) {
            return simplest_rational2(realNum2, realNum);
        }
        if (!realNum2.grt(realNum)) {
            return realNum;
        }
        if (realNum.sign() > 0) {
            return simplest_rational2(realNum, realNum2);
        }
        if (realNum2.isNegative()) {
            return (RealNum) simplest_rational2((RealNum) realNum2.neg(), (RealNum) realNum.neg()).neg();
        }
        return IntNum.zero();
    }

    private static RealNum simplest_rational2(RealNum realNum, RealNum realNum2) {
        RealNum realNum3 = realNum.toInt(1);
        RealNum realNum4 = realNum2.toInt(1);
        if (!realNum.grt(realNum3)) {
            return realNum3;
        }
        if (realNum3.equals(realNum4)) {
            return (RealNum) realNum3.add(IntNum.one().div(simplest_rational2((RealNum) IntNum.one().div(realNum2.sub(realNum4)), (RealNum) IntNum.one().div(realNum.sub(realNum3)))), 1);
        }
        return (RealNum) realNum3.add(IntNum.one(), 1);
    }
}
