package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class BigIntegerMath {

    /* renamed from: a, reason: collision with root package name */
    public static final BigInteger f4691a = new BigInteger("16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a", 16);

    /* renamed from: b, reason: collision with root package name */
    public static final double f4692b = Math.log(10.0d);
    public static final double c = Math.log(2.0d);

    @Beta
    public static BigInteger ceilingPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.CEILING));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @GwtIncompatible
    public static BigInteger sqrt(BigInteger bigInteger, RoundingMode roundingMode) {
        BigInteger bigIntegerShiftLeft;
        if (bigInteger.signum() < 0) {
            throw new IllegalArgumentException("x (" + bigInteger + ") must be >= 0");
        }
        if (bigInteger.bitLength() <= 63) {
            return BigInteger.valueOf(LongMath.sqrt(bigInteger.longValue(), roundingMode));
        }
        int iLog2 = log2(bigInteger, RoundingMode.FLOOR);
        if (iLog2 < 1023) {
            bigIntegerShiftLeft = b(bigInteger);
        } else {
            int i = (iLog2 - 52) & (-2);
            bigIntegerShiftLeft = b(bigInteger.shiftRight(i)).shiftLeft(i >> 1);
        }
        BigInteger bigIntegerShiftRight = bigIntegerShiftLeft.add(bigInteger.divide(bigIntegerShiftLeft)).shiftRight(1);
        if (!bigIntegerShiftLeft.equals(bigIntegerShiftRight)) {
            do {
                bigIntegerShiftLeft = bigIntegerShiftRight;
                bigIntegerShiftRight = bigIntegerShiftLeft.add(bigInteger.divide(bigIntegerShiftLeft)).shiftRight(1);
            } while (bigIntegerShiftRight.compareTo(bigIntegerShiftLeft) < 0);
        }
        switch (a.f4693a[roundingMode.ordinal()]) {
            case 1:
                b.i(bigIntegerShiftLeft.pow(2).equals(bigInteger));
                return bigIntegerShiftLeft;
            case 2:
            case 3:
                return bigIntegerShiftLeft;
            case 4:
            case 5:
                int iIntValue = bigIntegerShiftLeft.intValue();
                if (iIntValue * iIntValue != bigInteger.intValue() || !bigIntegerShiftLeft.pow(2).equals(bigInteger)) {
                    return bigIntegerShiftLeft.add(BigInteger.ONE);
                }
                return bigIntegerShiftLeft;
            case 6:
            case 7:
            case 8:
                if (bigIntegerShiftLeft.pow(2).add(bigIntegerShiftLeft).compareTo(bigInteger) < 0) {
                    return bigIntegerShiftLeft.add(BigInteger.ONE);
                }
                return bigIntegerShiftLeft;
            default:
                throw new AssertionError();
        }
    }

    @Beta
    public static BigInteger floorPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.FLOOR));
    }

    public static boolean isPowerOfTwo(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        return bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() - 1;
    }

    public static BigInteger b(BigInteger bigInteger) {
        double dLongBitsToDouble;
        BigInteger bigIntegerAbs = bigInteger.abs();
        int iBitLength = bigIntegerAbs.bitLength();
        int i = iBitLength - 1;
        if (i < 63) {
            dLongBitsToDouble = bigInteger.longValue();
        } else if (i > 1023) {
            dLongBitsToDouble = bigInteger.signum() * Double.POSITIVE_INFINITY;
        } else {
            int i2 = iBitLength - 54;
            long jLongValue = bigIntegerAbs.shiftRight(i2).longValue();
            long j = jLongValue >> 1;
            long j2 = 4503599627370495L & j;
            if ((jLongValue & 1) != 0 && ((j & 1) != 0 || bigIntegerAbs.getLowestSetBit() < i2)) {
                j2++;
            }
            dLongBitsToDouble = Double.longBitsToDouble((((iBitLength + 1022) << 52) + j2) | (bigInteger.signum() & Long.MIN_VALUE));
        }
        return DoubleMath.roundToBigInteger(Math.sqrt(dLongBitsToDouble), RoundingMode.HALF_EVEN);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004d A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int log2(java.math.BigInteger r3, java.math.RoundingMode r4) {
        /*
            java.lang.Object r0 = com.google.common.base.Preconditions.checkNotNull(r3)
            java.math.BigInteger r0 = (java.math.BigInteger) r0
            com.google.common.math.b.h(r0)
            int r0 = r3.bitLength()
            int r1 = r0 + (-1)
            int[] r2 = com.google.common.math.BigIntegerMath.a.f4693a
            int r4 = r4.ordinal()
            r4 = r2[r4]
            switch(r4) {
                case 1: goto L4e;
                case 2: goto L4d;
                case 3: goto L4d;
                case 4: goto L45;
                case 5: goto L45;
                case 6: goto L20;
                case 7: goto L20;
                case 8: goto L20;
                default: goto L1a;
            }
        L1a:
            java.lang.AssertionError r3 = new java.lang.AssertionError
            r3.<init>()
            throw r3
        L20:
            r4 = 256(0x100, float:3.59E-43)
            if (r1 >= r4) goto L33
            java.math.BigInteger r4 = com.google.common.math.BigIntegerMath.f4691a
            int r2 = 256 - r1
            java.math.BigInteger r4 = r4.shiftRight(r2)
            int r3 = r3.compareTo(r4)
            if (r3 > 0) goto L4c
            goto L4d
        L33:
            r4 = 2
            java.math.BigInteger r3 = r3.pow(r4)
            int r3 = r3.bitLength()
            int r3 = r3 + (-1)
            int r4 = r1 * 2
            int r4 = r4 + 1
            if (r3 >= r4) goto L4c
            goto L4d
        L45:
            boolean r3 = isPowerOfTwo(r3)
            if (r3 == 0) goto L4c
            goto L4d
        L4c:
            return r0
        L4d:
            return r1
        L4e:
            boolean r3 = isPowerOfTwo(r3)
            com.google.common.math.b.i(r3)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.math.BigIntegerMath.log2(java.math.BigInteger, java.math.RoundingMode):int");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4693a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f4693a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4693a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4693a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4693a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4693a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4693a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4693a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4693a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @GwtIncompatible
    public static int log10(BigInteger bigInteger, RoundingMode roundingMode) {
        int i;
        int iCompareTo;
        b.h(bigInteger);
        if (bigInteger.bitLength() <= 63) {
            return LongMath.log10(bigInteger.longValue(), roundingMode);
        }
        int iLog2 = (int) ((log2(bigInteger, RoundingMode.FLOOR) * c) / f4692b);
        BigInteger bigInteger2 = BigInteger.TEN;
        BigInteger bigIntegerPow = bigInteger2.pow(iLog2);
        int iCompareTo2 = bigIntegerPow.compareTo(bigInteger);
        if (iCompareTo2 > 0) {
            do {
                iLog2--;
                bigIntegerPow = bigIntegerPow.divide(BigInteger.TEN);
                iCompareTo = bigIntegerPow.compareTo(bigInteger);
            } while (iCompareTo > 0);
        } else {
            BigInteger bigIntegerMultiply = bigInteger2.multiply(bigIntegerPow);
            int iCompareTo3 = bigIntegerMultiply.compareTo(bigInteger);
            while (true) {
                int i2 = iCompareTo3;
                i = iCompareTo2;
                iCompareTo2 = i2;
                if (iCompareTo2 > 0) {
                    break;
                }
                iLog2++;
                BigInteger bigIntegerMultiply2 = BigInteger.TEN.multiply(bigIntegerMultiply);
                iCompareTo3 = bigIntegerMultiply2.compareTo(bigInteger);
                bigIntegerPow = bigIntegerMultiply;
                bigIntegerMultiply = bigIntegerMultiply2;
            }
            iCompareTo = i;
        }
        switch (a.f4693a[roundingMode.ordinal()]) {
            case 1:
                b.i(iCompareTo == 0);
                return iLog2;
            case 2:
            case 3:
                return iLog2;
            case 4:
            case 5:
                return bigIntegerPow.equals(bigInteger) ? iLog2 : iLog2 + 1;
            case 6:
            case 7:
            case 8:
                return bigInteger.pow(2).compareTo(bigIntegerPow.pow(2).multiply(BigInteger.TEN)) <= 0 ? iLog2 : iLog2 + 1;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible
    public static BigInteger divide(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    public static BigInteger factorial(int i) {
        b.d(i, "n");
        long[] jArr = LongMath.d;
        if (i < 21) {
            return BigInteger.valueOf(jArr[i]);
        }
        RoundingMode roundingMode = RoundingMode.CEILING;
        ArrayList arrayList = new ArrayList(IntMath.divide(IntMath.log2(i, roundingMode) * i, 64, roundingMode));
        long j = jArr[20];
        int iNumberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j2 = j >> iNumberOfTrailingZeros;
        RoundingMode roundingMode2 = RoundingMode.FLOOR;
        int iLog2 = LongMath.log2(j2, roundingMode2) + 1;
        long j3 = 21;
        int iLog22 = LongMath.log2(j3, roundingMode2);
        int i2 = iLog22 + 1;
        int i3 = 1 << iLog22;
        while (j3 <= i) {
            if ((i3 & j3) != 0) {
                i3 <<= 1;
                i2++;
            }
            int iNumberOfTrailingZeros2 = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> iNumberOfTrailingZeros2;
            iNumberOfTrailingZeros += iNumberOfTrailingZeros2;
            if ((i2 - iNumberOfTrailingZeros2) + iLog2 >= 64) {
                arrayList.add(BigInteger.valueOf(j2));
                j2 = 1;
            }
            j2 *= j4;
            iLog2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
            j3++;
        }
        if (j2 > 1) {
            arrayList.add(BigInteger.valueOf(j2));
        }
        return a(arrayList, 0, arrayList.size()).shiftLeft(iNumberOfTrailingZeros);
    }

    public static BigInteger a(ArrayList arrayList, int i, int i2) {
        int i3 = i2 - i;
        if (i3 == 0) {
            return BigInteger.ONE;
        }
        if (i3 == 1) {
            return (BigInteger) arrayList.get(i);
        }
        if (i3 == 2) {
            return ((BigInteger) arrayList.get(i)).multiply((BigInteger) arrayList.get(i + 1));
        }
        if (i3 == 3) {
            return ((BigInteger) arrayList.get(i)).multiply((BigInteger) arrayList.get(i + 1)).multiply((BigInteger) arrayList.get(i + 2));
        }
        int i4 = (i2 + i) >>> 1;
        return a(arrayList, i, i4).multiply(a(arrayList, i4, i2));
    }

    public static BigInteger binomial(int i, int i2) {
        int i3;
        b.d(i, "n");
        b.d(i2, "k");
        int i4 = 1;
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 < 34 && i <= LongMath.e[i2]) {
            return BigInteger.valueOf(LongMath.binomial(i, i2));
        }
        BigInteger bigIntegerDivide = BigInteger.ONE;
        long j = i;
        int iLog2 = LongMath.log2(j, RoundingMode.CEILING);
        long j2 = 1;
        while (true) {
            int i5 = iLog2;
            while (i4 < i2) {
                i3 = i - i4;
                i4++;
                i5 += iLog2;
                if (i5 >= 63) {
                    break;
                }
                j *= i3;
                j2 *= i4;
            }
            return bigIntegerDivide.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            bigIntegerDivide = bigIntegerDivide.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
            j = i3;
            j2 = i4;
        }
    }

    private BigIntegerMath() {
    }
}
