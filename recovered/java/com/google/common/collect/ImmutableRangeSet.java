package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterators;
import com.google.common.collect.Range;
import com.google.common.collect.q5;
import com.google.common.collect.w0;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class ImmutableRangeSet<C extends Comparable> extends o<C> implements Serializable {
    public static final ImmutableRangeSet c = new ImmutableRangeSet(ImmutableList.of());
    public static final ImmutableRangeSet d = new ImmutableRangeSet(ImmutableList.of(Range.all()));

    /* renamed from: a, reason: collision with root package name */
    public final transient ImmutableList f3914a;

    /* renamed from: b, reason: collision with root package name */
    public transient ImmutableRangeSet f3915b;

    public static class b<C extends Comparable> implements Serializable {
    }

    public static final class d<C extends Comparable> implements Serializable {
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean contains(Comparable comparable) {
        return super.contains(comparable);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(RangeSet rangeSet) {
        return super.enclosesAll(rangeSet);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean enclosesAll(Iterable iterable) {
        return super.enclosesAll(iterable);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    public final class a extends ImmutableSortedSet<C> {
        public final DiscreteDomain e;
        public transient Integer f;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return ImmutableRangeSet.this.f3914a.isPartialView();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return ImmutableRangeSet.this.f3914a.toString();
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet l(Object obj, boolean z) {
            return ImmutableRangeSet.this.subRangeSet((Range) Range.upTo((Comparable) obj, BoundType.a(z))).asSet(this.e);
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet m(Object obj, boolean z, Object obj2, boolean z2) {
            Comparable comparable = (Comparable) obj;
            Comparable comparable2 = (Comparable) obj2;
            if (!z && !z2) {
                Range range = Range.c;
                if (comparable.compareTo(comparable2) == 0) {
                    return ImmutableSortedSet.of();
                }
            }
            return ImmutableRangeSet.this.subRangeSet((Range) Range.range(comparable, BoundType.a(z), comparable2, BoundType.a(z2))).asSet(this.e);
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet n(Object obj, boolean z) {
            return ImmutableRangeSet.this.subRangeSet((Range) Range.downTo((Comparable) obj, BoundType.a(z))).asSet(this.e);
        }

        public a(DiscreteDomain discreteDomain) {
            super(Ordering.natural());
            this.e = discreteDomain;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Integer numValueOf = this.f;
            if (numValueOf == null) {
                UnmodifiableIterator it = ImmutableRangeSet.this.f3914a.iterator();
                long size = 0;
                while (it.hasNext()) {
                    size += ContiguousSet.create((Range) it.next(), this.e).size();
                    if (size >= 2147483647L) {
                        break;
                    }
                }
                numValueOf = Integer.valueOf(Ints.saturatedCast(size));
                this.f = numValueOf;
            }
            return numValueOf.intValue();
        }

        /* renamed from: com.google.common.collect.ImmutableRangeSet$a$a, reason: collision with other inner class name */
        public class C0102a extends AbstractIterator<C> {
            public final UnmodifiableIterator c;
            public UnmodifiableIterator d = Iterators.j.d;

            public C0102a() {
                this.c = ImmutableRangeSet.this.f3914a.iterator();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.AbstractIterator
            public C computeNext() {
                while (!this.d.hasNext()) {
                    UnmodifiableIterator unmodifiableIterator = this.c;
                    if (unmodifiableIterator.hasNext()) {
                        this.d = ContiguousSet.create((Range) unmodifiableIterator.next(), a.this.e).iterator();
                    } else {
                        return (C) endOfData();
                    }
                }
                return (C) this.d.next();
            }
        }

        @Override // com.google.common.collect.ImmutableSortedSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<C> iterator() {
            return new C0102a();
        }

        public class b extends AbstractIterator<C> {
            public final UnmodifiableIterator c;
            public UnmodifiableIterator d = Iterators.j.d;

            public b() {
                this.c = ImmutableRangeSet.this.f3914a.reverse().iterator();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.AbstractIterator
            public C computeNext() {
                while (!this.d.hasNext()) {
                    UnmodifiableIterator unmodifiableIterator = this.c;
                    if (unmodifiableIterator.hasNext()) {
                        this.d = ContiguousSet.create((Range) unmodifiableIterator.next(), a.this.e).descendingIterator();
                    } else {
                        return (C) endOfData();
                    }
                }
                return (C) this.d.next();
            }
        }

        @Override // com.google.common.collect.ImmutableSortedSet, java.util.NavigableSet
        @GwtIncompatible("NavigableSet")
        public UnmodifiableIterator<C> descendingIterator() {
            return new b();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                return ImmutableRangeSet.this.contains((Comparable) obj);
            } catch (ClassCastException unused) {
                return false;
            }
        }

        @Override // com.google.common.collect.ImmutableSortedSet
        public final ImmutableSortedSet j() {
            return new a1(this);
        }
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of() {
        return c;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> of(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return of();
        }
        if (!range.equals(Range.all())) {
            return new ImmutableRangeSet<>(ImmutableList.of(range));
        }
        return d;
    }

    public static <C extends Comparable> ImmutableRangeSet<C> copyOf(RangeSet<C> rangeSet) {
        Preconditions.checkNotNull(rangeSet);
        if (rangeSet.isEmpty()) {
            return of();
        }
        if (rangeSet.encloses(Range.all())) {
            return d;
        }
        if (rangeSet instanceof ImmutableRangeSet) {
            ImmutableRangeSet<C> immutableRangeSet = (ImmutableRangeSet) rangeSet;
            if (!immutableRangeSet.f3914a.isPartialView()) {
                return immutableRangeSet;
            }
        }
        return new ImmutableRangeSet<>(ImmutableList.copyOf((Collection) rangeSet.asRanges()));
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> copyOf(Iterable<Range<C>> iterable) {
        return new Builder().addAll(iterable).build();
    }

    public static <C extends Comparable<?>> ImmutableRangeSet<C> unionOf(Iterable<Range<C>> iterable) {
        return copyOf(TreeRangeSet.create(iterable));
    }

    public ImmutableRangeSet(ImmutableList immutableList) {
        this.f3914a = immutableList;
    }

    public ImmutableRangeSet(ImmutableList immutableList, ImmutableRangeSet immutableRangeSet) {
        this.f3914a = immutableList;
        this.f3915b = immutableRangeSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public boolean intersects(Range<C> range) {
        Range range2 = Range.c;
        int iBinarySearch = q5.binarySearch(this.f3914a, Range.b.f4087a, range.f4084a, Ordering.natural(), q5.c.f4325a, q5.b.f4324b);
        ImmutableList immutableList = this.f3914a;
        if (iBinarySearch >= immutableList.size() || !((Range) immutableList.get(iBinarySearch)).isConnected(range) || ((Range) immutableList.get(iBinarySearch)).intersection(range).isEmpty()) {
            if (iBinarySearch <= 0) {
                return false;
            }
            int i = iBinarySearch - 1;
            if (!((Range) immutableList.get(i)).isConnected(range) || ((Range) immutableList.get(i)).intersection(range).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        Range range2 = Range.c;
        int iBinarySearch = q5.binarySearch(this.f3914a, Range.b.f4087a, range.f4084a, Ordering.natural(), q5.c.f4325a, q5.b.f4323a);
        return iBinarySearch != -1 && ((Range) this.f3914a.get(iBinarySearch)).encloses(range);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public Range<C> rangeContaining(C c2) {
        Range range = Range.c;
        int iBinarySearch = q5.binarySearch(this.f3914a, Range.b.f4087a, w0.a(c2), Ordering.natural(), q5.c.f4325a, q5.b.f4323a);
        if (iBinarySearch == -1) {
            return null;
        }
        Range<C> range2 = (Range) this.f3914a.get(iBinarySearch);
        if (range2.contains(c2)) {
            return range2;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        ImmutableList immutableList = this.f3914a;
        if (!immutableList.isEmpty()) {
            return new Range<>(((Range) immutableList.get(0)).f4084a, ((Range) immutableList.get(immutableList.size() - 1)).f4085b);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public boolean isEmpty() {
        return this.f3914a.isEmpty();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @Deprecated
    public void add(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @Deprecated
    public void addAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @Deprecated
    public void addAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @Deprecated
    public void remove(Range<C> range) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @Deprecated
    public void removeAll(RangeSet<C> rangeSet) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @Deprecated
    public void removeAll(Iterable<Range<C>> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableSet<Range<C>> asRanges() {
        ImmutableList immutableList = this.f3914a;
        if (immutableList.isEmpty()) {
            return ImmutableSet.of();
        }
        Range range = Range.c;
        return new f5(immutableList, Range.c.f4088a);
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableSet<Range<C>> asDescendingSetOfRanges() {
        ImmutableList immutableList = this.f3914a;
        if (immutableList.isEmpty()) {
            return ImmutableSet.of();
        }
        ImmutableList immutableListReverse = immutableList.reverse();
        Range range = Range.c;
        return new f5(immutableListReverse, Range.c.f4088a.reverse());
    }

    public final class c extends ImmutableList<Range<C>> {
        public final boolean c;
        public final boolean d;
        public final int e;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c() {
            ImmutableList immutableList = ImmutableRangeSet.this.f3914a;
            boolean zHasLowerBound = ((Range) immutableList.get(0)).hasLowerBound();
            this.c = zHasLowerBound;
            boolean zHasUpperBound = ((Range) Iterables.getLast(immutableList)).hasUpperBound();
            this.d = zHasUpperBound;
            int size = immutableList.size();
            size = zHasLowerBound ? size : size - 1;
            this.e = zHasUpperBound ? size + 1 : size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public Range<C> get(int i) {
            w0 w0Var;
            w0 w0Var2;
            int i2 = this.e;
            Preconditions.checkElementIndex(i, i2);
            ImmutableRangeSet immutableRangeSet = ImmutableRangeSet.this;
            boolean z = this.c;
            if (!z) {
                w0Var = ((Range) immutableRangeSet.f3914a.get(i)).f4085b;
            } else if (i == 0) {
                w0Var = w0.d.f4375b;
            } else {
                w0Var = ((Range) immutableRangeSet.f3914a.get(i - 1)).f4085b;
            }
            if (this.d && i == i2 - 1) {
                w0Var2 = w0.b.f4374b;
            } else {
                w0Var2 = ((Range) immutableRangeSet.f3914a.get(i + (!z ? 1 : 0))).f4084a;
            }
            return new Range<>(w0Var, w0Var2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.RangeSet
    public ImmutableRangeSet<C> complement() {
        ImmutableRangeSet<C> immutableRangeSet = this.f3915b;
        if (immutableRangeSet != null) {
            return immutableRangeSet;
        }
        ImmutableList immutableList = this.f3914a;
        if (immutableList.isEmpty()) {
            ImmutableRangeSet<C> immutableRangeSet2 = d;
            this.f3915b = immutableRangeSet2;
            return immutableRangeSet2;
        }
        if (immutableList.size() == 1 && ((Range) immutableList.get(0)).equals(Range.all())) {
            ImmutableRangeSet<C> immutableRangeSetOf = of();
            this.f3915b = immutableRangeSetOf;
            return immutableRangeSetOf;
        }
        ImmutableRangeSet<C> immutableRangeSet3 = new ImmutableRangeSet<>(new c(), this);
        this.f3915b = immutableRangeSet3;
        return immutableRangeSet3;
    }

    public ImmutableRangeSet<C> union(RangeSet<C> rangeSet) {
        return unionOf(Iterables.concat(asRanges(), rangeSet.asRanges()));
    }

    public ImmutableRangeSet<C> intersection(RangeSet<C> rangeSet) {
        TreeRangeSet treeRangeSetCreate = TreeRangeSet.create(this);
        treeRangeSetCreate.removeAll(rangeSet.complement());
        return copyOf(treeRangeSetCreate);
    }

    public ImmutableRangeSet<C> difference(RangeSet<C> rangeSet) {
        TreeRangeSet treeRangeSetCreate = TreeRangeSet.create(this);
        treeRangeSetCreate.removeAll(rangeSet);
        return copyOf(treeRangeSetCreate);
    }

    @Override // com.google.common.collect.RangeSet
    public ImmutableRangeSet<C> subRangeSet(Range<C> range) {
        int iBinarySearch;
        int size;
        if (!isEmpty()) {
            Range<C> rangeSpan = span();
            if (range.encloses(rangeSpan)) {
                return this;
            }
            if (range.isConnected(rangeSpan)) {
                ImmutableList immutableListOf = this.f3914a;
                if (immutableListOf.isEmpty() || range.isEmpty()) {
                    immutableListOf = ImmutableList.of();
                } else if (!range.encloses(span())) {
                    boolean zHasLowerBound = range.hasLowerBound();
                    q5.b.C0116b c0116b = q5.b.f4324b;
                    if (zHasLowerBound) {
                        iBinarySearch = q5.binarySearch(immutableListOf, Range.d.f4089a, range.f4084a, q5.c.d, c0116b);
                    } else {
                        iBinarySearch = 0;
                    }
                    if (range.hasUpperBound()) {
                        size = q5.binarySearch(immutableListOf, Range.b.f4087a, range.f4085b, q5.c.c, c0116b);
                    } else {
                        size = immutableListOf.size();
                    }
                    int i = size - iBinarySearch;
                    if (i == 0) {
                        immutableListOf = ImmutableList.of();
                    } else {
                        immutableListOf = new s2(this, i, iBinarySearch, range);
                    }
                }
                return new ImmutableRangeSet<>(immutableListOf);
            }
        }
        return of();
    }

    public ImmutableSortedSet<C> asSet(DiscreteDomain<C> discreteDomain) {
        Preconditions.checkNotNull(discreteDomain);
        if (isEmpty()) {
            return ImmutableSortedSet.of();
        }
        Range<C> rangeCanonical = span().canonical(discreteDomain);
        if (!rangeCanonical.hasLowerBound()) {
            throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded below");
        }
        if (!rangeCanonical.hasUpperBound()) {
            try {
                discreteDomain.maxValue();
            } catch (NoSuchElementException unused) {
                throw new IllegalArgumentException("Neither the DiscreteDomain nor this range set are bounded above");
            }
        }
        return new a(discreteDomain);
    }

    public static <C extends Comparable<?>> Builder<C> builder() {
        return new Builder<>();
    }

    public static class Builder<C extends Comparable<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f3916a = Lists.newArrayList();

        @CanIgnoreReturnValue
        public Builder<C> add(Range<C> range) {
            Preconditions.checkArgument(!range.isEmpty(), "range must not be empty, but was %s", range);
            this.f3916a.add(range);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<C> addAll(RangeSet<C> rangeSet) {
            return addAll(rangeSet.asRanges());
        }

        @CanIgnoreReturnValue
        public Builder<C> addAll(Iterable<Range<C>> iterable) {
            Iterator<Range<C>> it = iterable.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
            return this;
        }

        public ImmutableRangeSet<C> build() {
            ArrayList arrayList = this.f3916a;
            ImmutableList.Builder builder = new ImmutableList.Builder(arrayList.size());
            Range range = Range.c;
            Collections.sort(arrayList, Range.c.f4088a);
            PeekingIterator peekingIterator = Iterators.peekingIterator(arrayList.iterator());
            while (peekingIterator.hasNext()) {
                Range rangeSpan = (Range) peekingIterator.next();
                while (peekingIterator.hasNext()) {
                    Range<C> range2 = (Range) peekingIterator.peek();
                    if (rangeSpan.isConnected(range2)) {
                        Preconditions.checkArgument(rangeSpan.intersection(range2).isEmpty(), "Overlapping ranges not permitted but found %s overlapping %s", rangeSpan, range2);
                        rangeSpan = rangeSpan.span((Range) peekingIterator.next());
                    }
                }
                builder.add((ImmutableList.Builder) rangeSpan);
            }
            ImmutableList immutableListBuild = builder.build();
            if (immutableListBuild.isEmpty()) {
                return ImmutableRangeSet.of();
            }
            if (immutableListBuild.size() == 1 && ((Range) Iterables.getOnlyElement(immutableListBuild)).equals(Range.all())) {
                return ImmutableRangeSet.d;
            }
            return new ImmutableRangeSet<>(immutableListBuild);
        }
    }
}
