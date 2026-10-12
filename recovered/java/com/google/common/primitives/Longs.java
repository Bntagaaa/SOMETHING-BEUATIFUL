package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Converter;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class Longs {
    public static final int BYTES = 8;
    public static final long MAX_POWER_OF_TWO = 4611686018427387904L;

    public static int compare(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    public static long fromBytes(byte b2, byte b3, byte b4, byte b5, byte b6, byte b7, byte b8, byte b9) {
        return ((b3 & 255) << 48) | ((b2 & 255) << 56) | ((b4 & 255) << 40) | ((b5 & 255) << 32) | ((b6 & 255) << 24) | ((b7 & 255) << 16) | ((b8 & 255) << 8) | (b9 & 255);
    }

    public static int hashCode(long j) {
        return (int) (j ^ (j >>> 32));
    }

    private Longs() {
    }

    public static boolean contains(long[] jArr, long j) {
        for (long j2 : jArr) {
            if (j2 == j) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(long[] jArr, long j) {
        return a(jArr, j, 0, jArr.length);
    }

    public static int a(long[] jArr, long j, int i, int i2) {
        while (i < i2) {
            if (jArr[i] == j) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOf(long[] r8, long[] r9) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r8, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r9, r0)
            int r0 = r9.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r8.length
            int r3 = r9.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2c
            r2 = 0
        L18:
            int r3 = r9.length
            if (r2 >= r3) goto L2b
            int r3 = r0 + r2
            r3 = r8[r3]
            r5 = r9[r2]
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L28
            int r0 = r0 + 1
            goto L10
        L28:
            int r2 = r2 + 1
            goto L18
        L2b:
            return r0
        L2c:
            r8 = -1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Longs.indexOf(long[], long[]):int");
    }

    public static int lastIndexOf(long[] jArr, long j) {
        for (int length = jArr.length - 1; length >= 0; length--) {
            if (jArr[length] == j) {
                return length;
            }
        }
        return -1;
    }

    public static long min(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            long j2 = jArr[i];
            if (j2 < j) {
                j = j2;
            }
        }
        return j;
    }

    public static long max(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        long j = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            long j2 = jArr[i];
            if (j2 > j) {
                j = j2;
            }
        }
        return j;
    }

    @Beta
    public static long constrainToRange(long j, long j2, long j3) {
        Preconditions.checkArgument(j2 <= j3, "min (%s) must be less than or equal to max (%s)", j2, j3);
        return Math.min(Math.max(j, j2), j3);
    }

    public static long[] concat(long[]... jArr) {
        int length = 0;
        for (long[] jArr2 : jArr) {
            length += jArr2.length;
        }
        long[] jArr3 = new long[length];
        int length2 = 0;
        for (long[] jArr4 : jArr) {
            System.arraycopy(jArr4, 0, jArr3, length2, jArr4.length);
            length2 += jArr4.length;
        }
        return jArr3;
    }

    public static byte[] toByteArray(long j) {
        byte[] bArr = new byte[8];
        for (int i = 7; i >= 0; i--) {
            bArr[i] = (byte) (255 & j);
            j >>= 8;
        }
        return bArr;
    }

    public static long fromByteArray(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 8, "array too small: %s < %s", bArr.length, 8);
        return fromBytes(bArr[0], bArr[1], bArr[2], bArr[3], bArr[4], bArr[5], bArr[6], bArr[7]);
    }

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public static final byte[] f4782a;

        private a() {
        }

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i <= 9; i++) {
                bArr[i + 48] = (byte) i;
            }
            for (int i2 = 0; i2 <= 26; i2++) {
                byte b2 = (byte) (i2 + 10);
                bArr[i2 + 65] = b2;
                bArr[i2 + 97] = b2;
            }
            f4782a = bArr;
        }
    }

    @Beta
    @NullableDecl
    public static Long tryParse(String str) {
        return tryParse(str, 10);
    }

    @Beta
    @NullableDecl
    public static Long tryParse(String str, int i) {
        byte b2;
        byte b3;
        if (((String) Preconditions.checkNotNull(str)).isEmpty()) {
            return null;
        }
        if (i < 2 || i > 36) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "radix must be between MIN_RADIX and MAX_RADIX but was "));
        }
        int i2 = str.charAt(0) == '-' ? 1 : 0;
        if (i2 == str.length()) {
            return null;
        }
        int i3 = i2 + 1;
        char cCharAt = str.charAt(i2);
        if (cCharAt < 128) {
            b2 = a.f4782a[cCharAt];
        } else {
            byte[] bArr = a.f4782a;
            b2 = -1;
        }
        if (b2 < 0 || b2 >= i) {
            return null;
        }
        long j = -b2;
        long j2 = i;
        long j3 = Long.MIN_VALUE / j2;
        while (i3 < str.length()) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 128) {
                b3 = a.f4782a[cCharAt2];
            } else {
                byte[] bArr2 = a.f4782a;
                b3 = -1;
            }
            if (b3 < 0 || b3 >= i || j < j3) {
                return null;
            }
            long j4 = j * j2;
            int i5 = i2;
            long j5 = b3;
            if (j4 < j5 - Long.MIN_VALUE) {
                return null;
            }
            j = j4 - j5;
            i3 = i4;
            i2 = i5;
        }
        if (i2 != 0) {
            return Long.valueOf(j);
        }
        if (j == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j);
    }

    public static final class d extends Converter<String, Long> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final d f4786b = new d();

        private d() {
        }

        @Override // com.google.common.base.Converter
        public Long doForward(String str) {
            return Long.decode(str);
        }

        @Override // com.google.common.base.Converter
        public String doBackward(Long l) {
            return l.toString();
        }

        public String toString() {
            return "Longs.stringConverter()";
        }
    }

    @Beta
    public static Converter<String, Long> stringConverter() {
        return d.f4786b;
    }

    public static long[] ensureCapacity(long[] jArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", i);
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", i2);
        return jArr.length < i ? Arrays.copyOf(jArr, i + i2) : jArr;
    }

    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(jArr.length * 10);
        sb.append(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str);
            sb.append(jArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<long[]> lexicographicalComparator() {
        return b.f4783a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b implements Comparator<long[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f4783a = new b("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Longs.compare(jArr[i], jArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }
    }

    public static void sortDescending(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sortDescending(jArr, 0, jArr.length);
    }

    public static void sortDescending(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        Arrays.sort(jArr, i, i2);
        reverse(jArr, i, i2);
    }

    public static void reverse(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        reverse(jArr, 0, jArr.length);
    }

    public static void reverse(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            long j = jArr[i];
            jArr[i] = jArr[i3];
            jArr[i3] = j;
            i++;
        }
    }

    public static long[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof c) {
            c cVar = (c) collection;
            return Arrays.copyOfRange(cVar.f4784a, cVar.f4785b, cVar.c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = ((Number) Preconditions.checkNotNull(array[i])).longValue();
        }
        return jArr;
    }

    public static List<Long> asList(long... jArr) {
        if (jArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new c(jArr, 0, jArr.length);
    }

    @GwtCompatible
    public static class c extends AbstractList<Long> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final long[] f4784a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4785b;
        public final int c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        public c(long[] jArr, int i, int i2) {
            this.f4784a = jArr;
            this.f4785b = i;
            this.c = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c - this.f4785b;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Long.valueOf(this.f4784a[this.f4785b + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (obj instanceof Long) {
                return Longs.a(this.f4784a, ((Long) obj).longValue(), this.f4785b, this.c) != -1;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Long)) {
                return -1;
            }
            long jLongValue = ((Long) obj).longValue();
            long[] jArr = this.f4784a;
            int i = this.f4785b;
            int iA = Longs.a(jArr, jLongValue, i, this.c);
            if (iA >= 0) {
                return iA - i;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Long) {
                long jLongValue = ((Long) obj).longValue();
                int i2 = this.c;
                while (true) {
                    i2--;
                    i = this.f4785b;
                    if (i2 < i) {
                        i2 = -1;
                        break;
                    }
                    if (this.f4784a[i2] == jLongValue) {
                        break;
                    }
                }
                if (i2 >= 0) {
                    return i2 - i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long set(int i, Long l) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f4785b;
            long[] jArr = this.f4784a;
            long j = jArr[i2 + i];
            jArr[i2 + i] = ((Long) Preconditions.checkNotNull(l)).longValue();
            return Long.valueOf(j);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f4785b;
            return new c(this.f4784a, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                int size = size();
                if (cVar.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.f4784a[this.f4785b + i] != cVar.f4784a[cVar.f4785b + i]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode = 1;
            for (int i = this.f4785b; i < this.c; i++) {
                iHashCode = (iHashCode * 31) + Longs.hashCode(this.f4784a[i]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 10);
            sb.append('[');
            long[] jArr = this.f4784a;
            int i = this.f4785b;
            sb.append(jArr[i]);
            while (true) {
                i++;
                if (i < this.c) {
                    sb.append(", ");
                    sb.append(jArr[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }
}
