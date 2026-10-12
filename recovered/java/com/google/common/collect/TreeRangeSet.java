package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import com.google.common.collect.w0;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public class TreeRangeSet<C extends Comparable<?>> extends o<C> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractMap f4141a;

    /* renamed from: b, reason: collision with root package name */
    public transient Set f4142b;
    public transient Set c;
    public transient RangeSet d;

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(RangeSet rangeSet) {
        super.addAll(rangeSet);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void addAll(Iterable iterable) {
        super.addAll(iterable);
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

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(RangeSet rangeSet) {
        super.removeAll(rangeSet);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public /* bridge */ /* synthetic */ void removeAll(Iterable iterable) {
        super.removeAll(iterable);
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create() {
        return new TreeRangeSet<>(new TreeMap());
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(RangeSet<C> rangeSet) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(rangeSet);
        return treeRangeSetCreate;
    }

    public static <C extends Comparable<?>> TreeRangeSet<C> create(Iterable<Range<C>> iterable) {
        TreeRangeSet<C> treeRangeSetCreate = create();
        treeRangeSetCreate.addAll(iterable);
        return treeRangeSetCreate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TreeRangeSet(NavigableMap navigableMap) {
        this.f4141a = (AbstractMap) navigableMap;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractMap, java.util.SortedMap] */
    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asRanges() {
        Set<Range<C>> set = this.f4142b;
        if (set != null) {
            return set;
        }
        b bVar = new b(this.f4141a.values());
        this.f4142b = bVar;
        return bVar;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.RangeSet
    public Set<Range<C>> asDescendingSetOfRanges() {
        Set<Range<C>> set = this.c;
        if (set != null) {
            return set;
        }
        b bVar = new b(this.f4141a.descendingMap().values());
        this.c = bVar;
        return bVar;
    }

    public final class b extends ForwardingCollection<Range<C>> implements Set<Range<C>> {

        /* renamed from: a, reason: collision with root package name */
        public final Collection f4143a;

        public b(Collection collection) {
            this.f4143a = collection;
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Range<C>> delegate() {
            return this.f4143a;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return Sets.a(this, obj);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    @NullableDecl
    public Range<C> rangeContaining(C c2) {
        Preconditions.checkNotNull(c2);
        Map.Entry entryFloorEntry = this.f4141a.floorEntry(w0.a(c2));
        if (entryFloorEntry == null || !((Range) entryFloorEntry.getValue()).contains(c2)) {
            return null;
        }
        return (Range) entryFloorEntry.getValue();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public boolean intersects(Range<C> range) {
        Preconditions.checkNotNull(range);
        w0 w0Var = range.f4084a;
        ?? r1 = this.f4141a;
        Map.Entry entryCeilingEntry = r1.ceilingEntry(w0Var);
        if (entryCeilingEntry != null && ((Range) entryCeilingEntry.getValue()).isConnected(range) && !((Range) entryCeilingEntry.getValue()).intersection(range).isEmpty()) {
            return true;
        }
        Map.Entry entryLowerEntry = r1.lowerEntry(range.f4084a);
        return (entryLowerEntry == null || !((Range) entryLowerEntry.getValue()).isConnected(range) || ((Range) entryLowerEntry.getValue()).intersection(range).isEmpty()) ? false : true;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public boolean encloses(Range<C> range) {
        Preconditions.checkNotNull(range);
        Map.Entry entryFloorEntry = this.f4141a.floorEntry(range.f4084a);
        return entryFloorEntry != null && ((Range) entryFloorEntry.getValue()).encloses(range);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.RangeSet
    public Range<C> span() {
        ?? r0 = this.f4141a;
        Map.Entry entryFirstEntry = r0.firstEntry();
        Map.Entry entryLastEntry = r0.lastEntry();
        if (entryFirstEntry != null) {
            return new Range<>(((Range) entryFirstEntry.getValue()).f4084a, ((Range) entryLastEntry.getValue()).f4085b);
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public void add(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return;
        }
        ?? r0 = this.f4141a;
        w0 w0Var = range.f4084a;
        Map.Entry entryLowerEntry = r0.lowerEntry(w0Var);
        w0 w0Var2 = range.f4085b;
        if (entryLowerEntry != null) {
            Range range2 = (Range) entryLowerEntry.getValue();
            if (range2.f4085b.compareTo(w0Var) >= 0) {
                w0 w0Var3 = range2.f4085b;
                if (w0Var3.compareTo(w0Var2) >= 0) {
                    w0Var2 = w0Var3;
                }
                w0Var = range2.f4084a;
            }
        }
        Map.Entry entryFloorEntry = r0.floorEntry(w0Var2);
        if (entryFloorEntry != null) {
            Range range3 = (Range) entryFloorEntry.getValue();
            if (range3.f4085b.compareTo(w0Var2) >= 0) {
                w0Var2 = range3.f4085b;
            }
        }
        r0.subMap(w0Var, w0Var2).clear();
        a(new Range(w0Var, w0Var2));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.AbstractMap, java.util.NavigableMap] */
    @Override // com.google.common.collect.o, com.google.common.collect.RangeSet
    public void remove(Range<C> range) {
        Preconditions.checkNotNull(range);
        if (range.isEmpty()) {
            return;
        }
        ?? r0 = this.f4141a;
        w0 w0Var = range.f4084a;
        Map.Entry entryLowerEntry = r0.lowerEntry(w0Var);
        w0 w0Var2 = range.f4085b;
        if (entryLowerEntry != null) {
            Range range2 = (Range) entryLowerEntry.getValue();
            if (range2.f4085b.compareTo(w0Var) >= 0) {
                if (range.hasUpperBound()) {
                    w0 w0Var3 = range2.f4085b;
                    if (w0Var3.compareTo(w0Var2) >= 0) {
                        a(new Range(w0Var2, w0Var3));
                    }
                }
                a(new Range(range2.f4084a, w0Var));
            }
        }
        Map.Entry entryFloorEntry = r0.floorEntry(w0Var2);
        if (entryFloorEntry != null) {
            Range range3 = (Range) entryFloorEntry.getValue();
            if (range.hasUpperBound() && range3.f4085b.compareTo(w0Var2) >= 0) {
                a(new Range(w0Var2, range3.f4085b));
            }
        }
        r0.subMap(w0Var, w0Var2).clear();
    }

    public final void a(Range range) {
        boolean zIsEmpty = range.isEmpty();
        AbstractMap abstractMap = this.f4141a;
        w0 w0Var = range.f4084a;
        if (zIsEmpty) {
            abstractMap.remove(w0Var);
        } else {
            abstractMap.put(w0Var, range);
        }
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> complement() {
        RangeSet<C> rangeSet = this.d;
        if (rangeSet != null) {
            return rangeSet;
        }
        c cVar = new c();
        this.d = cVar;
        return cVar;
    }

    @VisibleForTesting
    public static final class e<C extends Comparable<?>> extends n<w0<C>, Range<C>> {

        /* renamed from: a, reason: collision with root package name */
        public final NavigableMap f4146a;

        /* renamed from: b, reason: collision with root package name */
        public final Range f4147b;

        public e(NavigableMap navigableMap) {
            this.f4146a = navigableMap;
            this.f4147b = Range.all();
        }

        public e(NavigableMap navigableMap, Range range) {
            this.f4146a = navigableMap;
            this.f4147b = range;
        }

        public final NavigableMap c(Range range) {
            Range range2 = this.f4147b;
            if (range.isConnected(range2)) {
                return new e(this.f4146a, range.intersection(range2));
            }
            return ImmutableSortedMap.of();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> subMap(w0<C> w0Var, boolean z, w0<C> w0Var2, boolean z2) {
            return c(Range.range(w0Var, BoundType.a(z), w0Var2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> headMap(w0<C> w0Var, boolean z) {
            return c(Range.upTo(w0Var, BoundType.a(z)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> tailMap(w0<C> w0Var, boolean z) {
            return c(Range.downTo(w0Var, BoundType.a(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super w0<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Range<C> get(@NullableDecl Object obj) {
            Map.Entry entryLowerEntry;
            if (obj instanceof w0) {
                try {
                    w0 w0Var = (w0) obj;
                    if (this.f4147b.contains(w0Var) && (entryLowerEntry = this.f4146a.lowerEntry(w0Var)) != null && ((Range) entryLowerEntry.getValue()).f4085b.equals(w0Var)) {
                        return (Range) entryLowerEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            Map.Entry entryLowerEntry;
            Iterator it;
            Range range = this.f4147b;
            boolean zHasLowerBound = range.hasLowerBound();
            NavigableMap navigableMap = this.f4146a;
            if (!zHasLowerBound || (entryLowerEntry = navigableMap.lowerEntry(range.lowerEndpoint())) == null) {
                it = navigableMap.values().iterator();
            } else if (range.f4084a.g(((Range) entryLowerEntry.getValue()).f4085b)) {
                it = navigableMap.tailMap(entryLowerEntry.getKey(), true).values().iterator();
            } else {
                it = navigableMap.tailMap(range.lowerEndpoint(), true).values().iterator();
            }
            return new n6(this, it);
        }

        @Override // com.google.common.collect.n
        public final Iterator b() {
            Collection collectionValues;
            Range range = this.f4147b;
            boolean zHasUpperBound = range.hasUpperBound();
            NavigableMap navigableMap = this.f4146a;
            if (zHasUpperBound) {
                collectionValues = navigableMap.headMap(range.upperEndpoint(), false).descendingMap().values();
            } else {
                collectionValues = navigableMap.descendingMap().values();
            }
            PeekingIterator peekingIterator = Iterators.peekingIterator(collectionValues.iterator());
            if (peekingIterator.hasNext()) {
                if (range.f4085b.g(((Range) peekingIterator.peek()).f4085b)) {
                    peekingIterator.next();
                }
            }
            return new o6(this, peekingIterator);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            if (this.f4147b.equals(Range.all())) {
                return this.f4146a.size();
            }
            return Iterators.size(a());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            if (this.f4147b.equals(Range.all())) {
                return this.f4146a.isEmpty();
            }
            return !a().hasNext();
        }
    }

    public static final class d<C extends Comparable<?>> extends n<w0<C>, Range<C>> {

        /* renamed from: a, reason: collision with root package name */
        public final AbstractMap f4144a;

        /* renamed from: b, reason: collision with root package name */
        public final NavigableMap f4145b;
        public final Range c;

        /* JADX WARN: Multi-variable type inference failed */
        public d(NavigableMap navigableMap, Range range) {
            this.f4144a = (AbstractMap) navigableMap;
            this.f4145b = new e(navigableMap);
            this.c = range;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.util.AbstractMap, java.util.NavigableMap] */
        public final NavigableMap c(Range range) {
            Range range2 = this.c;
            if (!range2.isConnected(range)) {
                return ImmutableSortedMap.of();
            }
            return new d(this.f4144a, range.intersection(range2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> subMap(w0<C> w0Var, boolean z, w0<C> w0Var2, boolean z2) {
            return c(Range.range(w0Var, BoundType.a(z), w0Var2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> headMap(w0<C> w0Var, boolean z) {
            return c(Range.upTo(w0Var, BoundType.a(z)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> tailMap(w0<C> w0Var, boolean z) {
            return c(Range.downTo(w0Var, BoundType.a(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super w0<C>> comparator() {
            return Ordering.natural();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            Collection collectionValues;
            Range range = this.c;
            boolean zHasLowerBound = range.hasLowerBound();
            NavigableMap navigableMap = this.f4145b;
            if (zHasLowerBound) {
                collectionValues = navigableMap.tailMap(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED).values();
            } else {
                collectionValues = ((AbstractMap) navigableMap).values();
            }
            PeekingIterator peekingIterator = Iterators.peekingIterator(collectionValues.iterator());
            w0 w0Var = w0.d.f4375b;
            if (!range.contains(w0Var) || (peekingIterator.hasNext() && ((Range) peekingIterator.peek()).f4084a == w0Var)) {
                if (!peekingIterator.hasNext()) {
                    return Iterators.j.d;
                }
                w0Var = ((Range) peekingIterator.next()).f4085b;
            }
            return new l6(this, w0Var, peekingIterator);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.AbstractMap, java.util.Map, java.util.NavigableMap] */
        @Override // com.google.common.collect.n
        public final Iterator b() {
            w0 w0Var;
            w0 w0Var2;
            Range range = this.c;
            if (!range.hasUpperBound()) {
                w0Var = w0.b.f4374b;
            } else {
                w0Var = (w0) range.upperEndpoint();
            }
            PeekingIterator peekingIterator = Iterators.peekingIterator(this.f4145b.headMap(w0Var, range.hasUpperBound() && range.upperBoundType() == BoundType.CLOSED).descendingMap().values().iterator());
            boolean zHasNext = peekingIterator.hasNext();
            ?? r3 = this.f4144a;
            if (!zHasNext) {
                w0.d dVar = w0.d.f4375b;
                if (!range.contains(dVar) || r3.containsKey(dVar)) {
                    return Iterators.j.d;
                }
                w0Var2 = (w0) r3.higherKey(dVar);
            } else if (((Range) peekingIterator.peek()).f4085b == w0.b.f4374b) {
                w0Var2 = ((Range) peekingIterator.next()).f4084a;
            } else {
                w0Var2 = (w0) r3.higherKey(((Range) peekingIterator.peek()).f4085b);
            }
            return new m6(this, (w0) MoreObjects.firstNonNull(w0Var2, w0.b.f4374b), peekingIterator);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(a());
        }

        @Override // java.util.AbstractMap, java.util.Map
        @NullableDecl
        public Range<C> get(Object obj) {
            if (obj instanceof w0) {
                try {
                    w0<C> w0Var = (w0) obj;
                    Map.Entry<w0<C>, Range<C>> entryFirstEntry = tailMap((w0) w0Var, true).firstEntry();
                    if (entryFirstEntry != null && entryFirstEntry.getKey().equals(w0Var)) {
                        return entryFirstEntry.getValue();
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }
    }

    public final class c extends TreeRangeSet<C> {
        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.AbstractMap, java.util.NavigableMap] */
        public c() {
            super(new d(TreeRangeSet.this.f4141a, Range.all()));
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            TreeRangeSet.this.remove(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            TreeRangeSet.this.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return !TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> complement() {
            return TreeRangeSet.this;
        }
    }

    public static final class g<C extends Comparable<?>> extends n<w0<C>, Range<C>> {

        /* renamed from: a, reason: collision with root package name */
        public final Range f4148a;

        /* renamed from: b, reason: collision with root package name */
        public final Range f4149b;
        public final NavigableMap c;
        public final NavigableMap d;

        public g(Range range, Range range2, NavigableMap navigableMap) {
            this.f4148a = (Range) Preconditions.checkNotNull(range);
            this.f4149b = (Range) Preconditions.checkNotNull(range2);
            this.c = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.d = new e(navigableMap);
        }

        public final NavigableMap c(Range range) {
            Range range2 = this.f4148a;
            if (!range.isConnected(range2)) {
                return ImmutableSortedMap.of();
            }
            return new g(range2.intersection(range), this.f4149b, this.c);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> subMap(w0<C> w0Var, boolean z, w0<C> w0Var2, boolean z2) {
            return c(Range.range(w0Var, BoundType.a(z), w0Var2, BoundType.a(z2)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> headMap(w0<C> w0Var, boolean z) {
            return c(Range.upTo(w0Var, BoundType.a(z)));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<w0<C>, Range<C>> tailMap(w0<C> w0Var, boolean z) {
            return c(Range.downTo(w0Var, BoundType.a(z)));
        }

        @Override // java.util.SortedMap
        public Comparator<? super w0<C>> comparator() {
            return Ordering.natural();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        @NullableDecl
        public Range<C> get(@NullableDecl Object obj) {
            Range range = this.f4149b;
            if (obj instanceof w0) {
                try {
                    w0 w0Var = (w0) obj;
                    if (this.f4148a.contains(w0Var) && w0Var.compareTo(range.f4084a) >= 0 && w0Var.compareTo(range.f4085b) < 0) {
                        boolean zEquals = w0Var.equals(range.f4084a);
                        NavigableMap navigableMap = this.c;
                        if (zEquals) {
                            Map.Entry entryFloorEntry = navigableMap.floorEntry(w0Var);
                            Range range2 = (Range) (entryFloorEntry == null ? null : entryFloorEntry.getValue());
                            if (range2 != null && range2.f4085b.compareTo(range.f4084a) > 0) {
                                return range2.intersection(range);
                            }
                        } else {
                            Range range3 = (Range) navigableMap.get(w0Var);
                            if (range3 != null) {
                                return range3.intersection(range);
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            Iterator it;
            Range range = this.f4149b;
            if (range.isEmpty()) {
                return Iterators.j.d;
            }
            Range range2 = this.f4148a;
            w0 w0Var = range2.f4085b;
            w0 w0Var2 = range.f4084a;
            if (w0Var.g(w0Var2)) {
                return Iterators.j.d;
            }
            w0 w0Var3 = range2.f4084a;
            if (w0Var3.g(w0Var2)) {
                it = this.d.tailMap(w0Var2, false).values().iterator();
            } else {
                it = this.c.tailMap(w0Var3.e(), range2.lowerBoundType() == BoundType.CLOSED).values().iterator();
            }
            return new p6(this, it, (w0) Ordering.natural().min(range2.f4085b, w0.a(range.f4085b)));
        }

        @Override // com.google.common.collect.n
        public final Iterator b() {
            Range range = this.f4149b;
            if (range.isEmpty()) {
                return Iterators.j.d;
            }
            w0 w0Var = (w0) Ordering.natural().min(this.f4148a.f4085b, w0.a(range.f4085b));
            return new q6(this, this.c.headMap(w0Var.e(), w0Var.j() == BoundType.CLOSED).descendingMap().values().iterator());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return Iterators.size(a());
        }
    }

    @Override // com.google.common.collect.RangeSet
    public RangeSet<C> subRangeSet(Range<C> range) {
        return range.equals(Range.all()) ? this : new f(range);
    }

    public final class f extends TreeRangeSet<C> {
        public final Range e;

        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.AbstractMap, java.util.NavigableMap] */
        public f(Range range) {
            super(new g(Range.all(), range, TreeRangeSet.this.f4141a));
            this.e = range;
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [java.util.AbstractMap, java.util.NavigableMap] */
        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public boolean encloses(Range<C> range) {
            Range range2 = this.e;
            if (range2.isEmpty() || !range2.encloses(range)) {
                return false;
            }
            TreeRangeSet treeRangeSet = TreeRangeSet.this;
            Preconditions.checkNotNull(range);
            Map.Entry entryFloorEntry = treeRangeSet.f4141a.floorEntry(range.f4084a);
            Range range3 = (entryFloorEntry == null || !((Range) entryFloorEntry.getValue()).encloses(range)) ? null : (Range) entryFloorEntry.getValue();
            return (range3 == null || range3.intersection(range2).isEmpty()) ? false : true;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        @NullableDecl
        public Range<C> rangeContaining(C c) {
            Range<C> rangeRangeContaining;
            Range range = this.e;
            if (range.contains(c) && (rangeRangeContaining = TreeRangeSet.this.rangeContaining(c)) != null) {
                return rangeRangeContaining.intersection(range);
            }
            return null;
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public void add(Range<C> range) {
            Range range2 = this.e;
            Preconditions.checkArgument(range2.encloses(range), "Cannot add range %s to subRangeSet(%s)", range, range2);
            super.add(range);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public void remove(Range<C> range) {
            Range<C> range2 = this.e;
            if (range.isConnected(range2)) {
                TreeRangeSet.this.remove(range.intersection(range2));
            }
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public boolean contains(C c) {
            return this.e.contains(c) && TreeRangeSet.this.contains(c);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.o, com.google.common.collect.RangeSet
        public void clear() {
            TreeRangeSet.this.remove(this.e);
        }

        @Override // com.google.common.collect.TreeRangeSet, com.google.common.collect.RangeSet
        public RangeSet<C> subRangeSet(Range<C> range) {
            Range<C> range2 = this.e;
            if (range.encloses(range2)) {
                return this;
            }
            if (range.isConnected(range2)) {
                return new f(range2.intersection(range));
            }
            return ImmutableRangeSet.of();
        }
    }
}
