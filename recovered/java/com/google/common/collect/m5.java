package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class m5<E> extends ImmutableSet<E> {
    public final transient Object c;
    public transient int d;

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    public m5(Object obj) {
        this.c = Preconditions.checkNotNull(obj);
    }

    public m5(Object obj, int i) {
        this.c = obj;
        this.d = i;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.c.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return Iterators.singletonIterator(this.c);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        return ImmutableList.of(this.c);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        objArr[i] = this.c;
        return i + 1;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        int i = this.d;
        if (i != 0) {
            return i;
        }
        int iHashCode = this.c.hashCode();
        this.d = iHashCode;
        return iHashCode;
    }

    @Override // com.google.common.collect.ImmutableSet
    public final boolean h() {
        return this.d != 0;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return "[" + this.c.toString() + ']';
    }
}
