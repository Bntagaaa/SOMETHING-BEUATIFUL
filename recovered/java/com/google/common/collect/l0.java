package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
class l0<E> extends AbstractSet<E> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public transient Object f4258a;

    /* renamed from: b, reason: collision with root package name */
    public transient int[] f4259b;
    public transient Object[] c;
    public transient int d;
    public transient int e;

    public int a(int i, int i2) {
        return i - 1;
    }

    public class a implements Iterator<E> {

        /* renamed from: a, reason: collision with root package name */
        public int f4260a;

        /* renamed from: b, reason: collision with root package name */
        public int f4261b;
        public int c = -1;

        @Override // java.util.Iterator
        public E next() {
            l0 l0Var = l0.this;
            if (l0Var.d == this.f4260a) {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i = this.f4261b;
                this.c = i;
                E e = (E) l0Var.c[i];
                this.f4261b = l0Var.d(i);
                return e;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public void remove() {
            l0 l0Var = l0.this;
            if (l0Var.d == this.f4260a) {
                g0.e(this.c >= 0);
                this.f4260a += 32;
                l0Var.remove(l0Var.c[this.c]);
                this.f4261b = l0Var.a(this.f4261b, this.c);
                this.c = -1;
                return;
            }
            throw new ConcurrentModificationException();
        }

        public a() {
            this.f4260a = l0.this.d;
            this.f4261b = l0.this.c();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4261b >= 0;
        }
    }

    public static <E> l0<E> create() {
        return new l0<>();
    }

    public static <E> l0<E> createWithExpectedSize(int i) {
        return new l0<>(i);
    }

    public l0() {
        e(3);
    }

    public l0(int i) {
        e(i);
    }

    public void e(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.d = Math.max(1, Math.min(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, i));
    }

    public final boolean h() {
        return this.f4258a == null;
    }

    public int b() {
        Preconditions.checkState(h(), "Arrays already allocated");
        int i = this.d;
        int iMax = Math.max(4, e2.a(i + 1, 1.0d));
        this.f4258a = m0.a(iMax);
        this.d = m0.b(this.d, 32 - Integer.numberOfLeadingZeros(iMax - 1), 31);
        this.f4259b = new int[i];
        this.c = new Object[i];
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean add(@NullableDecl E e) {
        int iMin;
        if (h()) {
            b();
        }
        int[] iArr = this.f4259b;
        Object[] objArr = this.c;
        int i = this.e;
        int i2 = i + 1;
        int iC = e2.c(e);
        int iJ = (1 << (this.d & 31)) - 1;
        int i3 = iC & iJ;
        int iE = m0.e(i3, this.f4258a);
        if (iE != 0) {
            int i4 = ~iJ;
            int i5 = iC & i4;
            while (true) {
                int i6 = iE - 1;
                int i7 = iArr[i6];
                if ((i7 & i4) == i5 && Objects.equal(e, objArr[i6])) {
                    return false;
                }
                int i8 = i7 & iJ;
                if (i8 != 0) {
                    iE = i8;
                } else if (i2 > iJ) {
                    iJ = j(iJ, m0.c(iJ), iC, i);
                } else {
                    iArr[i6] = m0.b(i7, i2, iJ);
                }
            }
        } else if (i2 > iJ) {
            iJ = j(iJ, m0.c(iJ), iC, i);
        } else {
            m0.f(this.f4258a, i3, i2);
        }
        int length = this.f4259b.length;
        if (i2 > length && (iMin = Math.min(LockFreeTaskQueueCore.MAX_CAPACITY_MASK, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            i(iMin);
        }
        f(i, iC, iJ, e);
        this.e = i2;
        this.d += 32;
        return true;
    }

    public void f(int i, int i2, int i3, Object obj) {
        this.f4259b[i] = m0.b(i2, 0, i3);
        this.c[i] = obj;
    }

    public void i(int i) {
        this.f4259b = Arrays.copyOf(this.f4259b, i);
        this.c = Arrays.copyOf(this.c, i);
    }

    public final int j(int i, int i2, int i3, int i4) {
        Object objA = m0.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            m0.f(objA, i3 & i5, i4 + 1);
        }
        Object obj = this.f4258a;
        int[] iArr = this.f4259b;
        for (int i6 = 0; i6 <= i; i6++) {
            int iE = m0.e(i6, obj);
            while (iE != 0) {
                int i7 = iE - 1;
                int i8 = iArr[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iE2 = m0.e(i10, objA);
                m0.f(objA, i10, iE);
                iArr[i7] = m0.b(i9, iE2, i5);
                iE = i8 & i;
            }
        }
        this.f4258a = objA;
        this.d = m0.b(this.d, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@NullableDecl Object obj) {
        if (h()) {
            return false;
        }
        int iC = e2.c(obj);
        int i = (1 << (this.d & 31)) - 1;
        int iE = m0.e(iC & i, this.f4258a);
        if (iE == 0) {
            return false;
        }
        int i2 = ~i;
        int i3 = iC & i2;
        do {
            int i4 = iE - 1;
            int i5 = this.f4259b[i4];
            if ((i5 & i2) == i3 && Objects.equal(obj, this.c[i4])) {
                return true;
            }
            iE = i5 & i;
        } while (iE != 0);
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean remove(@NullableDecl Object obj) {
        int i;
        int iD;
        if (h() || (iD = m0.d(obj, null, (1 << (this.d & 31)) - 1, this.f4258a, this.f4259b, this.c, null)) == -1) {
            return false;
        }
        g(iD, i);
        this.e--;
        this.d += 32;
        return true;
    }

    public void g(int i, int i2) {
        int size = size();
        int i3 = size - 1;
        if (i < i3) {
            Object[] objArr = this.c;
            Object obj = objArr[i3];
            objArr[i] = obj;
            objArr[i3] = null;
            int[] iArr = this.f4259b;
            iArr[i] = iArr[i3];
            iArr[i3] = 0;
            int iC = e2.c(obj) & i2;
            int iE = m0.e(iC, this.f4258a);
            if (iE == size) {
                m0.f(this.f4258a, iC, i + 1);
                return;
            }
            while (true) {
                int i4 = iE - 1;
                int[] iArr2 = this.f4259b;
                int i5 = iArr2[i4];
                int i6 = i5 & i2;
                if (i6 == size) {
                    iArr2[i4] = m0.b(i5, i + 1, i2);
                    return;
                }
                iE = i6;
            }
        } else {
            this.c[i] = null;
            this.f4259b[i] = 0;
        }
    }

    public int c() {
        return isEmpty() ? -1 : 0;
    }

    public int d(int i) {
        int i2 = i + 1;
        if (i2 < this.e) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new a();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.e;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.e == 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (h()) {
            return new Object[0];
        }
        return Arrays.copyOf(this.c, this.e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public <T> T[] toArray(T[] tArr) {
        if (h()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        Object[] objArr = this.c;
        int i = this.e;
        Preconditions.checkPositionIndexes(0, i, objArr.length);
        if (tArr.length < i) {
            tArr = (T[]) ObjectArrays.newArray(tArr, i);
        } else if (tArr.length > i) {
            tArr[i] = null;
        }
        System.arraycopy(objArr, 0, tArr, 0, i);
        return tArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (h()) {
            return;
        }
        this.d += 32;
        Arrays.fill(this.c, 0, this.e, (Object) null);
        Object obj = this.f4258a;
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(this.f4259b, 0, this.e, 0);
        this.e = 0;
    }
}
