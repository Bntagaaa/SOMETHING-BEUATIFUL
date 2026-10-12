package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.l;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class g<K, V> extends com.google.common.collect.l<K, V> implements Serializable {
    public final transient Map f;

    /* renamed from: g, reason: collision with root package name */
    public transient int f4206g;

    public class f extends g<K, V>.j implements RandomAccess {
    }

    public abstract Collection createCollection();

    public class a extends Maps.d0<K, Collection<V>> {
        public final transient Map d;

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            g gVar = g.this;
            if (this.d == gVar.f) {
                gVar.clear();
            } else {
                Iterators.b(new b());
            }
        }

        public a(Map map) {
            this.d = map;
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<K, Collection<V>>> createEntrySet() {
            return new C0114a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.g(this.d, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> get(Object obj) {
            Collection collection = (Collection) Maps.h(this.d, obj);
            if (collection == null) {
                return null;
            }
            return g.this.m(obj, collection);
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return g.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.d.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> remove(Object obj) {
            Collection<? extends V> collection = (Collection) this.d.remove(obj);
            if (collection == null) {
                return null;
            }
            g gVar = g.this;
            Collection<V> collectionCreateCollection = gVar.createCollection();
            collectionCreateCollection.addAll(collection);
            gVar.f4206g -= collection.size();
            collection.clear();
            return collectionCreateCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@NullableDecl Object obj) {
            return this == obj || this.d.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.d.hashCode();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.d.toString();
        }

        public final Map.Entry b(Map.Entry entry) {
            Object key = entry.getKey();
            return Maps.immutableEntry(key, g.this.m(key, (Collection) entry.getValue()));
        }

        /* renamed from: com.google.common.collect.g$a$a, reason: collision with other inner class name */
        public class C0114a extends Maps.f<K, Collection<V>> {
            public C0114a() {
            }

            @Override // com.google.common.collect.Maps.f
            public final Map a() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return a.this.new b();
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return Collections2.c(obj, a.this.d.entrySet());
            }

            @Override // com.google.common.collect.Maps.f, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                Object objRemove;
                if (!contains(obj)) {
                    return false;
                }
                g gVar = g.this;
                Object key = ((Map.Entry) obj).getKey();
                Map map = gVar.f;
                Preconditions.checkNotNull(map);
                try {
                    objRemove = map.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    objRemove = null;
                }
                Collection collection = (Collection) objRemove;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                gVar.f4206g -= size;
                return true;
            }
        }

        public class b implements Iterator<Map.Entry<K, Collection<V>>> {

            /* renamed from: a, reason: collision with root package name */
            public final Iterator f4208a;

            /* renamed from: b, reason: collision with root package name */
            public Collection f4209b;

            public b() {
                this.f4208a = a.this.d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f4208a.hasNext();
            }

            @Override // java.util.Iterator
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry entry = (Map.Entry) this.f4208a.next();
                this.f4209b = (Collection) entry.getValue();
                return a.this.b(entry);
            }

            @Override // java.util.Iterator
            public void remove() {
                g0.e(this.f4209b != null);
                this.f4208a.remove();
                g.this.f4206g -= this.f4209b.size();
                this.f4209b.clear();
                this.f4209b = null;
            }
        }
    }

    public g(Map<K, Collection<V>> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.f = map;
    }

    public Collection j() {
        return k(createCollection());
    }

    public Collection g(Object obj) {
        return createCollection();
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.f4206g;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f.containsKey(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public boolean put(@NullableDecl K k2, @NullableDecl V v) {
        Map map = this.f;
        Collection collection = (Collection) map.get(k2);
        if (collection == null) {
            Collection collectionG = g(k2);
            if (collectionG.add(v)) {
                this.f4206g++;
                map.put(k2, collectionG);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        }
        if (!collection.add(v)) {
            return false;
        }
        this.f4206g++;
        return true;
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> replaceValues(@NullableDecl K k2, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (it.hasNext()) {
            Map map = this.f;
            Collection collectionG = (Collection) map.get(k2);
            if (collectionG == null) {
                collectionG = g(k2);
                map.put(k2, collectionG);
            }
            Collection collectionCreateCollection = createCollection();
            collectionCreateCollection.addAll(collectionG);
            this.f4206g -= collectionG.size();
            collectionG.clear();
            while (it.hasNext()) {
                if (collectionG.add(it.next())) {
                    this.f4206g++;
                }
            }
            return k(collectionCreateCollection);
        }
        return removeAll(k2);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@NullableDecl Object obj) {
        Collection collection = (Collection) this.f.remove(obj);
        if (collection == null) {
            return j();
        }
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collection);
        this.f4206g -= collection.size();
        collection.clear();
        return k(collectionCreateCollection);
    }

    public Collection k(Collection collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        Map map = this.f;
        Iterator<V> it = map.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        map.clear();
        this.f4206g = 0;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(@NullableDecl K k2) {
        Collection collectionG = (Collection) this.f.get(k2);
        if (collectionG == null) {
            collectionG = g(k2);
        }
        return m(k2, collectionG);
    }

    public Collection m(Object obj, Collection collection) {
        return new i(obj, collection, null);
    }

    public class i extends AbstractCollection<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4216a;

        /* renamed from: b, reason: collision with root package name */
        public Collection f4217b;
        public final i c;
        public final Collection d;

        public i(Object obj, Collection collection, i iVar) {
            this.f4216a = obj;
            this.f4217b = collection;
            this.c = iVar;
            this.d = iVar == null ? null : iVar.f4217b;
        }

        public final void b() {
            Collection collection;
            i iVar = this.c;
            if (iVar != null) {
                iVar.b();
                if (iVar.f4217b != this.d) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f4217b.isEmpty() || (collection = (Collection) g.this.f.get(this.f4216a)) == null) {
                    return;
                }
                this.f4217b = collection;
            }
        }

        public final void c() {
            i iVar = this.c;
            if (iVar != null) {
                iVar.c();
            } else if (this.f4217b.isEmpty()) {
                g.this.f.remove(this.f4216a);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a() {
            i iVar = this.c;
            if (iVar != null) {
                iVar.a();
            } else {
                g.this.f.put(this.f4216a, this.f4217b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            b();
            return this.f4217b.size();
        }

        @Override // java.util.Collection
        public boolean equals(@NullableDecl Object obj) {
            if (obj == this) {
                return true;
            }
            b();
            return this.f4217b.equals(obj);
        }

        @Override // java.util.Collection
        public int hashCode() {
            b();
            return this.f4217b.hashCode();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            b();
            return this.f4217b.toString();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            b();
            return new a();
        }

        public class a implements Iterator<V> {

            /* renamed from: a, reason: collision with root package name */
            public final Iterator f4218a;

            /* renamed from: b, reason: collision with root package name */
            public final Collection f4219b;

            public a() {
                Iterator it;
                Collection collection = i.this.f4217b;
                this.f4219b = collection;
                if (collection instanceof List) {
                    it = ((List) collection).listIterator();
                } else {
                    it = collection.iterator();
                }
                this.f4218a = it;
            }

            public a(Iterator it) {
                this.f4219b = i.this.f4217b;
                this.f4218a = it;
            }

            public final void a() {
                i iVar = i.this;
                iVar.b();
                if (iVar.f4217b != this.f4219b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f4218a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                a();
                return (V) this.f4218a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f4218a.remove();
                i iVar = i.this;
                g gVar = g.this;
                gVar.f4206g--;
                iVar.c();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            b();
            boolean zIsEmpty = this.f4217b.isEmpty();
            boolean zAdd = this.f4217b.add(v);
            if (zAdd) {
                g.this.f4206g++;
                if (zIsEmpty) {
                    a();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.f4217b.addAll(collection);
            if (zAddAll) {
                int size2 = this.f4217b.size();
                g gVar = g.this;
                gVar.f4206g = (size2 - size) + gVar.f4206g;
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            b();
            return this.f4217b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            b();
            return this.f4217b.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f4217b.clear();
            g.this.f4206g -= size;
            c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            b();
            boolean zRemove = this.f4217b.remove(obj);
            if (zRemove) {
                g gVar = g.this;
                gVar.f4206g--;
                c();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f4217b.removeAll(collection);
            if (zRemoveAll) {
                int size2 = this.f4217b.size();
                g gVar = g.this;
                gVar.f4206g = (size2 - size) + gVar.f4206g;
                c();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            int size = size();
            boolean zRetainAll = this.f4217b.retainAll(collection);
            if (zRetainAll) {
                int size2 = this.f4217b.size();
                g gVar = g.this;
                gVar.f4206g = (size2 - size) + gVar.f4206g;
                c();
            }
            return zRetainAll;
        }
    }

    public class k extends g<K, V>.m implements NavigableSet<V> {
        @Override // com.google.common.collect.g.m
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public final NavigableSet d() {
            return (NavigableSet) ((SortedSet) this.f4217b);
        }

        public k(Object obj, NavigableSet navigableSet, i iVar) {
            super(obj, navigableSet, iVar);
        }

        @Override // java.util.NavigableSet
        public V lower(V v) {
            return (V) d().lower(v);
        }

        @Override // java.util.NavigableSet
        public V floor(V v) {
            return (V) d().floor(v);
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v) {
            return (V) d().ceiling(v);
        }

        @Override // java.util.NavigableSet
        public V higher(V v) {
            return (V) d().higher(v);
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) Iterators.c(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) Iterators.c(descendingIterator());
        }

        public final NavigableSet f(NavigableSet navigableSet) {
            i iVar = this.c;
            if (iVar == null) {
                iVar = this;
            }
            return new k(this.f4216a, navigableSet, iVar);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return f(d().descendingSet());
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new i.a(d().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v, boolean z, V v2, boolean z2) {
            return f(d().subSet(v, z, v2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v, boolean z) {
            return f(d().headSet(v, z));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v, boolean z) {
            return f(d().tailSet(v, z));
        }
    }

    public class m extends g<K, V>.i implements SortedSet<V> {
        public SortedSet d() {
            return (SortedSet) this.f4217b;
        }

        public m(Object obj, SortedSet sortedSet, i iVar) {
            super(obj, sortedSet, iVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return d().comparator();
        }

        @Override // java.util.SortedSet
        public V first() {
            b();
            return (V) d().first();
        }

        @Override // java.util.SortedSet
        public V last() {
            b();
            return (V) d().last();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v) {
            b();
            SortedSet sortedSetHeadSet = d().headSet(v);
            i iVar = this.c;
            if (iVar == null) {
                iVar = this;
            }
            return new m(this.f4216a, sortedSetHeadSet, iVar);
        }

        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v, V v2) {
            b();
            SortedSet sortedSetSubSet = d().subSet(v, v2);
            i iVar = this.c;
            if (iVar == null) {
                iVar = this;
            }
            return new m(this.f4216a, sortedSetSubSet, iVar);
        }

        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v) {
            b();
            SortedSet sortedSetTailSet = d().tailSet(v);
            i iVar = this.c;
            if (iVar == null) {
                iVar = this;
            }
            return new m(this.f4216a, sortedSetTailSet, iVar);
        }
    }

    public class j extends g<K, V>.i implements List<V> {

        public class a extends g<K, V>.i.a implements ListIterator<V> {
            public final ListIterator b() {
                a();
                return (ListIterator) this.f4218a;
            }

            public a() {
                super();
            }

            public a(int i) {
                super(((List) j.this.f4217b).listIterator(i));
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return (V) b().previous();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                b().set(v);
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                j jVar = j.this;
                boolean zIsEmpty = jVar.isEmpty();
                b().add(v);
                g.this.f4206g++;
                if (zIsEmpty) {
                    jVar.a();
                }
            }
        }

        public j(Object obj, List list, i iVar) {
            super(obj, list, iVar);
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = ((List) this.f4217b).addAll(i, collection);
            if (zAddAll) {
                int size2 = this.f4217b.size();
                g gVar = g.this;
                gVar.f4206g = (size2 - size) + gVar.f4206g;
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public V get(int i) {
            b();
            return (V) ((List) this.f4217b).get(i);
        }

        @Override // java.util.List
        public V set(int i, V v) {
            b();
            return (V) ((List) this.f4217b).set(i, v);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            b();
            boolean zIsEmpty = this.f4217b.isEmpty();
            ((List) this.f4217b).add(i, v);
            g.this.f4206g++;
            if (zIsEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public V remove(int i) {
            b();
            V v = (V) ((List) this.f4217b).remove(i);
            g gVar = g.this;
            gVar.f4206g--;
            c();
            return v;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            b();
            return ((List) this.f4217b).indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            b();
            return ((List) this.f4217b).lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            b();
            return new a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            b();
            return new a(i);
        }

        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            b();
            List listSubList = ((List) this.f4217b).subList(i, i2);
            i iVar = this.c;
            if (iVar == null) {
                iVar = this;
            }
            g gVar = g.this;
            gVar.getClass();
            boolean z = listSubList instanceof RandomAccess;
            Object obj = this.f4216a;
            if (!z) {
                return new j(obj, listSubList, iVar);
            }
            return new f(obj, listSubList, iVar);
        }
    }

    public class l extends g<K, V>.i implements Set<V> {
        public l(Object obj, Set set) {
            super(obj, set, null);
        }

        @Override // com.google.common.collect.g.i, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zC = Sets.c((Set) this.f4217b, collection);
            if (zC) {
                int size2 = this.f4217b.size();
                g gVar = g.this;
                gVar.f4206g = (size2 - size) + gVar.f4206g;
                c();
            }
            return zC;
        }
    }

    @Override // com.google.common.collect.l
    public Set c() {
        return new c(this.f);
    }

    public final Set i() {
        Map map = this.f;
        if (map instanceof NavigableMap) {
            return new e((NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new h((SortedMap) map);
        }
        return new c(map);
    }

    public class c extends Maps.n<K, Collection<V>> {
        public c(Map map) {
            super(map);
        }

        public class a implements Iterator<K> {

            /* renamed from: a, reason: collision with root package name */
            public Map.Entry f4213a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ Iterator f4214b;

            public a(Iterator it) {
                this.f4214b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f4214b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry entry = (Map.Entry) this.f4214b.next();
                this.f4213a = entry;
                return (K) entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                g0.e(this.f4213a != null);
                Collection collection = (Collection) this.f4213a.getValue();
                this.f4214b.remove();
                g.this.f4206g -= collection.size();
                collection.clear();
                this.f4213a = null;
            }
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this.f4020a.entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) this.f4020a.remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                g.this.f4206g -= size;
            } else {
                size = 0;
            }
            return size > 0;
        }

        @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.b(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.f4020a.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return this == obj || this.f4020a.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.f4020a.keySet().hashCode();
        }
    }

    public class h extends g<K, V>.c implements SortedSet<K> {
        public h(SortedMap sortedMap) {
            super(sortedMap);
        }

        public SortedMap b() {
            return (SortedMap) this.f4020a;
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return (K) b().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new h(b().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return (K) b().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new h(b().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new h(b().tailMap(k));
        }
    }

    public class e extends g<K, V>.h implements NavigableSet<K> {
        @Override // com.google.common.collect.g.h
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final NavigableMap b() {
            return (NavigableMap) ((SortedMap) this.f4020a);
        }

        @Override // com.google.common.collect.g.h, java.util.SortedSet, java.util.NavigableSet
        public /* bridge */ /* synthetic */ SortedSet headSet(Object obj) {
            return headSet((e) obj);
        }

        @Override // com.google.common.collect.g.h, java.util.SortedSet, java.util.NavigableSet
        public /* bridge */ /* synthetic */ SortedSet tailSet(Object obj) {
            return tailSet((e) obj);
        }

        public e(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return (K) b().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return (K) b().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return (K) b().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return (K) b().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Iterators.c(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Iterators.c(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new e(b().descendingMap());
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // com.google.common.collect.g.h, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return new e(b().headMap(k, z));
        }

        @Override // com.google.common.collect.g.h, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new e(b().subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.g.h, java.util.SortedSet, java.util.NavigableSet
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return new e(b().tailMap(k, z));
        }
    }

    public abstract class b<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator f4210a;

        /* renamed from: b, reason: collision with root package name */
        public Object f4211b = null;
        public Collection c = null;
        public Iterator d = Iterators.l.f3953a;

        public abstract Object a(Object obj, Object obj2);

        public b() {
            this.f4210a = g.this.f.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f4210a.hasNext() || this.d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f4210a.next();
                this.f4211b = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.c = collection;
                this.d = collection.iterator();
            }
            return (T) a(this.f4211b, this.d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.d.remove();
            if (this.c.isEmpty()) {
                this.f4210a.remove();
            }
            g gVar = g.this;
            gVar.f4206g--;
        }
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }

    @Override // com.google.common.collect.l
    public final Collection e() {
        return new l.c(this);
    }

    public Iterator l() {
        return new com.google.common.collect.e();
    }

    @Override // com.google.common.collect.l
    public final Multiset d() {
        return new Multimaps.g(this);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.l
    public final Collection b() {
        if (this instanceof SetMultimap) {
            return new l.b();
        }
        return new l.a();
    }

    @Override // com.google.common.collect.l
    public Iterator f() {
        return new com.google.common.collect.f();
    }

    @Override // com.google.common.collect.l
    public Map a() {
        return new a(this.f);
    }

    public final Map h() {
        Map map = this.f;
        if (map instanceof NavigableMap) {
            return new d((NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new C0115g((SortedMap) map);
        }
        return new a(map);
    }

    /* renamed from: com.google.common.collect.g$g, reason: collision with other inner class name */
    public class C0115g extends g<K, V>.a implements SortedMap<K, Collection<V>> {
        public SortedSet f;

        public C0115g(SortedMap sortedMap) {
            super(sortedMap);
        }

        public SortedMap d() {
            return (SortedMap) this.d;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return d().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return (K) d().firstKey();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return (K) d().lastKey();
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new C0115g(d().headMap(k));
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new C0115g(d().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new C0115g(d().tailMap(k));
        }

        @Override // com.google.common.collect.g.a, com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetCreateKeySet = createKeySet();
            this.f = sortedSetCreateKeySet;
            return sortedSetCreateKeySet;
        }

        @Override // com.google.common.collect.Maps.d0
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public SortedSet createKeySet() {
            return new h(d());
        }
    }

    public class d extends g<K, V>.C0115g implements NavigableMap<K, Collection<V>> {
        @Override // com.google.common.collect.g.C0115g
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final NavigableMap d() {
            return (NavigableMap) ((SortedMap) this.d);
        }

        @Override // com.google.common.collect.g.C0115g, java.util.SortedMap, java.util.NavigableMap
        public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
            return headMap((d) obj);
        }

        @Override // com.google.common.collect.g.C0115g, java.util.SortedMap, java.util.NavigableMap
        public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
            return tailMap((d) obj);
        }

        public d(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, V> entryLowerEntry = d().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return b(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return (K) d().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, V> entryFloorEntry = d().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return b(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return (K) d().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, V> entryCeilingEntry = d().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return b(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return (K) d().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, V> entryHigherEntry = d().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return b(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return (K) d().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, V> entryFirstEntry = d().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return b(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, V> entryLastEntry = d().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return b(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return e(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return e(descendingMap().entrySet().iterator());
        }

        public final Map.Entry e(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            g gVar = g.this;
            Collection collectionCreateCollection = gVar.createCollection();
            collectionCreateCollection.addAll((Collection) entry.getValue());
            it.remove();
            return Maps.immutableEntry(entry.getKey(), gVar.k(collectionCreateCollection));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new d(d().descendingMap());
        }

        @Override // com.google.common.collect.g.C0115g, com.google.common.collect.g.a, com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // com.google.common.collect.g.C0115g
        /* renamed from: c */
        public final SortedSet createKeySet() {
            return new e(d());
        }

        @Override // com.google.common.collect.g.C0115g, com.google.common.collect.Maps.d0
        public final Set createKeySet() {
            return new e(d());
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return keySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // com.google.common.collect.g.C0115g, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new d(d().subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.g.C0115g, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new d(d().headMap(k, z));
        }

        @Override // com.google.common.collect.g.C0115g, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new d(d().tailMap(k, z));
        }
    }
}
