package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    public static Object[] d;
    public static int e;
    public static Object[] f;

    /* renamed from: g, reason: collision with root package name */
    public static int f554g;

    /* renamed from: a, reason: collision with root package name */
    public int[] f555a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f556b;
    public int c;

    public final int c(int i, Object obj) {
        int i2 = this.c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int iA = c.a(i2, i, this.f555a);
            if (iA < 0 || obj.equals(this.f556b[iA << 1])) {
                return iA;
            }
            int i3 = iA + 1;
            while (i3 < i2 && this.f555a[i3] == i) {
                if (obj.equals(this.f556b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = iA - 1; i4 >= 0 && this.f555a[i4] == i; i4--) {
                if (obj.equals(this.f556b[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final int d() {
        int i = this.c;
        if (i == 0) {
            return -1;
        }
        try {
            int iA = c.a(i, 0, this.f555a);
            if (iA < 0 || this.f556b[iA << 1] == null) {
                return iA;
            }
            int i2 = iA + 1;
            while (i2 < i && this.f555a[i2] == 0) {
                if (this.f556b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = iA - 1; i3 >= 0 && this.f555a[i3] == 0; i3--) {
                if (this.f556b[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public final void a(int i) {
        if (i == 8) {
            synchronized (SimpleArrayMap.class) {
                try {
                    Object[] objArr = f;
                    if (objArr != null) {
                        this.f556b = objArr;
                        f = (Object[]) objArr[0];
                        this.f555a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        f554g--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i == 4) {
            synchronized (SimpleArrayMap.class) {
                try {
                    Object[] objArr2 = d;
                    if (objArr2 != null) {
                        this.f556b = objArr2;
                        d = (Object[]) objArr2[0];
                        this.f555a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        e--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f555a = new int[i];
        this.f556b = new Object[i << 1];
    }

    public static void b(int i, Object[] objArr, int[] iArr) {
        if (iArr.length == 8) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (f554g < 10) {
                        objArr[0] = f;
                        objArr[1] = iArr;
                        for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                            objArr[i2] = null;
                        }
                        f = objArr;
                        f554g++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (SimpleArrayMap.class) {
                try {
                    if (e < 10) {
                        objArr[0] = d;
                        objArr[1] = iArr;
                        for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        d = objArr;
                        e++;
                    }
                } finally {
                }
            }
        }
    }

    public SimpleArrayMap() {
        this.f555a = c.f559a;
        this.f556b = c.c;
        this.c = 0;
    }

    public SimpleArrayMap(int i) {
        if (i == 0) {
            this.f555a = c.f559a;
            this.f556b = c.c;
        } else {
            a(i);
        }
        this.c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            putAll(simpleArrayMap);
        }
    }

    public void clear() {
        int i = this.c;
        if (i > 0) {
            int[] iArr = this.f555a;
            Object[] objArr = this.f556b;
            this.f555a = c.f559a;
            this.f556b = c.c;
            this.c = 0;
            b(i, objArr, iArr);
        }
        if (this.c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public void ensureCapacity(int i) {
        int i2 = this.c;
        int[] iArr = this.f555a;
        if (iArr.length < i) {
            Object[] objArr = this.f556b;
            a(i);
            if (this.c > 0) {
                System.arraycopy(iArr, 0, this.f555a, 0, i2);
                System.arraycopy(objArr, 0, this.f556b, 0, i2 << 1);
            }
            b(i2, objArr, iArr);
        }
        if (this.c != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        return indexOfKey(obj) >= 0;
    }

    public int indexOfKey(@Nullable Object obj) {
        return obj == null ? d() : c(obj.hashCode(), obj);
    }

    public final int e(Object obj) {
        int i = this.c * 2;
        Object[] objArr = this.f556b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public boolean containsValue(Object obj) {
        return e(obj) >= 0;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int iIndexOfKey = indexOfKey(obj);
        return iIndexOfKey >= 0 ? (V) this.f556b[(iIndexOfKey << 1) + 1] : v;
    }

    public K keyAt(int i) {
        return (K) this.f556b[i << 1];
    }

    public V valueAt(int i) {
        return (V) this.f556b[(i << 1) + 1];
    }

    public V setValueAt(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f556b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    public boolean isEmpty() {
        return this.c <= 0;
    }

    @Nullable
    public V put(K k, V v) {
        int i;
        int iC;
        int i2 = this.c;
        if (k == null) {
            iC = d();
            i = 0;
        } else {
            int iHashCode = k.hashCode();
            i = iHashCode;
            iC = c(iHashCode, k);
        }
        if (iC >= 0) {
            int i3 = (iC << 1) + 1;
            Object[] objArr = this.f556b;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = ~iC;
        int[] iArr = this.f555a;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            Object[] objArr2 = this.f556b;
            a(i5);
            if (i2 != this.c) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f555a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f556b, 0, objArr2.length);
            }
            b(i2, objArr2, iArr);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f555a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f556b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.c - i4) << 1);
        }
        int i7 = this.c;
        if (i2 == i7) {
            int[] iArr4 = this.f555a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f556b;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.c = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public void putAll(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i = simpleArrayMap.c;
        ensureCapacity(this.c + i);
        if (this.c != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(simpleArrayMap.keyAt(i2), simpleArrayMap.valueAt(i2));
            }
        } else if (i > 0) {
            System.arraycopy(simpleArrayMap.f555a, 0, this.f555a, 0, i);
            System.arraycopy(simpleArrayMap.f556b, 0, this.f556b, 0, i << 1);
            this.c = i;
        }
    }

    @Nullable
    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        return v2 == null ? put(k, v) : v2;
    }

    @Nullable
    public V remove(Object obj) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey >= 0) {
            return removeAt(iIndexOfKey);
        }
        return null;
    }

    public boolean remove(Object obj, Object obj2) {
        int iIndexOfKey = indexOfKey(obj);
        if (iIndexOfKey < 0) {
            return false;
        }
        V vValueAt = valueAt(iIndexOfKey);
        if (obj2 != vValueAt && (obj2 == null || !obj2.equals(vValueAt))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public V removeAt(int i) {
        Object[] objArr = this.f556b;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.c;
        int i4 = 0;
        if (i3 <= 1) {
            b(i3, objArr, this.f555a);
            this.f555a = c.f559a;
            this.f556b = c.c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f555a;
            if (iArr.length > 8 && i3 < iArr.length / 3) {
                a(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f555a, 0, i);
                    System.arraycopy(objArr, 0, this.f556b, 0, i2);
                }
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, this.f555a, i, i7);
                    System.arraycopy(objArr, i6 << 1, this.f556b, i2, i7 << 1);
                }
            } else {
                if (i < i5) {
                    int i8 = i + 1;
                    int i9 = i5 - i;
                    System.arraycopy(iArr, i8, iArr, i, i9);
                    Object[] objArr2 = this.f556b;
                    System.arraycopy(objArr2, i8 << 1, objArr2, i2, i9 << 1);
                }
                Object[] objArr3 = this.f556b;
                int i10 = i5 << 1;
                objArr3[i10] = null;
                objArr3[i10 + 1] = null;
            }
            i4 = i5;
        }
        if (i3 != this.c) {
            throw new ConcurrentModificationException();
        }
        this.c = i4;
        return v;
    }

    @Nullable
    public V replace(K k, V v) {
        int iIndexOfKey = indexOfKey(k);
        if (iIndexOfKey >= 0) {
            return setValueAt(iIndexOfKey, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int iIndexOfKey = indexOfKey(k);
        if (iIndexOfKey < 0) {
            return false;
        }
        V vValueAt = valueAt(iIndexOfKey);
        if (vValueAt != v && (v == null || !v.equals(vValueAt))) {
            return false;
        }
        setValueAt(iIndexOfKey, v2);
        return true;
    }

    public int size() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int i = 0; i < this.c; i++) {
                try {
                    K kKeyAt = keyAt(i);
                    V vValueAt = valueAt(i);
                    Object obj2 = simpleArrayMap.get(kKeyAt);
                    if (vValueAt == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(kKeyAt)) {
                            return false;
                        }
                    } else if (!vValueAt.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.c; i2++) {
                try {
                    K kKeyAt2 = keyAt(i2);
                    V vValueAt2 = valueAt(i2);
                    Object obj3 = map.get(kKeyAt2);
                    if (vValueAt2 == null) {
                        if (obj3 != null || !map.containsKey(kKeyAt2)) {
                            return false;
                        }
                    } else if (!vValueAt2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        int[] iArr = this.f555a;
        Object[] objArr = this.f556b;
        int i = this.c;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.c * 28);
        sb.append('{');
        for (int i = 0; i < this.c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K kKeyAt = keyAt(i);
            if (kKeyAt != this) {
                sb.append(kKeyAt);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vValueAt = valueAt(i);
            if (vValueAt != this) {
                sb.append(vValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
