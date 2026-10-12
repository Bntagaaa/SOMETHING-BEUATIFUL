package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class j<E> extends m<E> implements Serializable {
    public transient r4 c;
    public transient long d;

    public abstract void e(int i);

    public j(int i) {
        e(i);
    }

    @Override // com.google.common.collect.Multiset
    public final int count(@NullableDecl Object obj) {
        return this.c.get(obj);
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final int add(@NullableDecl E e, int i) {
        if (i == 0) {
            return count(e);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", i);
        int iE = this.c.e(e);
        if (iE == -1) {
            this.c.put(e, i);
            this.d += i;
            return 0;
        }
        int iD = this.c.d(iE);
        long j = i;
        long j2 = iD + j;
        Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
        r4 r4Var = this.c;
        Preconditions.checkElementIndex(iE, r4Var.c);
        r4Var.f4333b[iE] = (int) j2;
        this.d += j;
        return iD;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final int remove(@NullableDecl Object obj, int i) {
        if (i == 0) {
            return count(obj);
        }
        Preconditions.checkArgument(i > 0, "occurrences cannot be negative: %s", i);
        int iE = this.c.e(obj);
        if (iE == -1) {
            return 0;
        }
        int iD = this.c.d(iE);
        if (iD > i) {
            r4 r4Var = this.c;
            Preconditions.checkElementIndex(iE, r4Var.c);
            r4Var.f4333b[iE] = iD - i;
        } else {
            this.c.l(iE);
            i = iD;
        }
        this.d -= i;
        return iD;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public final int setCount(@NullableDecl E e, int i) {
        g0.b(i, "count");
        r4 r4Var = this.c;
        int iRemove = i == 0 ? r4Var.remove(e) : r4Var.put(e, i);
        this.d += i - iRemove;
        return iRemove;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.Multiset
    public final boolean setCount(@NullableDecl E e, int i, int i2) {
        g0.b(i, "oldCount");
        g0.b(i2, "newCount");
        int iE = this.c.e(e);
        if (iE == -1) {
            if (i != 0) {
                return false;
            }
            if (i2 > 0) {
                this.c.put(e, i2);
                this.d += i2;
            }
            return true;
        }
        if (this.c.d(iE) != i) {
            return false;
        }
        if (i2 == 0) {
            this.c.l(iE);
            this.d -= i;
            return true;
        }
        r4 r4Var = this.c;
        Preconditions.checkElementIndex(iE, r4Var.c);
        r4Var.f4333b[iE] = i2;
        this.d += i2 - i;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.c.clear();
        this.d = 0L;
    }

    public abstract class a<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public int f4236a;

        /* renamed from: b, reason: collision with root package name */
        public int f4237b = -1;
        public int c;

        public abstract Object a(int i);

        public a() {
            this.f4236a = j.this.c.b();
            this.c = j.this.c.d;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (j.this.c.d == this.c) {
                return this.f4236a >= 0;
            }
            throw new ConcurrentModificationException();
        }

        @Override // java.util.Iterator
        public void remove() {
            j jVar = j.this;
            if (jVar.c.d != this.c) {
                throw new ConcurrentModificationException();
            }
            g0.e(this.f4237b != -1);
            jVar.d -= jVar.c.l(this.f4237b);
            this.f4236a = jVar.c.j(this.f4236a, this.f4237b);
            this.f4237b = -1;
            this.c = jVar.c.d;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) a(this.f4236a);
            int i = this.f4236a;
            this.f4237b = i;
            this.f4236a = j.this.c.i(i);
            return t;
        }
    }

    @Override // com.google.common.collect.m
    public final Iterator c() {
        return new h(this);
    }

    @Override // com.google.common.collect.m
    public final Iterator d() {
        return new i(this);
    }

    @Override // com.google.common.collect.m
    public final int b() {
        return this.c.c;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public final Iterator<E> iterator() {
        return Multisets.c(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public final int size() {
        return Ints.saturatedCast(this.d);
    }
}
