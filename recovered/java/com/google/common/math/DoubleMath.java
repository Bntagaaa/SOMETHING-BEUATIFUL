package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class DoubleMath {

    /* renamed from: a, reason: collision with root package name */
    public static final double f4694a = Math.log(2.0d);

    /* renamed from: b, reason: collision with root package name */
    public static final double[] f4695b = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    public static double a(double d, RoundingMode roundingMode) {
        if (!com.google.common.math.a.c(d)) {
            throw new ArithmeticException("input is infinite or NaN");
        }
        switch (a.f4696a[roundingMode.ordinal()]) {
            case 1:
                b.i(isMathematicalInteger(d));
                return d;
            case 2:
                return (d >= 0.0d || isMathematicalInteger(d)) ? d : ((long) d) - 1;
            case 3:
                return (d <= 0.0d || isMathematicalInteger(d)) ? d : ((long) d) + 1;
            case 4:
                return d;
            case 5:
                if (isMathematicalInteger(d)) {
                    return d;
                }
                return ((long) d) + (d > 0.0d ? 1 : -1);
            case 6:
                return Math.rint(d);
            case 7:
                double dRint = Math.rint(d);
                return Math.abs(d - dRint) == 0.5d ? Math.copySign(0.5d, d) + d : dRint;
            case 8:
                double dRint2 = Math.rint(d);
                return Math.abs(d - dRint2) == 0.5d ? d : dRint2;
            default:
                throw new AssertionError();
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4696a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f4696a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4696a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4696a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4696a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4696a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4696a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4696a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4696a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @GwtIncompatible
    public static int roundToInt(double d, RoundingMode roundingMode) {
        double dA = a(d, roundingMode);
        b.a((dA > -2.147483649E9d) & (dA < 2.147483648E9d), d, roundingMode);
        return (int) dA;
    }

    @GwtIncompatible
    public static long roundToLong(double d, RoundingMode roundingMode) {
        double dA = a(d, roundingMode);
        b.a(((-9.223372036854776E18d) - dA < 1.0d) & (dA < 9.223372036854776E18d), d, roundingMode);
        return (long) dA;
    }

    @GwtIncompatible
    public static BigInteger roundToBigInteger(double d, RoundingMode roundingMode) {
        double dA = a(d, roundingMode);
        if ((dA < 9.223372036854776E18d) & ((-9.223372036854776E18d) - dA < 1.0d)) {
            return BigInteger.valueOf((long) dA);
        }
        BigInteger bigIntegerShiftLeft = BigInteger.valueOf(com.google.common.math.a.b(dA)).shiftLeft(Math.getExponent(dA) - 52);
        return dA < 0.0d ? bigIntegerShiftLeft.negate() : bigIntegerShiftLeft;
    }

    @GwtIncompatible
    public static boolean isPowerOfTwo(double d) {
        if (d > 0.0d && com.google.common.math.a.c(d)) {
            long jB = com.google.common.math.a.b(d);
            if ((jB & (jB - 1)) == 0) {
                return true;
            }
        }
        return false;
    }

    public static double log2(double d) {
        return Math.log(d) / f4694a;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @com.google.common.annotations.GwtIncompatible
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log2(double r6, java.math.RoundingMode r8) {
        /*
            r0 = 0
            r2 = 0
            r3 = 1
            int r4 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r4 <= 0) goto L10
            boolean r0 = com.google.common.math.a.c(r6)
            if (r0 == 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            java.lang.String r1 = "x must be positive and finite"
            com.google.common.base.Preconditions.checkArgument(r0, r1)
            int r0 = java.lang.Math.getExponent(r6)
            int r1 = java.lang.Math.getExponent(r6)
            r4 = -1022(0xfffffffffffffc02, float:NaN)
            if (r1 < r4) goto L72
            int[] r1 = com.google.common.math.DoubleMath.a.f4696a
            int r8 = r8.ordinal()
            r8 = r1[r8]
            switch(r8) {
                case 1: goto L67;
                case 2: goto L6e;
                case 3: goto L60;
                case 4: goto L58;
                case 5: goto L4e;
                case 6: goto L33;
                case 7: goto L33;
                case 8: goto L33;
                default: goto L2d;
            }
        L2d:
            java.lang.AssertionError r6 = new java.lang.AssertionError
            r6.<init>()
            throw r6
        L33:
            long r6 = java.lang.Double.doubleToRawLongBits(r6)
            r4 = 4503599627370495(0xfffffffffffff, double:2.225073858507201E-308)
            long r6 = r6 & r4
            r4 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            long r6 = r6 | r4
            double r6 = java.lang.Double.longBitsToDouble(r6)
            double r6 = r6 * r6
            r4 = 4611686018427387904(0x4000000000000000, double:2.0)
            int r8 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r8 <= 0) goto L6e
            r2 = 1
            goto L6e
        L4e:
            if (r0 < 0) goto L51
            r2 = 1
        L51:
            boolean r6 = isPowerOfTwo(r6)
        L55:
            r6 = r6 ^ r3
            r2 = r2 & r6
            goto L6e
        L58:
            if (r0 >= 0) goto L5b
            r2 = 1
        L5b:
            boolean r6 = isPowerOfTwo(r6)
            goto L55
        L60:
            boolean r6 = isPowerOfTwo(r6)
            r2 = r6 ^ 1
            goto L6e
        L67:
            boolean r6 = isPowerOfTwo(r6)
            com.google.common.math.b.i(r6)
        L6e:
            if (r2 == 0) goto L71
            int r0 = r0 + r3
        L71:
            return r0
        L72:
            r0 = 4841369599423283200(0x4330000000000000, double:4.503599627370496E15)
            double r6 = r6 * r0
            int r6 = log2(r6, r8)
            int r6 = r6 + (-52)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.DoubleMath.log2(double, java.math.RoundingMode):int");
    }

    @GwtIncompatible
    public static boolean isMathematicalInteger(double d) {
        if (com.google.common.math.a.c(d)) {
            return d == 0.0d || 52 - Long.numberOfTrailingZeros(com.google.common.math.a.b(d)) <= Math.getExponent(d);
        }
        return false;
    }

    public static double factorial(int i) {
        b.d(i, "n");
        if (i > 170) {
            return Double.POSITIVE_INFINITY;
        }
        double d = 1.0d;
        for (int i2 = (i & (-16)) + 1; i2 <= i; i2++) {
            d *= i2;
        }
        return d * f4695b[i >> 4];
    }

    public static boolean fuzzyEquals(double d, double d2, double d3) {
        if (d3 >= 0.0d) {
            if (Math.copySign(d - d2, 1.0d) <= d3 || d == d2) {
                return true;
            }
            return Double.isNaN(d) && Double.isNaN(d2);
        }
        throw new IllegalArgumentException("tolerance (" + d3 + ") must be >= 0");
    }

    public static int fuzzyCompare(double d, double d2, double d3) {
        if (fuzzyEquals(d, d2, d3)) {
            return 0;
        }
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        return Booleans.compare(Double.isNaN(d), Double.isNaN(d2));
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0, "Cannot take mean of 0 values");
        double d = dArr[0];
        Preconditions.checkArgument(com.google.common.math.a.c(d));
        long j = 1;
        for (int i = 1; i < dArr.length; i++) {
            Preconditions.checkArgument(com.google.common.math.a.c(dArr[i]));
            j++;
            d += (dArr[i] - d) / j;
        }
        return d;
    }

    @Deprecated
    public static double mean(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0, "Cannot take mean of 0 values");
        long j = 0;
        for (int i : iArr) {
            j += i;
        }
        return j / iArr.length;
    }

    @Deprecated
    public static double mean(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0, "Cannot take mean of 0 values");
        double d = jArr[0];
        long j = 1;
        for (int i = 1; i < jArr.length; i++) {
            j++;
            d += (jArr[i] - d) / j;
        }
        return d;
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(Iterable<? extends Number> iterable) {
        return mean(iterable.iterator());
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext(), "Cannot take mean of 0 values");
        double dDoubleValue = it.next().doubleValue();
        Preconditions.checkArgument(com.google.common.math.a.c(dDoubleValue));
        long j = 1;
        while (it.hasNext()) {
            double dDoubleValue2 = it.next().doubleValue();
            Preconditions.checkArgument(com.google.common.math.a.c(dDoubleValue2));
            j++;
            dDoubleValue += (dDoubleValue2 - dDoubleValue) / j;
        }
        return dDoubleValue;
    }

    private DoubleMath() {
    }
}
