package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class TreeRangeMap<K extends Comparable, V> implements RangeMap<K, V> {

    /* renamed from: b, reason: collision with root package name */
    public static final RangeMap f4128b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final TreeMap f4129a = Maps.newTreeMap();

    public final class b extends Maps.m<Range<K>, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Collection f4130a;

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return TreeRangeMap.this.f4129a.size();
        }

        public b(Collection collection) {
            this.f4130a = collection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            if (!(obj instanceof Range)) {
                return null;
            }
            Range range = (Range) obj;
            TreeRangeMap treeRangeMap = TreeRangeMap.this;
            c cVar = (c) treeRangeMap.f4129a.get(range.f4084a);
            if (cVar == null || !cVar.getKey().equals(range)) {
                return null;
            }
            return (V) cVar.getValue();
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            return this.f4130a.iterator();
        }
    }

    public class d implements RangeMap<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Range f4134a;

        @Override // com.google.common.collect.RangeMap
        public void putCoalescing(Range<K> range, V v) {
            TreeMap treeMap = TreeRangeMap.this.f4129a;
            if (!treeMap.isEmpty() && !range.isEmpty()) {
                Range range2 = this.f4134a;
                if (range2.encloses(range)) {
                    Object objCheckNotNull = Preconditions.checkNotNull(v);
                    put(TreeRangeMap.a(TreeRangeMap.a(range, objCheckNotNull, treeMap.lowerEntry(range.f4084a)), objCheckNotNull, treeMap.floorEntry(range.f4085b)).intersection(range2), v);
                    return;
                }
            }
            put(range, v);
        }

        @Override // com.google.common.collect.RangeMap
        public Range<K> span() {
            TreeRangeMap treeRangeMap = TreeRangeMap.this;
            Range range = this.f4134a;
            TreeMap treeMap = treeRangeMap.f4129a;
            w0 w0Var = range.f4084a;
            Map.Entry entryFloorEntry = treeMap.floorEntry(w0Var);
            w0 w0Var2 = range.f4085b;
            if ((entryFloorEntry == null || ((c) entryFloorEntry.getValue()).f4132a.f4085b.compareTo(w0Var) <= 0) && ((w0Var = (w0) treeMap.ceilingKey(w0Var)) == null || w0Var.compareTo(w0Var2) >= 0)) {
                throw new NoSuchElementException();
            }
            Map.Entry entryLowerEntry = treeMap.lowerEntry(w0Var2);
            if (entryLowerEntry == null) {
                throw new NoSuchElementException();
            }
            if (((c) entryLowerEntry.getValue()).f4132a.f4085b.compareTo(w0Var2) < 0) {
                w0Var2 = ((c) entryLowerEntry.getValue()).f4132a.f4085b;
            }
            return new Range<>(w0Var, w0Var2);
        }

        public class a extends TreeRangeMap<K, V>.d.b {
            @Override // com.google.common.collect.TreeRangeMap.d.b
            public final UnmodifiableIterator b() {
                d dVar = d.this;
                Range range = dVar.f4134a;
                if (range.isEmpty()) {
                    return Iterators.j.d;
                }
                TreeRangeMap treeRangeMap = TreeRangeMap.this;
                return new j6(this, treeRangeMap.f4129a.headMap(range.f4085b, false).descendingMap().values().iterator());
            }

            public a() {
                super();
            }
        }

        public class b extends AbstractMap<Range<K>, V> {
            public UnmodifiableIterator b() {
                d dVar = d.this;
                Range range = dVar.f4134a;
                if (range.isEmpty()) {
                    return Iterators.j.d;
                }
                TreeRangeMap treeRangeMap = TreeRangeMap.this;
                return new k6(this, treeRangeMap.f4129a.tailMap((w0) MoreObjects.firstNonNull(treeRangeMap.f4129a.floorKey(range.f4084a), range.f4084a), true).values().iterator());
            }

            public b() {
            }

            @Override // java.util.AbstractMap, java.util.Map
            public boolean containsKey(Object obj) {
                return get(obj) != null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V get(Object obj) {
                c cVar;
                d dVar = d.this;
                try {
                    if (obj instanceof Range) {
                        Range range = (Range) obj;
                        Range range2 = dVar.f4134a;
                        if (range2.encloses(range)) {
                            boolean zIsEmpty = range.isEmpty();
                            w0 w0Var = range.f4084a;
                            if (!zIsEmpty) {
                                int iCompareTo = w0Var.compareTo(range2.f4084a);
                                TreeRangeMap treeRangeMap = TreeRangeMap.this;
                                if (iCompareTo == 0) {
                                    Map.Entry entryFloorEntry = treeRangeMap.f4129a.floorEntry(w0Var);
                                    cVar = entryFloorEntry != null ? (c) entryFloorEntry.getValue() : null;
                                } else {
                                    cVar = (c) treeRangeMap.f4129a.get(w0Var);
                                }
                                if (cVar != null && cVar.getKey().isConnected(range2) && cVar.getKey().intersection(range2).equals(range)) {
                                    return (V) cVar.getValue();
                                }
                            }
                        }
                    }
                } catch (ClassCastException unused) {
                }
                return null;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public V remove(Object obj) {
                V v = (V) get(obj);
                if (v == null) {
                    return null;
                }
                TreeRangeMap.this.remove((Range) obj);
                return v;
            }

            @Override // java.util.AbstractMap, java.util.Map
            public void clear() {
                d.this.clear();
            }

            public static boolean a(b bVar, Predicate predicate) {
                ArrayList arrayListNewArrayList = Lists.newArrayList();
                for (Map.Entry<Range<K>, V> entry : bVar.entrySet()) {
                    if (predicate.apply(entry)) {
                        arrayListNewArrayList.add(entry.getKey());
                    }
                }
                Iterator it = arrayListNewArrayList.iterator();
                while (it.hasNext()) {
                    TreeRangeMap.this.remove((Range) it.next());
                }
                return !arrayListNewArrayList.isEmpty();
            }

            public class a extends Maps.n<Range<K>, V> {
                public a(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean remove(@NullableDecl Object obj) {
                    return b.this.remove(obj) != null;
                }

                @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return b.a(b.this, Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4009a));
                }
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Range<K>> keySet() {
                return new a(this);
            }

            /* renamed from: com.google.common.collect.TreeRangeMap$d$b$b, reason: collision with other inner class name */
            public class C0112b extends Maps.f<Range<K>, V> {
                public C0112b() {
                }

                @Override // com.google.common.collect.Maps.f
                public final Map a() {
                    return b.this;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
                public Iterator<Map.Entry<Range<K>, V>> iterator() {
                    return b.this.b();
                }

                @Override // com.google.common.collect.Maps.f, com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean retainAll(Collection<?> collection) {
                    return b.a(b.this, Predicates.not(Predicates.in(collection)));
                }

                @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public int size() {
                    return Iterators.size(iterator());
                }

                @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
                public boolean isEmpty() {
                    return !iterator().hasNext();
                }
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Set<Map.Entry<Range<K>, V>> entrySet() {
                return new C0112b();
            }

            public class c extends Maps.c0<Range<K>, V> {
                public c(Map map) {
                    super(map);
                }

                @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
                public boolean removeAll(Collection<?> collection) {
                    return b.a(b.this, Predicates.compose(Predicates.in(collection), Maps.e.f4010b));
                }

                @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
                public boolean retainAll(Collection<?> collection) {
                    return b.a(b.this, Predicates.compose(Predicates.not(Predicates.in(collection)), Maps.e.f4010b));
                }
            }

            @Override // java.util.AbstractMap, java.util.Map
            public Collection<V> values() {
                return new c(this);
            }
        }

        public d(Range range) {
            this.f4134a = range;
        }

        @Override // com.google.common.collect.RangeMap
        @NullableDecl
        public V get(K k) {
            if (this.f4134a.contains(k)) {
                return (V) TreeRangeMap.this.get(k);
            }
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @NullableDecl
        public Map.Entry<Range<K>, V> getEntry(K k) {
            Map.Entry<Range<K>, V> entry;
            Range range = this.f4134a;
            if (!range.contains(k) || (entry = TreeRangeMap.this.getEntry(k)) == null) {
                return null;
            }
            return Maps.immutableEntry(entry.getKey().intersection(range), entry.getValue());
        }

        @Override // com.google.common.collect.RangeMap
        public void put(Range<K> range, V v) {
            Range range2 = this.f4134a;
            Preconditions.checkArgument(range2.encloses(range), "Cannot put range %s into a subRangeMap(%s)", range, range2);
            TreeRangeMap.this.put(range, v);
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap<K, V> rangeMap) {
            if (rangeMap.asMapOfRanges().isEmpty()) {
                return;
            }
            Range<K> rangeSpan = rangeMap.span();
            Range range = this.f4134a;
            Preconditions.checkArgument(range.encloses(rangeSpan), "Cannot putAll rangeMap with span %s into a subRangeMap(%s)", rangeSpan, range);
            TreeRangeMap.this.putAll(rangeMap);
        }

        @Override // com.google.common.collect.RangeMap
        public void clear() {
            TreeRangeMap.this.remove(this.f4134a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.RangeMap
        public void remove(Range<K> range) {
            Range<C> range2 = this.f4134a;
            if (range.isConnected(range2)) {
                TreeRangeMap.this.remove(range.intersection(range2));
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.RangeMap
        public RangeMap<K, V> subRangeMap(Range<K> range) {
            Range<C> range2 = this.f4134a;
            boolean zIsConnected = range.isConnected(range2);
            TreeRangeMap treeRangeMap = TreeRangeMap.this;
            if (!zIsConnected) {
                RangeMap rangeMap = TreeRangeMap.f4128b;
                treeRangeMap.getClass();
                return TreeRangeMap.f4128b;
            }
            return treeRangeMap.subRangeMap(range.intersection(range2));
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<K>, V> asMapOfRanges() {
            return new b();
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range<K>, V> asDescendingMapOfRanges() {
            return new a();
        }

        @Override // com.google.common.collect.RangeMap
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof RangeMap) {
                return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
            }
            return false;
        }

        @Override // com.google.common.collect.RangeMap
        public int hashCode() {
            return asMapOfRanges().hashCode();
        }

        @Override // com.google.common.collect.RangeMap
        public String toString() {
            return asMapOfRanges().toString();
        }
    }

    public static <K extends Comparable, V> TreeRangeMap<K, V> create() {
        return new TreeRangeMap<>();
    }

    private TreeRangeMap() {
    }

    public static final class c<K extends Comparable, V> extends k<Range<K>, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Range f4132a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f4133b;

        public c(Range range, Object obj) {
            this.f4132a = range;
            this.f4133b = obj;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public Range<K> getKey() {
            return this.f4132a;
        }

        @Override // com.google.common.collect.k, java.util.Map.Entry
        public V getValue() {
            return (V) this.f4133b;
        }

        public boolean contains(K k) {
            return this.f4132a.contains(k);
        }
    }

    @Override // com.google.common.collect.RangeMap
    @NullableDecl
    public V get(K k) {
        Map.Entry<Range<K>, V> entry = getEntry(k);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    @NullableDecl
    public Map.Entry<Range<K>, V> getEntry(K k) {
        Map.Entry entryFloorEntry = this.f4129a.floorEntry(w0.a(k));
        if (entryFloorEntry == null || !((c) entryFloorEntry.getValue()).contains(k)) {
            return null;
        }
        return (Map.Entry) entryFloorEntry.getValue();
    }

    @Override // com.google.common.collect.RangeMap
    public void put(Range<K> range, V v) {
        if (range.isEmpty()) {
            return;
        }
        Preconditions.checkNotNull(v);
        remove(range);
        c cVar = new c(range, v);
        this.f4129a.put(range.f4084a, cVar);
    }

    @Override // com.google.common.collect.RangeMap
    public void putCoalescing(Range<K> range, V v) {
        TreeMap treeMap = this.f4129a;
        if (treeMap.isEmpty()) {
            put(range, v);
        } else {
            Object objCheckNotNull = Preconditions.checkNotNull(v);
            put(a(a(range, objCheckNotNull, treeMap.lowerEntry(range.f4084a)), objCheckNotNull, treeMap.floorEntry(range.f4085b)), v);
        }
    }

    public static Range a(Range range, Object obj, Map.Entry entry) {
        return (entry != null && ((c) entry.getValue()).getKey().isConnected(range) && ((c) entry.getValue()).getValue().equals(obj)) ? range.span(((c) entry.getValue()).getKey()) : range;
    }

    @Override // com.google.common.collect.RangeMap
    public void putAll(RangeMap<K, V> rangeMap) {
        for (Map.Entry<Range<K>, V> entry : rangeMap.asMapOfRanges().entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.RangeMap
    public void clear() {
        this.f4129a.clear();
    }

    @Override // com.google.common.collect.RangeMap
    public Range<K> span() {
        TreeMap treeMap = this.f4129a;
        Map.Entry entryFirstEntry = treeMap.firstEntry();
        Map.Entry entryLastEntry = treeMap.lastEntry();
        if (entryFirstEntry != null) {
            return new Range<>(((c) entryFirstEntry.getValue()).getKey().f4084a, ((c) entryLastEntry.getValue()).getKey().f4085b);
        }
        throw new NoSuchElementException();
    }

    @Override // com.google.common.collect.RangeMap
    public void remove(Range<K> range) {
        if (range.isEmpty()) {
            return;
        }
        TreeMap treeMap = this.f4129a;
        w0 w0Var = range.f4084a;
        Map.Entry entryLowerEntry = treeMap.lowerEntry(w0Var);
        w0 w0Var2 = range.f4085b;
        if (entryLowerEntry != null) {
            c cVar = (c) entryLowerEntry.getValue();
            if (cVar.f4132a.f4085b.compareTo(w0Var) > 0) {
                Range range2 = cVar.f4132a;
                if (range2.f4085b.compareTo(w0Var2) > 0) {
                    treeMap.put(w0Var2, new c(new Range(w0Var2, range2.f4085b), ((c) entryLowerEntry.getValue()).getValue()));
                }
                Object value = ((c) entryLowerEntry.getValue()).getValue();
                w0 w0Var3 = range2.f4084a;
                treeMap.put(w0Var3, new c(new Range(w0Var3, w0Var), value));
            }
        }
        Map.Entry entryLowerEntry2 = treeMap.lowerEntry(w0Var2);
        if (entryLowerEntry2 != null) {
            c cVar2 = (c) entryLowerEntry2.getValue();
            if (cVar2.f4132a.f4085b.compareTo(w0Var2) > 0) {
                w0 w0Var4 = cVar2.f4132a.f4085b;
                treeMap.put(w0Var2, new c(new Range(w0Var2, w0Var4), ((c) entryLowerEntry2.getValue()).getValue()));
            }
        }
        treeMap.subMap(w0Var, w0Var2).clear();
    }

    @Override // com.google.common.collect.RangeMap
    public Map<Range<K>, V> asMapOfRanges() {
        return new b(this.f4129a.values());
    }

    @Override // com.google.common.collect.RangeMap
    public Map<Range<K>, V> asDescendingMapOfRanges() {
        return new b(this.f4129a.descendingMap().values());
    }

    @Override // com.google.common.collect.RangeMap
    public RangeMap<K, V> subRangeMap(Range<K> range) {
        return range.equals(Range.all()) ? this : new d(range);
    }

    public static class a implements RangeMap {
        @Override // com.google.common.collect.RangeMap
        public void clear() {
        }

        @Override // com.google.common.collect.RangeMap
        @NullableDecl
        public Object get(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        @NullableDecl
        public Map.Entry<Range, Object> getEntry(Comparable comparable) {
            return null;
        }

        @Override // com.google.common.collect.RangeMap
        public Range span() {
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.RangeMap
        public void put(Range range, Object obj) {
            Preconditions.checkNotNull(range);
            throw new IllegalArgumentException("Cannot insert range " + range + " into an empty subRangeMap");
        }

        @Override // com.google.common.collect.RangeMap
        public void putCoalescing(Range range, Object obj) {
            Preconditions.checkNotNull(range);
            throw new IllegalArgumentException("Cannot insert range " + range + " into an empty subRangeMap");
        }

        @Override // com.google.common.collect.RangeMap
        public void putAll(RangeMap rangeMap) {
            if (!rangeMap.asMapOfRanges().isEmpty()) {
                throw new IllegalArgumentException("Cannot putAll(nonEmptyRangeMap) into an empty subRangeMap");
            }
        }

        @Override // com.google.common.collect.RangeMap
        public void remove(Range range) {
            Preconditions.checkNotNull(range);
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range, Object> asMapOfRanges() {
            return Collections.EMPTY_MAP;
        }

        @Override // com.google.common.collect.RangeMap
        public Map<Range, Object> asDescendingMapOfRanges() {
            return Collections.EMPTY_MAP;
        }

        @Override // com.google.common.collect.RangeMap
        public RangeMap subRangeMap(Range range) {
            Preconditions.checkNotNull(range);
            return this;
        }
    }

    @Override // com.google.common.collect.RangeMap
    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof RangeMap) {
            return asMapOfRanges().equals(((RangeMap) obj).asMapOfRanges());
        }
        return false;
    }

    @Override // com.google.common.collect.RangeMap
    public int hashCode() {
        return asMapOfRanges().hashCode();
    }

    @Override // com.google.common.collect.RangeMap
    public String toString() {
        return this.f4129a.values().toString();
    }
}
