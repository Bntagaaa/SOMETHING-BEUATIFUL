package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
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
public final class Booleans {
    public static int compare(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    public static int hashCode(boolean z) {
        return z ? 1231 : 1237;
    }

    private Booleans() {
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class b implements Comparator<Boolean> {
        public static final b c = new b(0, 1, "TRUE_FIRST", "Booleans.trueFirst()");
        public static final b d = new b(1, -1, "FALSE_FIRST", "Booleans.falseFirst()");

        /* renamed from: a, reason: collision with root package name */
        public final int f4746a;

        /* renamed from: b, reason: collision with root package name */
        public final String f4747b;

        public b(int i, int i2, String str, String str2) {
            this.f4746a = i2;
            this.f4747b = str2;
        }

        @Override // java.util.Comparator
        public int compare(Boolean bool, Boolean bool2) {
            boolean zBooleanValue = bool.booleanValue();
            int i = this.f4746a;
            return (bool2.booleanValue() ? i : 0) - (zBooleanValue ? i : 0);
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f4747b;
        }
    }

    @Beta
    public static Comparator<Boolean> trueFirst() {
        return b.c;
    }

    @Beta
    public static Comparator<Boolean> falseFirst() {
        return b.d;
    }

    public static boolean contains(boolean[] zArr, boolean z) {
        for (boolean z2 : zArr) {
            if (z2 == z) {
                return true;
            }
        }
        return false;
    }

    public static int indexOf(boolean[] zArr, boolean z) {
        return a(zArr, z, 0, zArr.length);
    }

    public static int a(boolean[] zArr, boolean z, int i, int i2) {
        while (i < i2) {
            if (zArr[i] == z) {
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
    public static int indexOf(boolean[] r5, boolean[] r6) {
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
            boolean r3 = r5[r3]
            boolean r4 = r6[r2]
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.primitives.Booleans.indexOf(boolean[], boolean[]):int");
    }

    public static int lastIndexOf(boolean[] zArr, boolean z) {
        for (int length = zArr.length - 1; length >= 0; length--) {
            if (zArr[length] == z) {
                return length;
            }
        }
        return -1;
    }

    public static boolean[] concat(boolean[]... zArr) {
        int length = 0;
        for (boolean[] zArr2 : zArr) {
            length += zArr2.length;
        }
        boolean[] zArr3 = new boolean[length];
        int length2 = 0;
        for (boolean[] zArr4 : zArr) {
            System.arraycopy(zArr4, 0, zArr3, length2, zArr4.length);
            length2 += zArr4.length;
        }
        return zArr3;
    }

    public static boolean[] ensureCapacity(boolean[] zArr, int i, int i2) {
        Preconditions.checkArgument(i >= 0, "Invalid minLength: %s", i);
        Preconditions.checkArgument(i2 >= 0, "Invalid padding: %s", i2);
        return zArr.length < i ? Arrays.copyOf(zArr, i + i2) : zArr;
    }

    public static String join(String str, boolean... zArr) {
        Preconditions.checkNotNull(str);
        if (zArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(zArr.length * 7);
        sb.append(zArr[0]);
        for (int i = 1; i < zArr.length; i++) {
            sb.append(str);
            sb.append(zArr[i]);
        }
        return sb.toString();
    }

    public static Comparator<boolean[]> lexicographicalComparator() {
        return c.f4748a;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class c implements Comparator<boolean[]> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f4748a = new c("INSTANCE", 0);

        @Override // java.util.Comparator
        public int compare(boolean[] zArr, boolean[] zArr2) {
            int iMin = Math.min(zArr.length, zArr2.length);
            for (int i = 0; i < iMin; i++) {
                int iCompare = Booleans.compare(zArr[i], zArr2[i]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return zArr.length - zArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Booleans.lexicographicalComparator()";
        }
    }

    public static boolean[] toArray(Collection<Boolean> collection) {
        if (collection instanceof a) {
            a aVar = (a) collection;
            return Arrays.copyOfRange(aVar.f4744a, aVar.f4745b, aVar.c);
        }
        Object[] array = collection.toArray();
        int length = array.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = ((Boolean) Preconditions.checkNotNull(array[i])).booleanValue();
        }
        return zArr;
    }

    public static List<Boolean> asList(boolean... zArr) {
        if (zArr.length == 0) {
            return Collections.EMPTY_LIST;
        }
        return new a(zArr, 0, zArr.length);
    }

    @GwtCompatible
    public static class a extends AbstractList<Boolean> implements RandomAccess, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final boolean[] f4744a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4745b;
        public final int c;

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        public a(boolean[] zArr, int i, int i2) {
            this.f4744a = zArr;
            this.f4745b = i;
            this.c = i2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.c - this.f4745b;
        }

        @Override // java.util.AbstractList, java.util.List
        public Boolean get(int i) {
            Preconditions.checkElementIndex(i, size());
            return Boolean.valueOf(this.f4744a[this.f4745b + i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (obj instanceof Boolean) {
                return Booleans.a(this.f4744a, ((Boolean) obj).booleanValue(), this.f4745b, this.c) != -1;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (!(obj instanceof Boolean)) {
                return -1;
            }
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            boolean[] zArr = this.f4744a;
            int i = this.f4745b;
            int iA = Booleans.a(zArr, zBooleanValue, i, this.c);
            if (iA >= 0) {
                return iA - i;
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int i;
            if (obj instanceof Boolean) {
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i2 = this.c;
                while (true) {
                    i2--;
                    i = this.f4745b;
                    if (i2 < i) {
                        i2 = -1;
                        break;
                    }
                    if (this.f4744a[i2] == zBooleanValue) {
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
        public Boolean set(int i, Boolean bool) {
            Preconditions.checkElementIndex(i, size());
            int i2 = this.f4745b;
            boolean[] zArr = this.f4744a;
            boolean z = zArr[i2 + i];
            zArr[i2 + i] = ((Boolean) Preconditions.checkNotNull(bool)).booleanValue();
            return Boolean.valueOf(z);
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Boolean> subList(int i, int i2) {
            Preconditions.checkPositionIndexes(i, i2, size());
            if (i == i2) {
                return Collections.EMPTY_LIST;
            }
            int i3 = this.f4745b;
            return new a(this.f4744a, i + i3, i3 + i2);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i = 0; i < size; i++) {
                    if (this.f4744a[this.f4745b + i] != aVar.f4744a[aVar.f4745b + i]) {
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
            for (int i = this.f4745b; i < this.c; i++) {
                iHashCode = (iHashCode * 31) + Booleans.hashCode(this.f4744a[i]);
            }
            return iHashCode;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb = new StringBuilder(size() * 7);
            boolean[] zArr = this.f4744a;
            int i = this.f4745b;
            sb.append(zArr[i] ? "[true" : "[false");
            while (true) {
                i++;
                if (i < this.c) {
                    sb.append(zArr[i] ? ", true" : ", false");
                } else {
                    sb.append(']');
                    return sb.toString();
                }
            }
        }
    }

    @Beta
    public static int countTrue(boolean... zArr) {
        int i = 0;
        for (boolean z : zArr) {
            if (z) {
                i++;
            }
        }
        return i;
    }

    public static void reverse(boolean[] zArr) {
        Preconditions.checkNotNull(zArr);
        reverse(zArr, 0, zArr.length);
    }

    public static void reverse(boolean[] zArr, int i, int i2) {
        Preconditions.checkNotNull(zArr);
        Preconditions.checkPositionIndexes(i, i2, zArr.length);
        for (int i3 = i2 - 1; i < i3; i3--) {
            boolean z = zArr[i];
            zArr[i] = zArr[i3];
            zArr[i3] = z;
            i++;
        }
    }
}
