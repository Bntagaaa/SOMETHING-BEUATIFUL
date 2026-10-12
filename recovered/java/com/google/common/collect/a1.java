package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtIncompatible
/* loaded from: classes.dex */
final class a1<E> extends ImmutableSortedSet<E> {
    public final ImmutableSortedSet e;

    public a1(ImmutableSortedSet immutableSortedSet) {
        super(Ordering.from(immutableSortedSet.comparator()).reverse());
        this.e = immutableSortedSet;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        return this.e.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.e.size();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return this.e.descendingIterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet l(Object obj, boolean z) {
        return this.e.tailSet((ImmutableSortedSet) obj, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet m(Object obj, boolean z, Object obj2, boolean z2) {
        return this.e.subSet((boolean) obj2, z2, (boolean) obj, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet n(Object obj, boolean z) {
        return this.e.headSet((ImmutableSortedSet) obj, z).descendingSet();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public ImmutableSortedSet<E> descendingSet() {
        return this.e;
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible("NavigableSet")
    public UnmodifiableIterator<E> descendingIterator() {
        return this.e.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet j() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e) {
        return (E) this.e.higher(e);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e) {
        return (E) this.e.ceiling(e);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e) {
        return (E) this.e.floor(e);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e) {
        return (E) this.e.lower(e);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return this.e.isPartialView();
    }
}
