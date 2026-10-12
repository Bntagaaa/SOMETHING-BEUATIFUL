package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
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
import kotlin.jvm.internal.ShortCompanionObject;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Shorts {
    public static final int BYTES = 2;
    public static final short MAX_POWER_OF_TWO = 16384;

    public static int compare(short s, short s2) {
        return s - s2;
    }

    @GwtIncompatible
    public static short fromBytes(byte b2, byte b3) {
        return (short) ((b2 << 8) | (b3 & 255));
    }

    public static int hashCode(short s) {
        return s;
    }

    public static short saturatedCast(long j) {
        return j > 32767 ? ShortCompanionObject.MAX_VALUE : j < -32768 ? ShortCompanionObject.MIN_VALUE : (short) j;
    }

    private Shorts() {
    }

    public static short checkedCast(long j) {
        short s = (short) j;
        Preconditions.checkArgument(((long) s) == j, "Out of range: %s", j);
        return s;
    }

    public static boolean contains(short[] sArr, short s) {
        for (short s2 : sArr) {
            if (s2 == s) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(short[] sArr, short s) {
        return a(sArr, s, 0, sArr.length);
    }

    public static int a(short[] sArr, short s, int i, int i2) {
        while (i < i2) {
            if (sArr[i] == s) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        r0 = r0 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int indexOf(short[] r5, short[] r6) {
        /*
            java.lang.String r0 = "array"
            com.google.common.base.Preconditions.checkNotNull(r5, r0)
            java.lang.String r0 = "target"
            com.google.common.base.Preconditions.checkNotNull(r6, r0)
            int r0 = r6.length
            r1 = 0
            if (r0 != 0) goto Lf
            return r1
        Lf:
            r0 = 0
        L10:
            int r2 = r5.length
            int r3 = r6.length
            int r2 = r2 - r3
            int r2 = r2 + 1
            if (r0 >= r2) goto L2a
            r2 = 0
        L18:
            int r3 = r6.length
            if (r2 >= r3) goto L29
            int r3 = r0 + r2
            short r3 = r5[r3]
            short r4 = r6[r2]
            if (r3 == r4) goto L26
            int r0 = r0 + 1
            goto L10
        L26:
            int r2 = r2 + 1
            goto L18
        L29:
            return r0
        L2a:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Shorts.indexOf(short[], short[]):int");
    }

    public static int lastIndexOf(short[] sArr, short s) {
        for (int length = sArr.length - 1; length >= 0; length--) {
            if (sArr[length] == s) {
                return length;
            }
        }
        return -1;
    }

    public static short min(short... sArr) {
        Preconditions.checkArgument(sArr.length > 0);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            short s2 = sArr[i];
            if (s2 < s) {
                s = s2;
            }
        }
        return s;
    }

    public static short max(short... sArr) {
        Preconditions.checkArgument(sArr.length > 0);
        short s = sArr[0];
        for (int i = 1; i < sArr.length; i++) {
            short s2 = sArr[i];
            if (s2 > s) {
                s = s2;
            }
        }
        return s;
    }

    @Beta
    public static short constrainToRange(short s, short s2, short s3) {
        Preconditions.checkArgument(s2 <= s3, "min (%s) must be less than or equal to max (%s)", (int) s2, (int) s3);
        return s < s2 ? s2 : s < s3 ? s : s3;
    }

    public static short[] concat(short[]... sArr) {
        int length = 0;
        for (short[] sArr2 : sArr) {
            length += sArr2.length;
        }
        short[] sArr3 = new short[length];
        int length2 = 0;
        for (short[] sArr4 : sArr) {
            System.arraycopy(sArr4, 0, sArr3, length2, sArr4.length);
            length2 += sArr4.length;
        }
        return sArr3;
    }

    @GwtIncompatible
    public static byte[] toByteArray(short s) {
        return new byte[]{(byte) (s >> 8), (byte) s};
    }

    @GwtIncompatible
    public static short fromByteArray(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 2, "array too small: %s < %s", bArr.length, 2);
        return fromBytes(bArr[0], bArr[1]);
    }

    public static final class c extends Converter<String, Short> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final c f4792b = new c();

        private c() {
        }

        @Override // com.google.common.base.Converter
        public Short doForward(String str) {
            return Short.decode(str);
        }

        @Override // com.google.common.base.Converter
        public String doBackward(Short sh) {
            return sh.toString();
        }

        public String toString() {
            return "Shorts.stringConverter()";
        }
    }

    @Beta
    public static Converter<String, Short> stringConverter() {
        return c.f4792b;
    }

    public static short[] ensureCapacity(short[] sArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", i);
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", i2);
        return sArr.length < i ? Arrays.copyOf(sArr, i + i2) : sArr;
    }

    public static String join(String str, short... sArr) {
        Preconditions.checkNotNull(str);
        if (sArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(sArr.length * 6);
        sb.append((int) sArr[0]);
        for (int i = 1; i < sArr.length; i++) {
            sb.append(str);
            sb.append((int) sArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<short[]> lexicographicalComparator() {
        return a.f4789a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a implements Comparator<short[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4789a = new a("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(short[] sArr, short[] sArr2) {
            int iMin = Math.min(sArr.length, sArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Shorts.compare(sArr[i], sArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return sArr.length - sArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Shorts.lexicographicalComparator()";
        }
    }

    public static void sortDescending(short[] sArr) {
        Preconditions.checkNotNull(sArr);
        sortDescending(sArr, 0, sArr.length);
    }

    public static void sortDescending(short[] sArr, int i, int i2) {
        Preconditions.checkNotNull(sArr);
        Preconditions.checkPositionIndexes(i, i2, sArr.length);
        Arrays.sort(sArr, i, i2);
        reverse(sArr, i, i2);
    }

    public static void reverse(short[] sArr) {
        Preconditions.checkNotNull(sArr);
        reverse(sArr, 0, sArr.length);
    }

    public static void reverse(short[] sArr, int i, int i2) {
        Preconditions.checkNotNull(sArr);
        Preconditions.checkPositionIndexes(i, i2, sArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            short s = sArr[i];
            sArr[i] = sArr[i3];
            sArr[i3] = s;
            i++;
        }
    }

    public static short[] toArray(Collection<? extends Number> collection) {
        if (collection instanceof b) {
            b bVar = (b) collection;
            return Arrays.copyOfRange(bVar.f4790a, bVar.f4791b, bVar.c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = ((Number) Preconditions.checkNotNull(array[i])).shortValue();
        }
        return sArr;
    }

    public static List<Short> asList(short... sArr) {
        if (sArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new b(sArr, 0, sArr.length);
    }

    @GwtCompatible
    public static class b extends AbstractList<Short> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final short[] f4790a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4791b;
        public final int c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        public b(short[] sArr, int i, int i2) {
            this.f4790a = sArr;
            this.f4791b = i;
            this.c = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c - this.f4791b;
        }

        @Override // java.util.AbstractList, java.util.List
        public Short get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Short.valueOf(this.f4790a[this.f4791b + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(@NullableDecl Object obj) {
            if (obj instanceof Short) {
                return Shorts.a(this.f4790a, ((Short) obj).shortValue(), this.f4791b, this.c) != -1;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(@NullableDecl Object obj) {
            if (!(obj instanceof Short)) {
                return -1;
            }
            short sShortValue = ((Short) obj).shortValue();
            short[] sArr = this.f4790a;
            int i = this.f4791b;
            int iA = Shorts.a(sArr, sShortValue, i, this.c);
            if (iA >= 0) {
                return iA - i;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(@NullableDecl Object obj) {
            int i;
            if (obj instanceof Short) {
                short sShortValue = ((Short) obj).shortValue();
                int i2 = this.c;
                while (true) {
                    i2--;
                    i = this.f4791b;
                    if (i2 < i) {
                        i2 = -1;
                        break;
                    }
                    if (this.f4790a[i2] == sShortValue) {
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
        public Short set(int i, Short sh) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f4791b;
            short[] sArr = this.f4790a;
            short s = sArr[i2 + i];
            sArr[i2 + i] = ((Short) Preconditions.checkNotNull(sh)).shortValue();
            return Short.valueOf(s);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Short> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f4791b;
            return new b(this.f4790a, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                int size = size();
                if (bVar.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.f4790a[this.f4791b + i] != bVar.f4790a[bVar.f4791b + i]) {
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
            for (int i = this.f4791b; i < this.c; i++) {
                iHashCode = (iHashCode * 31) + Shorts.hashCode(this.f4790a[i]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 6);
            sb.append('[');
            short[] sArr = this.f4790a;
            int i = this.f4791b;
            sb.append((int) sArr[i]);
            while (true) {
                i++;
                if (i < this.c) {
                    sb.append(", ");
                    sb.append((int) sArr[i]);
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }
}
