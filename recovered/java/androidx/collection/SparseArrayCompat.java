package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {
    public static final Object e = new Object();

    /* renamed from: a, reason: collision with root package name */
    public boolean f557a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f558b;
    public Object[] c;
    public int d;

    public SparseArrayCompat() {
        this(10);
    }

    public SparseArrayCompat(int i) {
        this.f557a = false;
        if (i == 0) {
            this.f558b = c.f559a;
            this.c = c.c;
        } else {
            int iIdealIntArraySize = c.idealIntArraySize(i);
            this.f558b = new int[iIdealIntArraySize];
            this.c = new Object[iIdealIntArraySize];
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SparseArrayCompat<E> m1clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.f558b = (int[]) this.f558b.clone();
            sparseArrayCompat.c = (Object[]) this.c.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Nullable
    public E get(int i) {
        return get(i, null);
    }

    public E get(int i, E e2) {
        E e3;
        int iA = c.a(this.d, i, this.f558b);
        return (iA < 0 || (e3 = (E) this.c[iA]) == e) ? e2 : e3;
    }

    @Deprecated
    public void delete(int i) {
        remove(i);
    }

    public void remove(int i) {
        int iA = c.a(this.d, i, this.f558b);
        if (iA >= 0) {
            Object[] objArr = this.c;
            Object obj = objArr[iA];
            Object obj2 = e;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.f557a = true;
            }
        }
    }

    public boolean remove(int i, Object obj) {
        int iIndexOfKey = indexOfKey(i);
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
            this.f557a = true;
        }
    }

    public void removeAtRange(int i, int i2) {
        int iMin = Math.min(this.d, i2 + i);
        while (i < iMin) {
            removeAt(i);
            i++;
        }
    }

    @Nullable
    public E replace(int i, E e2) {
        int iIndexOfKey = indexOfKey(i);
        if (iIndexOfKey < 0) {
            return null;
        }
        Object[] objArr = this.c;
        E e3 = (E) objArr[iIndexOfKey];
        objArr[iIndexOfKey] = e2;
        return e3;
    }

    public boolean replace(int i, E e2, E e3) {
        int iIndexOfKey = indexOfKey(i);
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
        int[] iArr = this.f558b;
        Object[] objArr = this.c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f557a = false;
        this.d = i2;
    }

    public void put(int i, E e2) {
        int iA = c.a(this.d, i, this.f558b);
        if (iA >= 0) {
            this.c[iA] = e2;
            return;
        }
        int i2 = ~iA;
        int i3 = this.d;
        if (i2 < i3) {
            Object[] objArr = this.c;
            if (objArr[i2] == e) {
                this.f558b[i2] = i;
                objArr[i2] = e2;
                return;
            }
        }
        if (this.f557a && i3 >= this.f558b.length) {
            a();
            i2 = ~c.a(this.d, i, this.f558b);
        }
        int i4 = this.d;
        if (i4 >= this.f558b.length) {
            int iIdealIntArraySize = c.idealIntArraySize(i4 + 1);
            int[] iArr = new int[iIdealIntArraySize];
            Object[] objArr2 = new Object[iIdealIntArraySize];
            int[] iArr2 = this.f558b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f558b = iArr;
            this.c = objArr2;
        }
        int i5 = this.d - i2;
        if (i5 != 0) {
            int[] iArr3 = this.f558b;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5);
            Object[] objArr4 = this.c;
            System.arraycopy(objArr4, i2, objArr4, i6, this.d - i2);
        }
        this.f558b[i2] = i;
        this.c[i2] = e2;
        this.d++;
    }

    public void putAll(@NonNull SparseArrayCompat<? extends E> sparseArrayCompat) {
        int size = sparseArrayCompat.size();
        for (int i = 0; i < size; i++) {
            put(sparseArrayCompat.keyAt(i), sparseArrayCompat.valueAt(i));
        }
    }

    @Nullable
    public E putIfAbsent(int i, E e2) {
        E e3 = get(i);
        if (e3 == null) {
            put(i, e2);
        }
        return e3;
    }

    public int size() {
        if (this.f557a) {
            a();
        }
        return this.d;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int keyAt(int i) {
        if (this.f557a) {
            a();
        }
        return this.f558b[i];
    }

    public E valueAt(int i) {
        if (this.f557a) {
            a();
        }
        return (E) this.c[i];
    }

    public void setValueAt(int i, E e2) {
        if (this.f557a) {
            a();
        }
        this.c[i] = e2;
    }

    public int indexOfKey(int i) {
        if (this.f557a) {
            a();
        }
        return c.a(this.d, i, this.f558b);
    }

    public int indexOfValue(E e2) {
        if (this.f557a) {
            a();
        }
        for (int i = 0; i < this.d; i++) {
            if (this.c[i] == e2) {
                return i;
            }
        }
        return -1;
    }

    public boolean containsKey(int i) {
        return indexOfKey(i) >= 0;
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
        this.f557a = false;
    }

    public void append(int i, E e2) {
        int i2 = this.d;
        if (i2 != 0 && i <= this.f558b[i2 - 1]) {
            put(i, e2);
            return;
        }
        if (this.f557a && i2 >= this.f558b.length) {
            a();
        }
        int i3 = this.d;
        if (i3 >= this.f558b.length) {
            int iIdealIntArraySize = c.idealIntArraySize(i3 + 1);
            int[] iArr = new int[iIdealIntArraySize];
            Object[] objArr = new Object[iIdealIntArraySize];
            int[] iArr2 = this.f558b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f558b = iArr;
            this.c = objArr;
        }
        this.f558b[i3] = i;
        this.c[i3] = e2;
        this.d = i3 + 1;
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
