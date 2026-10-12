package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import java.util.Arrays;

@GwtIncompatible
/* loaded from: classes.dex */
class o0<E> extends l0<E> {
    public transient int[] f;

    /* renamed from: g, reason: collision with root package name */
    public transient int[] f4305g;
    public transient int h;
    public transient int i;

    public static <E> o0<E> createWithExpectedSize(int i) {
        return new o0<>(i);
    }

    @Override // com.google.common.collect.l0
    public final void e(int i) {
        super.e(i);
        this.h = -2;
        this.i = -2;
    }

    @Override // com.google.common.collect.l0
    public final int b() {
        int iB = super.b();
        this.f = new int[iB];
        this.f4305g = new int[iB];
        return iB;
    }

    @Override // com.google.common.collect.l0
    public final int d(int i) {
        return this.f4305g[i] - 1;
    }

    public final void k(int i, int i2) {
        if (i != -2) {
            this.f4305g[i] = i2 + 1;
        } else {
            this.h = i2;
        }
        if (i2 != -2) {
            this.f[i2] = i + 1;
        } else {
            this.i = i;
        }
    }

    @Override // com.google.common.collect.l0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        ObjectArrays.b(this, objArr);
        return objArr;
    }

    @Override // com.google.common.collect.l0
    public final void f(int i, int i2, int i3, Object obj) {
        super.f(i, i2, i3, obj);
        k(this.i, i);
        k(i, -2);
    }

    @Override // com.google.common.collect.l0
    public final void g(int i, int i2) {
        int size = size() - 1;
        super.g(i, i2);
        k(this.f[i] - 1, d(i));
        if (i < size) {
            k(this.f[size] - 1, i);
            k(i, d(size));
        }
        this.f[size] = 0;
        this.f4305g[size] = 0;
    }

    @Override // com.google.common.collect.l0
    public final void i(int i) {
        super.i(i);
        this.f = Arrays.copyOf(this.f, i);
        this.f4305g = Arrays.copyOf(this.f4305g, i);
    }

    @Override // com.google.common.collect.l0
    public final int c() {
        return this.h;
    }

    @Override // com.google.common.collect.l0
    public final int a(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.l0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) ObjectArrays.c(this, tArr);
    }

    @Override // com.google.common.collect.l0, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (h()) {
            return;
        }
        this.h = -2;
        this.i = -2;
        Arrays.fill(this.f, 0, size(), 0);
        Arrays.fill(this.f4305g, 0, size(), 0);
        super.clear();
    }
}
