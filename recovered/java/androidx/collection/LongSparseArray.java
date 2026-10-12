package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f549a;

    /* renamed from: b, reason: collision with root package name */
    public long[] f550b;
    public Object[] c;
    public int d;

    public LongSparseArray() {
        this(10);
    }

    public LongSparseArray(int i) {
        this.f549a = false;
        if (i == 0) {
            this.f550b = c.f560b;
            this.c = c.c;
        } else {
            int iIdealLongArraySize = c.idealLongArraySize(i);
            this.f550b = new long[iIdealLongArraySize];
            this.c = new Object[iIdealLongArraySize];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LongSparseArray<E> m0clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.f550b = (long[]) this.f550b.clone();
            longSparseArray.c = (Object[]) this.c.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Nullable
    public E get(long j) {
        return get(j, null);
    }

    public E get(long j, E e2) {
        E e3;
        int iB = c.b(this.f550b, this.d, j);
        return (iB < 0 || (e3 = (E) this.c[iB]) == e) ? e2 : e3;
    }

    @Deprecated
    public void delete(long j) {
        remove(j);
    }

    public void remove(long j) {
        int iB = c.b(this.f550b, this.d, j);
        if (iB >= 0) {
            Object[] objArr = this.c;
            Object obj = objArr[iB];
            Object obj2 = e;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f549a = true;
            }
        }
    }

    public boolean remove(long j, Object obj) {
        int iIndexOfKey = indexOfKey(j);
        if (iIndexOfKey < 0) {
            return false;
        }
        E eValueAt = valueAt(iIndexOfKey);
        if (obj != eValueAt && (obj == null || !obj.equals(eValueAt))) {
            return false;
        }
        removeAt(iIndexOfKey);
        return true;
    }

    public void removeAt(int i) {
        Object[] objArr = this.c;
        Object obj = objArr[i];
        Object obj2 = e;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f549a = true;
        }
    }

    @Nullable
    public E replace(long j, E e2) {
        int iIndexOfKey = indexOfKey(j);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.c;
        E e3 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e2;
        return e3;
    }

    public boolean replace(long j, E e2, E e3) {
        int iIndexOfKey = indexOfKey(j);
        if (iIndexOfKey < 0) {
            return false;
        }
        Object obj = this.c[iIndexOfKey];
        if (obj != e2 && (e2 == null || !e2.equals(obj))) {
            return false;
        }
        this.c[iIndexOfKey] = e3;
        return true;
    }

    public final void a() {
        int i = this.d;
        long[] jArr = this.f550b;
        Object[] objArr = this.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f549a = false;
        this.d = i2;
    }

    public void put(long j, E e2) {
        int iB = c.b(this.f550b, this.d, j);
        if (iB >= 0) {
            this.c[iB] = e2;
            return;
        }
        int i = ~iB;
        int i2 = this.d;
        if (i < i2) {
            Object[] objArr = this.c;
            if (objArr[i] == e) {
                this.f550b[i] = j;
                objArr[i] = e2;
                return;
            }
        }
        if (this.f549a && i2 >= this.f550b.length) {
            a();
            i = ~c.b(this.f550b, this.d, j);
        }
        int i3 = this.d;
        if (i3 >= this.f550b.length) {
            int iIdealLongArraySize = c.idealLongArraySize(i3 + 1);
            long[] jArr = new long[iIdealLongArraySize];
            Object[] objArr2 = new Object[iIdealLongArraySize];
            long[] jArr2 = this.f550b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f550b = jArr;
            this.c = objArr2;
        }
        int i4 = this.d - i;
        if (i4 != 0) {
            long[] jArr3 = this.f550b;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4);
            Object[] objArr4 = this.c;
            System.arraycopy(objArr4, i, objArr4, i5, this.d - i);
        }
        this.f550b[i] = j;
        this.c[i] = e2;
        this.d++;
    }

    public void putAll(@NonNull LongSparseArray<? extends E> longSparseArray) {
        int size = longSparseArray.size();
        for (int i = 0; i < size; i++) {
            put(longSparseArray.keyAt(i), longSparseArray.valueAt(i));
        }
    }

    @Nullable
    public E putIfAbsent(long j, E e2) {
        E e3 = get(j);
        if (e3 == null) {
            put(j, e2);
        }
        return e3;
    }

    public int size() {
        if (this.f549a) {
            a();
        }
        return this.d;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public long keyAt(int i) {
        if (this.f549a) {
            a();
        }
        return this.f550b[i];
    }

    public E valueAt(int i) {
        if (this.f549a) {
            a();
        }
        return (E) this.c[i];
    }

    public void setValueAt(int i, E e2) {
        if (this.f549a) {
            a();
        }
        this.c[i] = e2;
    }

    public int indexOfKey(long j) {
        if (this.f549a) {
            a();
        }
        return c.b(this.f550b, this.d, j);
    }

    public int indexOfValue(E e2) {
        if (this.f549a) {
            a();
        }
        for (int i = 0; i < this.d; i++) {
            if (this.c[i] == e2) {
                return i;
            }
        }
        return -1;
    }

    public boolean containsKey(long j) {
        return indexOfKey(j) >= 0;
    }

    public boolean containsValue(E e2) {
        return indexOfValue(e2) >= 0;
    }

    public void clear() {
        int i = this.d;
        Object[] objArr = this.c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.d = 0;
        this.f549a = false;
    }

    public void append(long j, E e2) {
        int i = this.d;
        if (i != 0 && j <= this.f550b[i - 1]) {
            put(j, e2);
            return;
        }
        if (this.f549a && i >= this.f550b.length) {
            a();
        }
        int i2 = this.d;
        if (i2 >= this.f550b.length) {
            int iIdealLongArraySize = c.idealLongArraySize(i2 + 1);
            long[] jArr = new long[iIdealLongArraySize];
            Object[] objArr = new Object[iIdealLongArraySize];
            long[] jArr2 = this.f550b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f550b = jArr;
            this.c = objArr;
        }
        this.f550b[i2] = j;
        this.c[i2] = e2;
        this.d = i2 + 1;
    }

    public String toString() {
        if (size() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.d * 28);
        sb.append('{');
        for (int i = 0; i < this.d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(keyAt(i));
            sb.append('=');
            E eValueAt = valueAt(i);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
