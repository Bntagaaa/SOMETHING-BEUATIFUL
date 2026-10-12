package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {
    public static final int[] e = new int[0];
    public static final Object[] f = new Object[0];

    /* renamed from: g, reason: collision with root package name */
    public static Object[] f542g;
    public static int h;
    public static Object[] i;
    public static int j;

    /* renamed from: a, reason: collision with root package name */
    public int[] f543a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f544b;
    public int c;
    public b d;

    public final int c(int i2, Object obj) {
        int i3 = this.c;
        if (i3 == 0) {
            return -1;
        }
        int iA = c.a(i3, i2, this.f543a);
        if (iA < 0 || obj.equals(this.f544b[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f543a[i4] == i2) {
            if (obj.equals(this.f544b[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f543a[i5] == i2; i5--) {
            if (obj.equals(this.f544b[i5])) {
                return i5;
            }
        }
        return ~i4;
    }

    public final int d() {
        int i2 = this.c;
        if (i2 == 0) {
            return -1;
        }
        int iA = c.a(i2, 0, this.f543a);
        if (iA < 0 || this.f544b[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f543a[i3] == 0) {
            if (this.f544b[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f543a[i4] == 0; i4--) {
            if (this.f544b[i4] == null) {
                return i4;
            }
        }
        return ~i3;
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (ArraySet.class) {
                try {
                    Object[] objArr = i;
                    if (objArr != null) {
                        this.f544b = objArr;
                        i = (Object[]) objArr[0];
                        this.f543a = (int[]) objArr[1];
                        objArr[1] = null;
                        objArr[0] = null;
                        j--;
                        return;
                    }
                } finally {
                }
            }
        } else if (i2 == 4) {
            synchronized (ArraySet.class) {
                try {
                    Object[] objArr2 = f542g;
                    if (objArr2 != null) {
                        this.f544b = objArr2;
                        f542g = (Object[]) objArr2[0];
                        this.f543a = (int[]) objArr2[1];
                        objArr2[1] = null;
                        objArr2[0] = null;
                        h--;
                        return;
                    }
                } finally {
                }
            }
        }
        this.f543a = new int[i2];
        this.f544b = new Object[i2];
    }

    public static void b(int i2, Object[] objArr, int[] iArr) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                try {
                    if (j < 10) {
                        objArr[0] = i;
                        objArr[1] = iArr;
                        for (int i3 = i2 - 1; i3 >= 2; i3--) {
                            objArr[i3] = null;
                        }
                        i = objArr;
                        j++;
                    }
                } finally {
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                try {
                    if (h < 10) {
                        objArr[0] = f542g;
                        objArr[1] = iArr;
                        for (int i4 = i2 - 1; i4 >= 2; i4--) {
                            objArr[i4] = null;
                        }
                        f542g = objArr;
                        h++;
                    }
                } finally {
                }
            }
        }
    }

    public ArraySet() {
        this(0);
    }

    public ArraySet(int i2) {
        if (i2 == 0) {
            this.f543a = e;
            this.f544b = f;
        } else {
            a(i2);
        }
        this.c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable ArraySet<E> arraySet) {
        this();
        if (arraySet != 0) {
            addAll((ArraySet) arraySet);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.c;
        if (i2 != 0) {
            b(i2, this.f544b, this.f543a);
            this.f543a = e;
            this.f544b = f;
            this.c = 0;
        }
    }

    public void ensureCapacity(int i2) {
        int[] iArr = this.f543a;
        if (iArr.length < i2) {
            Object[] objArr = this.f544b;
            a(i2);
            int i3 = this.c;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f543a, 0, i3);
                System.arraycopy(objArr, 0, this.f544b, 0, this.c);
            }
            b(this.c, objArr, iArr);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? d() : c(obj.hashCode(), obj);
    }

    @Nullable
    public E valueAt(int i2) {
        return (E) this.f544b[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.c <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e2) {
        int i2;
        int iC;
        if (e2 == null) {
            iC = d();
            i2 = 0;
        } else {
            int iHashCode = e2.hashCode();
            i2 = iHashCode;
            iC = c(iHashCode, e2);
        }
        if (iC >= 0) {
            return false;
        }
        int i3 = ~iC;
        int i4 = this.c;
        int[] iArr = this.f543a;
        if (i4 >= iArr.length) {
            int i5 = 8;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 < 4) {
                i5 = 4;
            }
            Object[] objArr = this.f544b;
            a(i5);
            int[] iArr2 = this.f543a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f544b, 0, objArr.length);
            }
            b(this.c, objArr, iArr);
        }
        int i6 = this.c;
        if (i3 < i6) {
            int[] iArr3 = this.f543a;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f544b;
            System.arraycopy(objArr2, i3, objArr2, i7, this.c - i3);
        }
        this.f543a[i3] = i2;
        this.f544b[i3] = e2;
        this.c++;
        return true;
    }

    public void addAll(@NonNull ArraySet<? extends E> arraySet) {
        int i2 = arraySet.c;
        ensureCapacity(this.c + i2);
        if (this.c != 0) {
            for (int i3 = 0; i3 < i2; i3++) {
                add(arraySet.valueAt(i3));
            }
        } else if (i2 > 0) {
            System.arraycopy(arraySet.f543a, 0, this.f543a, 0, i2);
            System.arraycopy(arraySet.f544b, 0, this.f544b, 0, i2);
            this.c = i2;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        removeAt(iIndexOf);
        return true;
    }

    public E removeAt(int i2) {
        Object[] objArr = this.f544b;
        E e2 = (E) objArr[i2];
        int i3 = this.c;
        if (i3 <= 1) {
            b(i3, objArr, this.f543a);
            this.f543a = e;
            this.f544b = f;
            this.c = 0;
            return e2;
        }
        int[] iArr = this.f543a;
        if (iArr.length > 8 && i3 < iArr.length / 3) {
            a(i3 > 8 ? i3 + (i3 >> 1) : 8);
            this.c--;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f543a, 0, i2);
                System.arraycopy(objArr, 0, this.f544b, 0, i2);
            }
            int i4 = this.c;
            if (i2 < i4) {
                int i5 = i2 + 1;
                System.arraycopy(iArr, i5, this.f543a, i2, i4 - i2);
                System.arraycopy(objArr, i5, this.f544b, i2, this.c - i2);
            }
            return e2;
        }
        int i6 = i3 - 1;
        this.c = i6;
        if (i2 < i6) {
            int i7 = i2 + 1;
            System.arraycopy(iArr, i7, iArr, i2, i6 - i2);
            Object[] objArr2 = this.f544b;
            System.arraycopy(objArr2, i7, objArr2, i2, this.c - i2);
        }
        this.f544b[this.c] = null;
        return e2;
    }

    public boolean removeAll(@NonNull ArraySet<? extends E> arraySet) {
        int i2 = arraySet.c;
        int i3 = this.c;
        for (int i4 = 0; i4 < i2; i4++) {
            remove(arraySet.valueAt(i4));
        }
        return i3 != this.c;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.c;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i2 = this.c;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f544b, 0, objArr, 0, i2);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.c) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.c));
        }
        System.arraycopy(this.f544b, 0, tArr, 0, this.c);
        int length = tArr.length;
        int i2 = this.c;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.c; i2++) {
                try {
                    if (!set.contains(valueAt(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f543a;
        int i2 = this.c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eValueAt = valueAt(i2);
            if (eValueAt != this) {
                sb.append(eValueAt);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        if (this.d == null) {
            this.d = new b(this);
        }
        return (Iterator<E>) this.d.getKeySet().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        ensureCapacity(collection.size() + this.c);
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f544b[i2])) {
                removeAt(i2);
                z = true;
            }
        }
        return z;
    }
}
