package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
class z4<E> extends ImmutableList<E> {
    public static final ImmutableList e = new z4(new Object[0], 0);
    public final transient Object[] c;
    public final transient int d;

    @Override // com.google.common.collect.ImmutableCollection
    public final int d() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    public z4(Object[] objArr, int i) {
        this.c = objArr;
        this.d = i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.d;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] b() {
        return this.c;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c() {
        return this.d;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        Object[] objArr2 = this.c;
        int i2 = this.d;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // java.util.List
    public E get(int i) {
        Preconditions.checkElementIndex(i, this.d);
        return (E) this.c[i];
    }
}
