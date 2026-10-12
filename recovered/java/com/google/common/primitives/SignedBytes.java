package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.Arrays;
import java.util.Comparator;

@GwtCompatible
/* loaded from: classes.dex */
public final class SignedBytes {
    public static final byte MAX_POWER_OF_TWO = 64;

    public static int compare(byte b2, byte b3) {
        return b2 - b3;
    }

    public static byte saturatedCast(long j) {
        if (j > 127) {
            return (byte) 127;
        }
        if (j < -128) {
            return (byte) -128;
        }
        return (byte) j;
    }

    private SignedBytes() {
    }

    public static byte checkedCast(long j) {
        byte b2 = (byte) j;
        Preconditions.checkArgument(((long) b2) == j, "Out of range: %s", j);
        return b2;
    }

    public static byte min(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        byte b2 = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            byte b3 = bArr[i];
            if (b3 < b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    public static byte max(byte... bArr) {
        Preconditions.checkArgument(bArr.length > 0);
        byte b2 = bArr[0];
        for (int i = 1; i < bArr.length; i++) {
            byte b3 = bArr[i];
            if (b3 > b2) {
                b2 = b3;
            }
        }
        return b2;
    }

    public static String join(String str, byte... bArr) {
        Preconditions.checkNotNull(str);
        if (bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 5);
        sb.append((int) bArr[0]);
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str);
            sb.append((int) bArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<byte[]> lexicographicalComparator() {
        return a.f4793a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a implements Comparator<byte[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4793a = new a("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            int iMin = Math.min(bArr.length, bArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = SignedBytes.compare(bArr[i], bArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return bArr.length - bArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "SignedBytes.lexicographicalComparator()";
        }
    }

    public static void sortDescending(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        sortDescending(bArr, 0, bArr.length);
    }

    public static void sortDescending(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i2, bArr.length);
        Arrays.sort(bArr, i, i2);
        Bytes.reverse(bArr, i, i2);
    }
}
