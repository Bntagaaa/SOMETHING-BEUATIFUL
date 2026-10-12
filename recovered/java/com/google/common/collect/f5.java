package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class f5<E> extends ImmutableSortedSet<E> {
    public static final f5 f = new f5(ImmutableList.of(), Ordering.natural());
    public final transient ImmutableList e;

    public f5(ImmutableList immutableList, Comparator comparator) {
        super(comparator);
        this.e = immutableList;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] b() {
        return this.e.b();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int d() {
        return this.e.d();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c() {
        return this.e.c();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<E> iterator() {
        return this.e.iterator();
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible
    public UnmodifiableIterator<E> descendingIterator() {
        return this.e.reverse().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.e.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        if (!p5.hasSameComparator(comparator(), collection) || collection.size() <= 1) {
            return super.containsAll(collection);
        }
        UnmodifiableIterator<E> it = iterator();
        Iterator<?> it2 = collection.iterator();
        if (!it.hasNext()) {
            return false;
        }
        Object next = it2.next();
        E next2 = it.next();
        while (true) {
            try {
                int iCompare = this.c.compare(next2, next);
                if (iCompare < 0) {
                    if (!it.hasNext()) {
                        return false;
                    }
                    next2 = it.next();
                } else if (iCompare == 0) {
                    if (!it2.hasNext()) {
                        return true;
                    }
                    next = it2.next();
                } else if (iCompare > 0) {
                    break;
                }
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        if (obj != null) {
            try {
                if (Collections.binarySearch(this.e, obj, this.c) >= 0) {
                    return true;
                }
            } catch (ClassCastException unused) {
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return this.e.isPartialView();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int a(int i, Object[] objArr) {
        return this.e.a(i, objArr);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        if (size() != set.size()) {
            return false;
        }
        if (isEmpty()) {
            return true;
        }
        Comparator comparator = this.c;
        if (p5.hasSameComparator(comparator, set)) {
            Iterator<E> it = set.iterator();
            try {
                UnmodifiableIterator<E> it2 = iterator();
                while (it2.hasNext()) {
                    E next = it2.next();
                    E next2 = it.next();
                    if (next2 == null || comparator.compare(next, next2) != 0) {
                        return false;
                    }
                }
                return true;
            } catch (ClassCastException | NoSuchElementException unused) {
                return false;
            }
        }
        return containsAll(set);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E first() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.e.get(0);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public E last() {
        if (isEmpty()) {
            throw new NoSuchElementException();
        }
        return this.e.get(size() - 1);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E lower(E e) {
        int iP = p(e, false) - 1;
        if (iP == -1) {
            return null;
        }
        return this.e.get(iP);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E floor(E e) {
        int iP = p(e, true) - 1;
        if (iP == -1) {
            return null;
        }
        return this.e.get(iP);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E ceiling(E e) {
        int iQ = q(e, true);
        if (iQ == size()) {
            return null;
        }
        return this.e.get(iQ);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    public E higher(E e) {
        int iQ = q(e, false);
        if (iQ == size()) {
            return null;
        }
        return this.e.get(iQ);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet l(Object obj, boolean z) {
        return o(0, p(obj, z));
    }

    public final int p(Object obj, boolean z) {
        int iBinarySearch = Collections.binarySearch(this.e, Preconditions.checkNotNull(obj), comparator());
        return iBinarySearch >= 0 ? z ? iBinarySearch + 1 : iBinarySearch : ~iBinarySearch;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet m(Object obj, boolean z, Object obj2, boolean z2) {
        return n(obj, z).l(obj2, z2);
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet n(Object obj, boolean z) {
        return o(q(obj, z), size());
    }

    public final int q(Object obj, boolean z) {
        int iBinarySearch = Collections.binarySearch(this.e, Preconditions.checkNotNull(obj), comparator());
        return iBinarySearch >= 0 ? z ? iBinarySearch : iBinarySearch + 1 : ~iBinarySearch;
    }

    public final f5 o(int i, int i2) {
        if (i == 0 && i2 == size()) {
            return this;
        }
        Comparator comparator = this.c;
        if (i < i2) {
            return new f5(this.e.subList(i, i2), comparator);
        }
        return ImmutableSortedSet.k(comparator);
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public ImmutableList<E> asList() {
        return this.e;
    }

    @Override // com.google.common.collect.ImmutableSortedSet
    public final ImmutableSortedSet j() {
        Comparator comparatorReverseOrder = Collections.reverseOrder(this.c);
        if (isEmpty()) {
            return ImmutableSortedSet.k(comparatorReverseOrder);
        }
        return new f5(this.e.reverse(), comparatorReverseOrder);
    }
}
