package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Comparator;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class UnsignedLongs {
    public static final long MAX_VALUE = -1;

    private UnsignedLongs() {
    }

    public static int compare(long j, long j2) {
        return Longs.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE);
    }

    public static long min(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j = jArr[0] ^ Long.MIN_VALUE;
        for (int i = 1; i < jArr.length; i++) {
            long j2 = jArr[i] ^ Long.MIN_VALUE;
            if (j2 < j) {
                j = j2;
            }
        }
        return j ^ Long.MIN_VALUE;
    }

    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j = jArr[0] ^ Long.MIN_VALUE;
        for (int i = 1; i < jArr.length; i++) {
            long j2 = jArr[i] ^ Long.MIN_VALUE;
            if (j2 > j) {
                j = j2;
            }
        }
        return j ^ Long.MIN_VALUE;
    }

    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(toString(jArr[0]));
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str);
            sb.append(toString(jArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<long[]> lexicographicalComparator() {
        return a.f4801a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a implements Comparator<long[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4801a = new a("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < iMin; i++) {
                long j = jArr[i];
                long j2 = jArr2[i];
                if (j != j2) {
                    return UnsignedLongs.compare(j, j2);
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedLongs.lexicographicalComparator()";
        }
    }

    public static void sort(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sort(jArr, 0, jArr.length);
    }

    public static void sort(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = Long.MIN_VALUE ^ jArr[i3];
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = jArr[i] ^ Long.MIN_VALUE;
            i++;
        }
    }

    public static void sortDescending(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sortDescending(jArr, 0, jArr.length);
    }

    public static void sortDescending(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = Long.MAX_VALUE ^ jArr[i3];
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = jArr[i] ^ Long.MAX_VALUE;
            i++;
        }
    }

    public static long divide(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? 0L : 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        long j3 = ((j >>> 1) / j2) << 1;
        return j3 + (compare(j - (j3 * j2), j2) < 0 ? 0 : 1);
    }

    public static long remainder(long j, long j2) {
        if (j2 < 0) {
            return compare(j, j2) < 0 ? j : j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (compare(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }

    @CanIgnoreReturnValue
    public static long parseUnsignedLong(String str) {
        return parseUnsignedLong(str, 10);
    }

    @CanIgnoreReturnValue
    public static long parseUnsignedLong(String str, int i) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        if (i < 2 || i > 36) {
            throw new NumberFormatException(_COROUTINE.a.d(i, "illegal radix: "));
        }
        int i2 = b.c[i] - 1;
        long j = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            int iDigit = Character.digit(str.charAt(i3), i);
            if (iDigit == -1) {
                throw new NumberFormatException(str);
            }
            if (i3 > i2) {
                if (j >= 0) {
                    long j2 = b.f4802a[i];
                    if (j >= j2 && (j > j2 || iDigit > b.f4803b[i])) {
                    }
                }
                throw new NumberFormatException("Too large for unsigned long: ".concat(str));
            }
            j = (j * i) + iDigit;
        }
        return j;
    }

    @CanIgnoreReturnValue
    public static long decode(String str) {
        com.google.common.primitives.a aVarA = com.google.common.primitives.a.a(str);
        try {
            return parseUnsignedLong(aVarA.f4804a, aVarA.f4805b);
        } catch (NumberFormatException e) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: ".concat(str));
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public static final long[] f4802a = new long[37];

        /* renamed from: b, reason: collision with root package name */
        public static final int[] f4803b = new int[37];
        public static final int[] c = new int[37];

        private b() {
        }

        static {
            BigInteger bigInteger = new BigInteger("10000000000000000", 16);
            for (int i = 2; i <= 36; i++) {
                long j = i;
                f4802a[i] = UnsignedLongs.divide(-1L, j);
                f4803b[i] = (int) UnsignedLongs.remainder(-1L, j);
                c[i] = bigInteger.toString(i).length() - 1;
            }
        }
    }

    public static String toString(long j) {
        return toString(j, 10);
    }

    public static String toString(long j, int i) {
        long jDivide;
        Preconditions.checkArgument(i >= 2 && i <= 36, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX", i);
        if (j == 0) {
            return "0";
        }
        if (j > 0) {
            return Long.toString(j, i);
        }
        int i2 = 64;
        char[] cArr = new char[64];
        int i3 = i - 1;
        if ((i & i3) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i2--;
                cArr[i2] = Character.forDigit(((int) j) & i3, i);
                j >>>= iNumberOfTrailingZeros;
            } while (j != 0);
        } else {
            if ((i & 1) == 0) {
                jDivide = (j >>> 1) / (i >>> 1);
            } else {
                jDivide = divide(j, i);
            }
            long j2 = i;
            int i4 = 63;
            cArr[63] = Character.forDigit((int) (j - (jDivide * j2)), i);
            while (jDivide > 0) {
                i4--;
                cArr[i4] = Character.forDigit((int) (jDivide % j2), i);
                jDivide /= j2;
            }
            i2 = i4;
        }
        return new String(cArr, i2, 64 - i2);
    }
}
