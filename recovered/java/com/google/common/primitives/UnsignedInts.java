package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import gnu.expr.Declaration;
import java.util.Arrays;
import java.util.Comparator;

@Beta
@GwtCompatible
/* loaded from: classes.dex */
public final class UnsignedInts {
    public static int saturatedCast(long j) {
        if (j <= 0) {
            return 0;
        }
        if (j >= Declaration.TRANSIENT_ACCESS) {
            return -1;
        }
        return (int) j;
    }

    public static long toLong(int i) {
        return i & 4294967295L;
    }

    private UnsignedInts() {
    }

    public static int compare(int i, int i2) {
        return Ints.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE);
    }

    public static int checkedCast(long j) {
        Preconditions.checkArgument((j >> 32) == 0, "out of range: %s", j);
        return (int) j;
    }

    public static int min(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        int i = iArr[0] ^ Integer.MIN_VALUE;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            if (i3 < i) {
                i = i3;
            }
        }
        return i ^ Integer.MIN_VALUE;
    }

    public static int max(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        int i = iArr[0] ^ Integer.MIN_VALUE;
        for (int i2 = 1; i2 < iArr.length; i2++) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            if (i3 > i) {
                i = i3;
            }
        }
        return i ^ Integer.MIN_VALUE;
    }

    public static String join(String str, int... iArr) {
        Preconditions.checkNotNull(str);
        if (iArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(toString(iArr[0]));
        for (int i = 1; i < iArr.length; i++) {
            sb.append(str);
            sb.append(toString(iArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<int[]> lexicographicalComparator() {
        return a.f4799a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a implements Comparator<int[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4799a = new a("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < iMin; i++) {
                int i2 = iArr[i];
                int i3 = iArr2[i];
                if (i2 != i3) {
                    return UnsignedInts.compare(i2, i3);
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }
    }

    public static void sort(int[] iArr) {
        Preconditions.checkNotNull(iArr);
        sort(iArr, 0, iArr.length);
    }

    public static void sort(int[] iArr, int i, int i2) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkPositionIndexes(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = Integer.MIN_VALUE ^ iArr[i3];
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = iArr[i] ^ Integer.MIN_VALUE;
            i++;
        }
    }

    public static void sortDescending(int[] iArr) {
        Preconditions.checkNotNull(iArr);
        sortDescending(iArr, 0, iArr.length);
    }

    public static void sortDescending(int[] iArr, int i, int i2) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkPositionIndexes(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = Integer.MAX_VALUE ^ iArr[i3];
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = iArr[i] ^ Integer.MAX_VALUE;
            i++;
        }
    }

    public static int divide(int i, int i2) {
        return (int) (toLong(i) / toLong(i2));
    }

    public static int remainder(int i, int i2) {
        return (int) (toLong(i) % toLong(i2));
    }

    @CanIgnoreReturnValue
    public static int decode(String str) {
        com.google.common.primitives.a aVarA = com.google.common.primitives.a.a(str);
        try {
            return parseUnsignedInt(aVarA.f4804a, aVarA.f4805b);
        } catch (NumberFormatException e) {
            NumberFormatException numberFormatException = new NumberFormatException("Error parsing value: ".concat(str));
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    @CanIgnoreReturnValue
    public static int parseUnsignedInt(String str) {
        return parseUnsignedInt(str, 10);
    }

    @CanIgnoreReturnValue
    public static int parseUnsignedInt(String str, int i) throws NumberFormatException {
        Preconditions.checkNotNull(str);
        long j = Long.parseLong(str, i);
        if ((4294967295L & j) == j) {
            return (int) j;
        }
        throw new NumberFormatException("Input " + str + " in base " + i + " is not in the range of an unsigned integer");
    }

    public static String toString(int i) {
        return toString(i, 10);
    }

    public static String toString(int i, int i2) {
        return Long.toString(i & 4294967295L, i2);
    }
}
