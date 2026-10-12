package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class s5 {
    private s5() {
    }

    public static class a<E> extends Multisets.g<E> implements SortedSet<E> {

        /* renamed from: a, reason: collision with root package name */
        public final SortedMultiset f4337a;

        public a(SortedMultiset sortedMultiset) {
            this.f4337a = sortedMultiset;
        }

        @Override // com.google.common.collect.Multisets.g
        public final Multiset a() {
            return this.f4337a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return new l4(this.f4337a.entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return this.f4337a.comparator();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(E e, E e2) {
            return this.f4337a.subMultiset(e, BoundType.CLOSED, e2, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(E e) {
            return this.f4337a.headMultiset(e, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(E e) {
            return this.f4337a.tailMultiset(e, BoundType.CLOSED).elementSet();
        }

        @Override // java.util.SortedSet
        public E first() {
            Multiset.Entry<E> entryFirstEntry = this.f4337a.firstEntry();
            if (entryFirstEntry == null) {
                throw new NoSuchElementException();
            }
            return entryFirstEntry.getElement();
        }

        @Override // java.util.SortedSet
        public E last() {
            Multiset.Entry<E> entryLastEntry = this.f4337a.lastEntry();
            if (entryLastEntry == null) {
                throw new NoSuchElementException();
            }
            return entryLastEntry.getElement();
        }
    }

    @GwtIncompatible
    public static class b<E> extends a<E> implements NavigableSet<E> {
        @Override // java.util.NavigableSet
        public E lower(E e) {
            return (E) s5.a(this.f4337a.headMultiset(e, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E floor(E e) {
            return (E) s5.a(this.f4337a.headMultiset(e, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e) {
            return (E) s5.a(this.f4337a.tailMultiset(e, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public E higher(E e) {
            return (E) s5.a(this.f4337a.tailMultiset(e, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new b(this.f4337a.descendingMultiset());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            return (E) s5.a(this.f4337a.pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            return (E) s5.a(this.f4337a.pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e, boolean z, E e2, boolean z2) {
            return new b(this.f4337a.subMultiset(e, BoundType.a(z), e2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e, boolean z) {
            return new b(this.f4337a.headMultiset(e, BoundType.a(z)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e, boolean z) {
            return new b(this.f4337a.tailMultiset(e, BoundType.a(z)));
        }
    }

    public static Object a(Multiset.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getElement();
    }
}
