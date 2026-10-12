package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
final class v4<C extends Comparable> extends ContiguousSet<C> {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f4351g = 0;
    public final Range f;

    @GwtIncompatible
    public static final class c<C extends Comparable> implements Serializable {
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return false;
    }

    public v4(Range range, DiscreteDomain discreteDomain) {
        super(discreteDomain);
        this.f = range;
    }

    public final ContiguousSet r(Range range) {
        Range range2 = this.f;
        boolean zIsConnected = range2.isConnected(range);
        DiscreteDomain discreteDomain = this.e;
        if (!zIsConnected) {
            return new d1(discreteDomain);
        }
        return ContiguousSet.create(range2.intersection(range), discreteDomain);
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final ContiguousSet l(Comparable comparable, boolean z) {
        return r(Range.upTo(comparable, BoundType.a(z)));
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final ContiguousSet m(Comparable comparable, boolean z, Comparable comparable2, boolean z2) {
        if (comparable.compareTo(comparable2) == 0 && !z && !z2) {
            return new d1(this.e);
        }
        return r(Range.range(comparable, BoundType.a(z), comparable2, BoundType.a(z2)));
    }

    @Override // com.google.common.collect.ContiguousSet, com.google.common.collect.ImmutableSortedSet
    /* renamed from: q, reason: merged with bridge method [inline-methods] */
    public final ContiguousSet n(Comparable comparable, boolean z) {
        return r(Range.downTo(comparable, BoundType.a(z)));
    }

    public class a extends AbstractSequentialIterator<C> {

        /* renamed from: b, reason: collision with root package name */
        public final Comparable f4352b;

        public a(Comparable comparable) {
            super(comparable);
            this.f4352b = v4.this.last();
        }

        @Override // com.google.common.collect.AbstractSequentialIterator
        public C computeNext(C c) {
            int i = v4.f4351g;
            Comparable comparable = this.f4352b;
            if (comparable != null) {
                Range range = Range.c;
                if (c.compareTo(comparable) == 0) {
                    return null;
                }
            }
            return (C) v4.this.e.next(c);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<C> iterator() {
        return new a(first());
    }

    public class b extends AbstractSequentialIterator<C> {

        /* renamed from: b, reason: collision with root package name */
        public final Comparable f4353b;

        public b(Comparable comparable) {
            super(comparable);
            this.f4353b = v4.this.first();
        }

        @Override // com.google.common.collect.AbstractSequentialIterator
        public C computeNext(C c) {
            int i = v4.f4351g;
            Comparable comparable = this.f4353b;
            if (comparable != null) {
                Range range = Range.c;
                if (c.compareTo(comparable) == 0) {
                    return null;
                }
            }
            return (C) v4.this.e.previous(c);
        }
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
    @GwtIncompatible
    public UnmodifiableIterator<C> descendingIterator() {
        return new b(last());
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public C first() {
        return (C) this.f.f4084a.h(this.e);
    }

    @Override // com.google.common.collect.ImmutableSortedSet, java.util.SortedSet
    public C last() {
        return (C) this.f.f4085b.f(this.e);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        if (this.e.f3857a) {
            return new w4(this);
        }
        return super.g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        long jDistance = this.e.distance(first(), last());
        if (jDistance >= 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return ((int) jDistance) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public boolean contains(@NullableDecl Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return this.f.contains((Comparable) obj);
        } catch (ClassCastException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        return Collections2.b(this, collection);
    }

    @Override // com.google.common.collect.ContiguousSet
    public ContiguousSet<C> intersection(ContiguousSet<C> contiguousSet) {
        Preconditions.checkNotNull(contiguousSet);
        DiscreteDomain discreteDomain = contiguousSet.e;
        DiscreteDomain discreteDomain2 = this.e;
        Preconditions.checkArgument(discreteDomain2.equals(discreteDomain));
        if (contiguousSet.isEmpty()) {
            return contiguousSet;
        }
        Comparable comparable = (Comparable) Ordering.natural().max(first(), contiguousSet.first());
        Comparable comparable2 = (Comparable) Ordering.natural().min(last(), contiguousSet.last());
        if (comparable.compareTo(comparable2) > 0) {
            return new d1(discreteDomain2);
        }
        return ContiguousSet.create(Range.closed(comparable, comparable2), discreteDomain2);
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range() {
        BoundType boundType = BoundType.CLOSED;
        return range(boundType, boundType);
    }

    @Override // com.google.common.collect.ContiguousSet
    public Range<C> range(BoundType boundType, BoundType boundType2) {
        Range range = this.f;
        w0 w0Var = range.f4084a;
        DiscreteDomain discreteDomain = this.e;
        return new Range<>(w0Var.k(boundType, discreteDomain), range.f4085b.l(boundType2, discreteDomain));
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v4) {
            v4 v4Var = (v4) obj;
            if (this.e.equals(v4Var.e)) {
                return first().equals(v4Var.first()) && last().equals(v4Var.last());
            }
        }
        return super.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.b(this);
    }
}
