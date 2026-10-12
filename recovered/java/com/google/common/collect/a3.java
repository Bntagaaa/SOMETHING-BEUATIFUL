package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class a3<E> extends ImmutableSet<E> {
    public abstract Object get(int i);

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return asList().iterator();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        return asList().a(i, objArr);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        return new z2(this);
    }
}
