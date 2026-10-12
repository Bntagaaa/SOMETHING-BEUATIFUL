package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
class x4<E> extends f2<E> {
    @Override // com.google.common.collect.f2
    public final ImmutableCollection f() {
        return null;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    public UnmodifiableListIterator<E> listIterator(int i) {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] b() {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int d() {
        throw null;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c() {
        throw null;
    }

    @Override // java.util.List
    public E get(int i) {
        throw null;
    }
}
