package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.g;
import com.google.common.collect.l;
import com.google.common.collect.y5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Multimaps {
    private Multimaps() {
    }

    public static <K, V> Multimap<K, V> newMultimap(Map<K, Collection<V>> map, Supplier<? extends Collection<V>> supplier) {
        c cVar = new c(map);
        cVar.h = (Supplier) Preconditions.checkNotNull(supplier);
        return cVar;
    }

    public static class c<K, V> extends com.google.common.collect.g<K, V> {
        public transient Supplier h;

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Set c() {
            return i();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Map a() {
            return h();
        }

        @Override // com.google.common.collect.g
        public Collection<V> createCollection() {
            return (Collection) this.h.get();
        }

        @Override // com.google.common.collect.g
        public final Collection k(Collection collection) {
            if (collection instanceof NavigableSet) {
                return Sets.unmodifiableNavigableSet((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            if (collection instanceof Set) {
                return Collections.unmodifiableSet((Set) collection);
            }
            if (collection instanceof List) {
                return Collections.unmodifiableList((List) collection);
            }
            return Collections.unmodifiableCollection(collection);
        }

        @Override // com.google.common.collect.g
        public final Collection m(Object obj, Collection collection) {
            if (collection instanceof List) {
                List list = (List) collection;
                if (!(list instanceof RandomAccess)) {
                    return new g.j(obj, list, null);
                }
                return new g.f(obj, list, null);
            }
            if (collection instanceof NavigableSet) {
                return new g.k(obj, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new g.m(obj, (SortedSet) collection, null);
            }
            if (collection instanceof Set) {
                return new g.l(obj, (Set) collection);
            }
            return new g.i(obj, collection, null);
        }
    }

    public static <K, V> ListMultimap<K, V> newListMultimap(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
        b bVar = new b(map);
        bVar.h = (Supplier) Preconditions.checkNotNull(supplier);
        return bVar;
    }

    public static class b<K, V> extends com.google.common.collect.d<K, V> {
        public transient Supplier h;

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Set c() {
            return i();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Map a() {
            return h();
        }

        @Override // com.google.common.collect.d, com.google.common.collect.g
        public List<V> createCollection() {
            return (List) this.h.get();
        }
    }

    public static <K, V> SetMultimap<K, V> newSetMultimap(Map<K, Collection<V>> map, Supplier<? extends Set<V>> supplier) {
        d dVar = new d(map);
        dVar.h = (Supplier) Preconditions.checkNotNull(supplier);
        return dVar;
    }

    public static class d<K, V> extends p<K, V> {
        public transient Supplier h;

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Set c() {
            return i();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Map a() {
            return h();
        }

        @Override // com.google.common.collect.p, com.google.common.collect.g
        public Set<V> createCollection() {
            return (Set) this.h.get();
        }

        @Override // com.google.common.collect.p, com.google.common.collect.g
        public final Collection k(Collection collection) {
            if (collection instanceof NavigableSet) {
                return Sets.unmodifiableNavigableSet((NavigableSet) collection);
            }
            if (collection instanceof SortedSet) {
                return Collections.unmodifiableSortedSet((SortedSet) collection);
            }
            return Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.p, com.google.common.collect.g
        public final Collection m(Object obj, Collection collection) {
            if (collection instanceof NavigableSet) {
                return new g.k(obj, (NavigableSet) collection, null);
            }
            if (collection instanceof SortedSet) {
                return new g.m(obj, (SortedSet) collection, null);
            }
            return new g.l(obj, (Set) collection);
        }
    }

    public static <K, V> SortedSetMultimap<K, V> newSortedSetMultimap(Map<K, Collection<V>> map, Supplier<? extends SortedSet<V>> supplier) {
        e eVar = new e(map);
        eVar.h = (Supplier) Preconditions.checkNotNull(supplier);
        eVar.i = supplier.get().comparator();
        return eVar;
    }

    public static class e<K, V> extends t<K, V> {
        public transient Supplier h;
        public transient Comparator i;

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Set c() {
            return i();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.l
        public final Map a() {
            return h();
        }

        @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.g
        public SortedSet<V> createCollection() {
            return (SortedSet) this.h.get();
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return this.i;
        }
    }

    @CanIgnoreReturnValue
    public static <K, V, M extends Multimap<K, V>> M invertFrom(Multimap<? extends V, ? extends K> multimap, M m2) {
        Preconditions.checkNotNull(m2);
        for (Map.Entry<? extends V, ? extends K> entry : multimap.entries()) {
            m2.put(entry.getValue(), entry.getKey());
        }
        return m2;
    }

    public static <K, V> Multimap<K, V> synchronizedMultimap(Multimap<K, V> multimap) {
        return ((multimap instanceof y5.l) || (multimap instanceof d0)) ? multimap : new y5.l(multimap, null);
    }

    public static <K, V> Multimap<K, V> unmodifiableMultimap(Multimap<K, V> multimap) {
        return ((multimap instanceof l) || (multimap instanceof ImmutableMultimap)) ? multimap : new l(multimap);
    }

    @Deprecated
    public static <K, V> Multimap<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> immutableMultimap) {
        return (Multimap) Preconditions.checkNotNull(immutableMultimap);
    }

    public static class l<K, V> extends ForwardingMultimap<K, V> implements Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Multimap f4069a;

        /* renamed from: b, reason: collision with root package name */
        public transient Collection f4070b;
        public transient Multiset c;
        public transient Set d;
        public transient Collection e;
        public transient Map f;

        public l(Multimap multimap) {
            this.f4069a = (Multimap) Preconditions.checkNotNull(multimap);
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public Multimap<K, V> delegate() {
            return this.f4069a;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Map<K, Collection<V>> asMap() {
            Map<K, Collection<V>> map = this.f;
            if (map != null) {
                return map;
            }
            Map<K, Collection<V>> mapUnmodifiableMap = Collections.unmodifiableMap(Maps.transformValues(this.f4069a.asMap(), new a()));
            this.f = mapUnmodifiableMap;
            return mapUnmodifiableMap;
        }

        public class a implements Function<Collection<V>, Collection<V>> {
            @Override // com.google.common.base.Function
            public Collection<V> apply(Collection<V> collection) {
                return Multimaps.a(collection);
            }
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<Map.Entry<K, V>> entries() {
            Collection<Map.Entry<K, V>> yVar;
            Collection<Map.Entry<K, V>> collection = this.f4070b;
            if (collection != null) {
                return collection;
            }
            Collection<Map.Entry<K, V>> collectionEntries = this.f4069a.entries();
            if (!(collectionEntries instanceof Set)) {
                yVar = new Maps.y<>(Collections.unmodifiableCollection(collectionEntries));
            } else {
                yVar = new Maps.z<>(Collections.unmodifiableSet((Set) collectionEntries));
            }
            this.f4070b = yVar;
            return yVar;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> get(K k) {
            return Multimaps.a(this.f4069a.get(k));
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Multiset<K> keys() {
            Multiset<K> multiset = this.c;
            if (multiset != null) {
                return multiset;
            }
            Multiset<K> multisetUnmodifiableMultiset = Multisets.unmodifiableMultiset(this.f4069a.keys());
            this.c = multisetUnmodifiableMultiset;
            return multisetUnmodifiableMultiset;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<K> keySet() {
            Set<K> set = this.d;
            if (set != null) {
                return set;
            }
            Set<K> setUnmodifiableSet = Collections.unmodifiableSet(this.f4069a.keySet());
            this.d = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Collection<V> values() {
            Collection<V> collection = this.e;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionUnmodifiableCollection = Collections.unmodifiableCollection(this.f4069a.values());
            this.e = collectionUnmodifiableCollection;
            return collectionUnmodifiableCollection;
        }
    }

    public static class k<K, V> extends l<K, V> implements ListMultimap<K, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((k<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((k<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public ListMultimap<K, V> delegate() {
            return (ListMultimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> get(K k) {
            return Collections.unmodifiableList(delegate().get((ListMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    public static class m<K, V> extends l<K, V> implements SetMultimap<K, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((m<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((m<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public SetMultimap<K, V> delegate() {
            return (SetMultimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(K k) {
            return Collections.unmodifiableSet(delegate().get((SetMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return new Maps.z(Collections.unmodifiableSet(delegate().entries()));
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> ListMultimap<K, V> synchronizedListMultimap(ListMultimap<K, V> listMultimap) {
        return ((listMultimap instanceof y5.j) || (listMultimap instanceof d0)) ? listMultimap : new y5.j(listMultimap, null);
    }

    public static class n<K, V> extends m<K, V> implements SortedSetMultimap<K, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((n<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Set get(Object obj) {
            return get((n<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((n<K, V>) obj, iterable);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Set replaceValues(Object obj, Iterable iterable) {
            return replaceValues((n<K, V>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.ForwardingObject
        public SortedSetMultimap<K, V> delegate() {
            return (SortedSetMultimap) super.delegate();
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> get(K k) {
            return Collections.unmodifiableSortedSet(delegate().get((SortedSetMultimap<K, V>) k));
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> removeAll(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.m, com.google.common.collect.Multimaps.l, com.google.common.collect.ForwardingMultimap, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public SortedSet<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.SortedSetMultimap
        public Comparator<? super V> valueComparator() {
            return delegate().valueComparator();
        }
    }

    public static <K, V> SetMultimap<K, V> synchronizedSetMultimap(SetMultimap<K, V> setMultimap) {
        return ((setMultimap instanceof y5.t) || (setMultimap instanceof d0)) ? setMultimap : new y5.t(setMultimap, null);
    }

    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(SetMultimap<K, V> setMultimap) {
        return ((setMultimap instanceof m) || (setMultimap instanceof ImmutableSetMultimap)) ? setMultimap : new m(setMultimap);
    }

    public static <K, V> SortedSetMultimap<K, V> synchronizedSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap instanceof y5.w ? sortedSetMultimap : new y5.w(sortedSetMultimap, null);
    }

    @Deprecated
    public static <K, V> SetMultimap<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> immutableSetMultimap) {
        return (SetMultimap) Preconditions.checkNotNull(immutableSetMultimap);
    }

    public static <K, V> SortedSetMultimap<K, V> unmodifiableSortedSetMultimap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap instanceof n ? sortedSetMultimap : new n(sortedSetMultimap);
    }

    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ListMultimap<K, V> listMultimap) {
        return ((listMultimap instanceof k) || (listMultimap instanceof ImmutableListMultimap)) ? listMultimap : new k(listMultimap);
    }

    @Deprecated
    public static <K, V> ListMultimap<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> immutableListMultimap) {
        return (ListMultimap) Preconditions.checkNotNull(immutableListMultimap);
    }

    public static Collection a(Collection collection) {
        if (collection instanceof SortedSet) {
            return Collections.unmodifiableSortedSet((SortedSet) collection);
        }
        if (collection instanceof Set) {
            return Collections.unmodifiableSet((Set) collection);
        }
        if (collection instanceof List) {
            return Collections.unmodifiableList((List) collection);
        }
        return Collections.unmodifiableCollection(collection);
    }

    @Beta
    public static <K, V> Map<K, List<V>> asMap(ListMultimap<K, V> listMultimap) {
        return listMultimap.asMap();
    }

    @Beta
    public static <K, V> Map<K, Set<V>> asMap(SetMultimap<K, V> setMultimap) {
        return setMultimap.asMap();
    }

    @Beta
    public static <K, V> Map<K, SortedSet<V>> asMap(SortedSetMultimap<K, V> sortedSetMultimap) {
        return sortedSetMultimap.asMap();
    }

    @Beta
    public static <K, V> Map<K, Collection<V>> asMap(Multimap<K, V> multimap) {
        return multimap.asMap();
    }

    public static <K, V> SetMultimap<K, V> forMap(Map<K, V> map) {
        return new h(map);
    }

    public static class h<K, V> extends com.google.common.collect.l<K, V> implements SetMultimap<K, V>, Serializable {
        public final Map f;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((h<K, V>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((h<K, V>) obj, iterable);
        }

        public h(Map map) {
            this.f = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.f.size();
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            return this.f.containsKey(obj);
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean containsValue(Object obj) {
            return this.f.containsValue(obj);
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean containsEntry(Object obj, Object obj2) {
            return this.f.entrySet().contains(Maps.immutableEntry(obj, obj2));
        }

        public class a extends Sets.k<V> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Object f4064a;

            public a(Object obj) {
                this.f4064a = obj;
            }

            /* renamed from: com.google.common.collect.Multimaps$h$a$a, reason: collision with other inner class name */
            public class C0106a implements Iterator<V> {

                /* renamed from: a, reason: collision with root package name */
                public int f4066a;

                public C0106a() {
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.f4066a != 0) {
                        return false;
                    }
                    a aVar = a.this;
                    return h.this.f.containsKey(aVar.f4064a);
                }

                @Override // java.util.Iterator
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.f4066a++;
                    a aVar = a.this;
                    return (V) h.this.f.get(aVar.f4064a);
                }

                @Override // java.util.Iterator
                public void remove() {
                    g0.e(this.f4066a == 1);
                    this.f4066a = -1;
                    a aVar = a.this;
                    h.this.f.remove(aVar.f4064a);
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new C0106a();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return h.this.f.containsKey(this.f4064a) ? 1 : 0;
            }
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> get(K k) {
            return new a(k);
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            return this.f.entrySet().remove(Maps.immutableEntry(obj, obj2));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Set<V> removeAll(Object obj) {
            HashSet hashSet = new HashSet(2);
            Map map = this.f;
            if (!map.containsKey(obj)) {
                return hashSet;
            }
            hashSet.add(map.remove(obj));
            return hashSet;
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.f.clear();
        }

        @Override // com.google.common.collect.l
        public final Set c() {
            return this.f.keySet();
        }

        @Override // com.google.common.collect.l
        public final Collection e() {
            return this.f.values();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public Set<Map.Entry<K, V>> entries() {
            return this.f.entrySet();
        }

        @Override // com.google.common.collect.l
        public final Collection b() {
            throw new AssertionError("unreachable");
        }

        @Override // com.google.common.collect.l
        public final Multiset d() {
            return new g(this);
        }

        @Override // com.google.common.collect.l
        public final Iterator f() {
            return this.f.entrySet().iterator();
        }

        @Override // com.google.common.collect.l
        public final Map a() {
            return new a(this);
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public int hashCode() {
            return this.f.hashCode();
        }
    }

    public static <K, V1, V2> Multimap<K, V2> transformValues(Multimap<K, V1> multimap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function);
        return transformEntries(multimap, new z3(function));
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformValues(ListMultimap<K, V1> listMultimap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        Preconditions.checkNotNull(function);
        return transformEntries((ListMultimap) listMultimap, (Maps.EntryTransformer) new z3(function));
    }

    public static <K, V1, V2> Multimap<K, V2> transformEntries(Multimap<K, V1> multimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new j(multimap, entryTransformer);
    }

    public static <K, V1, V2> ListMultimap<K, V2> transformEntries(ListMultimap<K, V1> listMultimap, Maps.EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new i(listMultimap, entryTransformer);
    }

    public static class j<K, V1, V2> extends com.google.common.collect.l<K, V2> {
        public final Multimap f;

        /* renamed from: g, reason: collision with root package name */
        public final Maps.EntryTransformer f4068g;

        public j(Multimap multimap, Maps.EntryTransformer entryTransformer) {
            this.f = (Multimap) Preconditions.checkNotNull(multimap);
            this.f4068g = (Maps.EntryTransformer) Preconditions.checkNotNull(entryTransformer);
        }

        @Override // com.google.common.collect.l
        public final Map a() {
            return Maps.transformEntries(this.f.asMap(), new f4(this));
        }

        @Override // com.google.common.collect.Multimap
        public void clear() {
            this.f.clear();
        }

        @Override // com.google.common.collect.Multimap
        public boolean containsKey(Object obj) {
            return this.f.containsKey(obj);
        }

        @Override // com.google.common.collect.l
        public final Collection b() {
            return new l.a();
        }

        @Override // com.google.common.collect.l
        public final Iterator f() {
            Iterator it = this.f.entries().iterator();
            Maps.EntryTransformer entryTransformer = this.f4068g;
            Preconditions.checkNotNull(entryTransformer);
            return Iterators.transform(it, new q3(entryTransformer));
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> get(K k) {
            return g(k, this.f.get(k));
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean isEmpty() {
            return this.f.isEmpty();
        }

        @Override // com.google.common.collect.l
        public final Set c() {
            return this.f.keySet();
        }

        @Override // com.google.common.collect.l
        public final Multiset d() {
            return this.f.keys();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean put(K k, V2 v2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean putAll(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean putAll(Multimap<? extends K, ? extends V2> multimap) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.l, com.google.common.collect.Multimap
        public boolean remove(Object obj, Object obj2) {
            return get(obj).remove(obj2);
        }

        @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> removeAll(Object obj) {
            return g(obj, this.f.removeAll(obj));
        }

        @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public Collection<V2> replaceValues(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimap
        public int size() {
            return this.f.size();
        }

        @Override // com.google.common.collect.l
        public final Collection e() {
            Collection collectionEntries = this.f.entries();
            Maps.EntryTransformer entryTransformer = this.f4068g;
            Preconditions.checkNotNull(entryTransformer);
            return Collections2.transform(collectionEntries, new o3(entryTransformer));
        }

        public Collection g(Object obj, Collection collection) {
            Maps.EntryTransformer entryTransformer = this.f4068g;
            Preconditions.checkNotNull(entryTransformer);
            n3 n3Var = new n3(entryTransformer, obj);
            if (collection instanceof List) {
                return Lists.transform((List) collection, n3Var);
            }
            return Collections2.transform(collection, n3Var);
        }
    }

    public static final class i<K, V1, V2> extends j<K, V1, V2> implements ListMultimap<K, V2> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection get(Object obj) {
            return get((i<K, V1, V2>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
            return replaceValues((i<K, V1, V2>) obj, iterable);
        }

        @Override // com.google.common.collect.Multimaps.j
        public final Collection g(Object obj, Collection collection) {
            Maps.EntryTransformer entryTransformer = this.f4068g;
            Preconditions.checkNotNull(entryTransformer);
            return Lists.transform((List) collection, new n3(entryTransformer, obj));
        }

        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> get(K k) {
            List list = (List) this.f.get(k);
            Maps.EntryTransformer entryTransformer = this.f4068g;
            Preconditions.checkNotNull(entryTransformer);
            return Lists.transform(list, new n3(entryTransformer, k));
        }

        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> removeAll(Object obj) {
            List list = (List) this.f.removeAll(obj);
            Maps.EntryTransformer entryTransformer = this.f4068g;
            Preconditions.checkNotNull(entryTransformer);
            return Lists.transform(list, new n3(entryTransformer, obj));
        }

        @Override // com.google.common.collect.Multimaps.j, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
        public List<V2> replaceValues(K k, Iterable<? extends V2> iterable) {
            throw new UnsupportedOperationException();
        }
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> iterable, Function<? super V, K> function) {
        return index(iterable.iterator(), function);
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> it, Function<? super V, K> function) {
        Preconditions.checkNotNull(function);
        ImmutableListMultimap.Builder builder = ImmutableListMultimap.builder();
        while (it.hasNext()) {
            V next = it.next();
            Preconditions.checkNotNull(next, it);
            builder.put((ImmutableListMultimap.Builder) function.apply(next), (K) next);
        }
        return builder.build();
    }

    public static class g<K, V> extends com.google.common.collect.m<K> {
        public final Multimap c;

        public g(Multimap multimap) {
            this.c = multimap;
        }

        @Override // com.google.common.collect.m
        public final Iterator d() {
            return new e4(this.c.asMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.m
        public final int b() {
            return this.c.asMap().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return this.c.size();
        }

        @Override // com.google.common.collect.m, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@NullableDecl Object obj) {
            return this.c.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<K> iterator() {
            return new r3(this.c.entries().iterator());
        }

        @Override // com.google.common.collect.Multiset
        public int count(@NullableDecl Object obj) {
            Collection collection = (Collection) Maps.h(this.c.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // com.google.common.collect.m, com.google.common.collect.Multiset
        public int remove(@NullableDecl Object obj, int i) {
            g0.b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.h(this.c.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i >= size) {
                collection.clear();
                return size;
            }
            Iterator it = collection.iterator();
            for (int i2 = 0; i2 < i; i2++) {
                it.next();
                it.remove();
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.c.clear();
        }

        @Override // com.google.common.collect.m, com.google.common.collect.Multiset
        public Set<K> elementSet() {
            return this.c.keySet();
        }

        @Override // com.google.common.collect.m
        public final Iterator c() {
            throw new AssertionError("should never be called");
        }
    }

    public static abstract class f<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        public abstract Multimap a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }
    }

    public static final class a<K, V> extends Maps.d0<K, Collection<V>> {
        public final Multimap d;

        /* renamed from: com.google.common.collect.Multimaps$a$a, reason: collision with other inner class name */
        public class C0104a extends Maps.f<K, Collection<V>> {
            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                Set<K> setKeySet = a.this.d.keySet();
                return new t3(setKeySet.iterator(), new C0105a());
            }

            public C0104a() {
            }

            @Override // com.google.common.collect.Maps.f
            public final Map a() {
                return a.this;
            }

            /* renamed from: com.google.common.collect.Multimaps$a$a$a, reason: collision with other inner class name */
            public class C0105a implements Function<K, Collection<V>> {
                public C0105a() {
                }

                @Override // com.google.common.base.Function
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply((C0105a) obj);
                }

                @Override // com.google.common.base.Function
                public Collection<V> apply(K k) {
                    return a.this.d.get(k);
                }
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                a.this.d.keySet().remove(((Map.Entry) obj).getKey());
                return true;
            }
        }

        public a(Multimap multimap) {
            this.d = (Multimap) Preconditions.checkNotNull(multimap);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.d.keySet().size();
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<K, Collection<V>>> createEntrySet() {
            return new C0104a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> get(Object obj) {
            if (containsKey(obj)) {
                return this.d.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> remove(Object obj) {
            if (containsKey(obj)) {
                return this.d.removeAll(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.d.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.d.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.d.clear();
        }
    }

    public static <K, V> Multimap<K, V> filterKeys(Multimap<K, V> multimap, Predicate<? super K> predicate) {
        if (multimap instanceof SetMultimap) {
            return filterKeys((SetMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof ListMultimap) {
            return filterKeys((ListMultimap) multimap, (Predicate) predicate);
        }
        if (multimap instanceof r1) {
            r1 r1Var = (r1) multimap;
            return new r1(r1Var.f, Predicates.and(r1Var.f4328g, predicate));
        }
        if (multimap instanceof t1) {
            t1 t1Var = (t1) multimap;
            return new n1(t1Var.unfiltered(), Predicates.and(t1Var.entryPredicate(), Predicates.compose(predicate, Maps.e.f4009a)));
        }
        return new r1(multimap, predicate);
    }

    public static <K, V> SetMultimap<K, V> filterKeys(SetMultimap<K, V> setMultimap, Predicate<? super K> predicate) {
        if (setMultimap instanceof s1) {
            s1 s1Var = (s1) setMultimap;
            return new s1(s1Var.unfiltered(), Predicates.and(s1Var.f4328g, predicate));
        }
        if (!(setMultimap instanceof v1)) {
            return new s1(setMultimap, predicate);
        }
        v1 v1Var = (v1) setMultimap;
        return new p1(v1Var.unfiltered(), Predicates.and(v1Var.entryPredicate(), Predicates.compose(predicate, Maps.e.f4009a)));
    }

    public static <K, V> ListMultimap<K, V> filterKeys(ListMultimap<K, V> listMultimap, Predicate<? super K> predicate) {
        if (!(listMultimap instanceof q1)) {
            return new q1(listMultimap, predicate);
        }
        q1 q1Var = (q1) listMultimap;
        return new q1(q1Var.unfiltered(), Predicates.and(q1Var.f4328g, predicate));
    }

    public static <K, V> Multimap<K, V> filterEntries(Multimap<K, V> multimap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (multimap instanceof SetMultimap) {
            return filterEntries((SetMultimap) multimap, (Predicate) predicate);
        }
        if (!(multimap instanceof t1)) {
            return new n1((Multimap) Preconditions.checkNotNull(multimap), predicate);
        }
        t1 t1Var = (t1) multimap;
        return new n1(t1Var.unfiltered(), Predicates.and(t1Var.entryPredicate(), predicate));
    }

    public static <K, V> SetMultimap<K, V> filterEntries(SetMultimap<K, V> setMultimap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (!(setMultimap instanceof v1)) {
            return new p1((SetMultimap) Preconditions.checkNotNull(setMultimap), predicate);
        }
        v1 v1Var = (v1) setMultimap;
        return new p1(v1Var.unfiltered(), Predicates.and(v1Var.entryPredicate(), predicate));
    }

    public static <K, V> Multimap<K, V> filterValues(Multimap<K, V> multimap, Predicate<? super V> predicate) {
        return filterEntries(multimap, Predicates.compose(predicate, Maps.e.f4010b));
    }

    public static <K, V> SetMultimap<K, V> filterValues(SetMultimap<K, V> setMultimap, Predicate<? super V> predicate) {
        return filterEntries((SetMultimap) setMultimap, Predicates.compose(predicate, Maps.e.f4010b));
    }
}
