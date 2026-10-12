package com.google.common.math;

import com.airbnb.lottie.utils.Utils;
import com.google.appinventor.components.runtime.Form;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.math.RoundingMode;
import kotlin.time.DurationKt;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class IntMath {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f4697a = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4698b = {1, 10, 100, 1000, 10000, Form.MAX_PERMISSION_NONCE, DurationKt.NANOS_IN_MILLIS, 10000000, 100000000, Utils.SECOND_IN_NANOS};
    public static final int[] c = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    public static final int[] d = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};
    public static final int[] e = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    public static int a(int i, int i2) {
        return (~(~(i - i2))) >>> 31;
    }

    public static boolean isPowerOfTwo(int i) {
        return (i > 0) & ((i & (i + (-1))) == 0);
    }

    public static int mean(int i, int i2) {
        return (i & i2) + ((i ^ i2) >> 1);
    }

    @Beta
    public static int ceilingPowerOfTwo(int i) {
        b.f(i);
        if (i <= 1073741824) {
            return 1 << (-Integer.numberOfLeadingZeros(i - 1));
        }
        throw new ArithmeticException(_COROUTINE.a.e(i, "ceilingPowerOfTwo(", ") not representable as an int"));
    }

    @Beta
    public static int floorPowerOfTwo(int i) {
        b.f(i);
        return Integer.highestOneBit(i);
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4699a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            f4699a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4699a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4699a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4699a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4699a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4699a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4699a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4699a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static int log2(int i, RoundingMode roundingMode) {
        b.f(i);
        switch (a.f4699a[roundingMode.ordinal()]) {
            case 1:
                b.i(isPowerOfTwo(i));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return a((-1257966797) >>> iNumberOfLeadingZeros, i) + (31 - iNumberOfLeadingZeros);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    @GwtIncompatible
    public static int log10(int i, RoundingMode roundingMode) {
        int iA;
        b.f(i);
        byte b2 = f4697a[Integer.numberOfLeadingZeros(i)];
        int[] iArr = f4698b;
        int iA2 = b2 - a(i, iArr[b2]);
        int i2 = iArr[iA2];
        switch (a.f4699a[roundingMode.ordinal()]) {
            case 1:
                b.i(i == i2);
                return iA2;
            case 2:
            case 3:
                return iA2;
            case 4:
            case 5:
                iA = a(i2, i);
                break;
            case 6:
            case 7:
            case 8:
                iA = a(c[iA2], i);
                break;
            default:
                throw new AssertionError();
        }
        return iA + iA2;
    }

    @GwtIncompatible
    public static int pow(int i, int i2) {
        b.d(i2, "exponent");
        if (i == -2) {
            if (i2 < 32) {
                return (i2 & 1) == 0 ? 1 << i2 : -(1 << i2);
            }
            return 0;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        if (i2 < 32) {
                            return 1 << i2;
                        }
                        return 0;
                    }
                    int i3 = 1;
                    while (i2 != 0) {
                        if (i2 == 1) {
                            return i * i3;
                        }
                        i3 *= (i2 & 1) == 0 ? 1 : i;
                        i *= i;
                        i2 >>= 1;
                    }
                    return i3;
                }
            } else if (i2 != 0) {
                return 0;
            }
        } else if ((i2 & 1) != 0) {
            return -1;
        }
        return 1;
    }

    @GwtIncompatible
    public static int sqrt(int i, RoundingMode roundingMode) {
        int iA;
        b.d(i, "x");
        int iSqrt = (int) Math.sqrt(i);
        switch (a.f4699a[roundingMode.ordinal()]) {
            case 1:
                b.i(iSqrt * iSqrt == i);
                return iSqrt;
            case 2:
            case 3:
                return iSqrt;
            case 4:
            case 5:
                iA = a(iSqrt * iSqrt, i);
                break;
            case 6:
            case 7:
            case 8:
                iA = a((iSqrt * iSqrt) + iSqrt, i);
                break;
            default:
                throw new AssertionError();
        }
        return iA + iSqrt;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static int divide(int i, int i2, RoundingMode roundingMode) {
        Preconditions.checkNotNull(roundingMode);
        if (i2 == 0) {
            throw new ArithmeticException("/ by zero");
        }
        int i3 = i / i2;
        int i4 = i - (i2 * i3);
        if (i4 == 0) {
            return i3;
        }
        int i5 = ((i ^ i2) >> 31) | 1;
        switch (a.f4699a[roundingMode.ordinal()]) {
            case 1:
                b.i(i4 == 0);
                return i3;
            case 2:
                return i3;
            case 3:
                if (i5 >= 0) {
                    return i3;
                }
                return i3 + i5;
            case 4:
                return i3 + i5;
            case 5:
                if (i5 <= 0) {
                    return i3;
                }
                return i3 + i5;
            case 6:
            case 7:
            case 8:
                int iAbs = Math.abs(i4);
                int iAbs2 = iAbs - (Math.abs(i2) - iAbs);
                if (iAbs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP) {
                        if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i3 & 1) != 0))) {
                            return i3;
                        }
                    }
                } else if (iAbs2 <= 0) {
                    return i3;
                }
                return i3 + i5;
            default:
                throw new AssertionError();
        }
    }

    public static int mod(int i, int i2) {
        if (i2 <= 0) {
            throw new ArithmeticException(_COROUTINE.a.e(i2, "Modulus ", " must be > 0"));
        }
        int i3 = i % i2;
        return i3 >= 0 ? i3 : i3 + i2;
    }

    public static int gcd(int i, int i2) {
        b.d(i, "a");
        b.d(i2, "b");
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int iNumberOfTrailingZeros2 = i >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(i2);
        int i3 = i2 >> iNumberOfTrailingZeros3;
        while (iNumberOfTrailingZeros2 != i3) {
            int i4 = iNumberOfTrailingZeros2 - i3;
            int i5 = (i4 >> 31) & i4;
            int i6 = (i4 - i5) - i5;
            i3 += i5;
            iNumberOfTrailingZeros2 = i6 >> Integer.numberOfTrailingZeros(i6);
        }
        return iNumberOfTrailingZeros2 << Math.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros3);
    }

    public static int checkedAdd(int i, int i2) {
        long j = i + i2;
        int i3 = (int) j;
        b.b(j == ((long) i3), "checkedAdd", i, i2);
        return i3;
    }

    public static int checkedSubtract(int i, int i2) {
        long j = i - i2;
        int i3 = (int) j;
        b.b(j == ((long) i3), "checkedSubtract", i, i2);
        return i3;
    }

    public static int checkedMultiply(int i, int i2) {
        long j = i * i2;
        int i3 = (int) j;
        b.b(j == ((long) i3), "checkedMultiply", i, i2);
        return i3;
    }

    public static int checkedPow(int i, int i2) {
        b.d(i2, "exponent");
        if (i == -2) {
            b.b(i2 < 32, "checkedPow", i, i2);
            return (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        b.b(i2 < 31, "checkedPow", i, i2);
                        return 1 << i2;
                    }
                    int iCheckedMultiply = 1;
                    while (i2 != 0) {
                        if (i2 == 1) {
                            return checkedMultiply(iCheckedMultiply, i);
                        }
                        if ((i2 & 1) != 0) {
                            iCheckedMultiply = checkedMultiply(iCheckedMultiply, i);
                        }
                        i2 >>= 1;
                        if (i2 > 0) {
                            b.b((-46340 <= i) & (i <= 46340), "checkedPow", i, i2);
                            i *= i;
                        }
                    }
                    return iCheckedMultiply;
                }
            } else if (i2 != 0) {
                return 0;
            }
        } else if ((i2 & 1) != 0) {
            return -1;
        }
        return 1;
    }

    @Beta
    public static int saturatedAdd(int i, int i2) {
        return Ints.saturatedCast(i + i2);
    }

    @Beta
    public static int saturatedSubtract(int i, int i2) {
        return Ints.saturatedCast(i - i2);
    }

    @Beta
    public static int saturatedMultiply(int i, int i2) {
        return Ints.saturatedCast(i * i2);
    }

    @Beta
    public static int saturatedPow(int i, int i2) {
        b.d(i2, "exponent");
        if (i == -2) {
            return i2 >= 32 ? (i2 & 1) + Integer.MAX_VALUE : (i2 & 1) == 0 ? 1 << i2 : (-1) << i2;
        }
        if (i != -1) {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        if (i2 >= 31) {
                            return Integer.MAX_VALUE;
                        }
                        return 1 << i2;
                    }
                    int i3 = ((i >>> 31) & i2 & 1) + Integer.MAX_VALUE;
                    int iSaturatedMultiply = 1;
                    while (i2 != 0) {
                        if (i2 == 1) {
                            return saturatedMultiply(iSaturatedMultiply, i);
                        }
                        if ((i2 & 1) != 0) {
                            iSaturatedMultiply = saturatedMultiply(iSaturatedMultiply, i);
                        }
                        i2 >>= 1;
                        if (i2 > 0) {
                            if ((-46340 > i) || (i > 46340)) {
                                return i3;
                            }
                            i *= i;
                        }
                    }
                    return iSaturatedMultiply;
                }
            } else if (i2 != 0) {
                return 0;
            }
        } else if ((i2 & 1) != 0) {
            return -1;
        }
        return 1;
    }

    public static int factorial(int i) {
        b.d(i, "n");
        if (i < 13) {
            return d[i];
        }
        return Integer.MAX_VALUE;
    }

    public static int binomial(int i, int i2) {
        b.d(i, "n");
        b.d(i2, "k");
        int i3 = 0;
        Preconditions.checkArgument(i2 <= i, "k (%s) > n (%s)", i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 >= 17 || i > e[i2]) {
            return Integer.MAX_VALUE;
        }
        if (i2 == 0) {
            return 1;
        }
        if (i2 == 1) {
            return i;
        }
        long j = 1;
        while (i3 < i2) {
            long j2 = j * (i - i3);
            i3++;
            j = j2 / i3;
        }
        return (int) j;
    }

    @Beta
    @GwtIncompatible
    public static boolean isPrime(int i) {
        return LongMath.isPrime(i);
    }

    private IntMath() {
    }
}
