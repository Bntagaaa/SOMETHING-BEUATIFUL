package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
class n1<K, V> extends l<K, V> implements t1<K, V> {
    public final Multimap f;

    /* renamed from: g, reason: collision with root package name */
    public final Predicate f4298g;

    public n1(Multimap multimap, Predicate predicate) {
        this.f = (Multimap) Preconditions.checkNotNull(multimap);
        this.f4298g = (Predicate) Preconditions.checkNotNull(predicate);
    }

    @Override // com.google.common.collect.t1
    public Multimap<K, V> unfiltered() {
        return this.f;
    }

    @Override // com.google.common.collect.t1
    public Predicate<? super Map.Entry<K, V>> entryPredicate() {
        return this.f4298g;
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return entries().size();
    }

    public final class c implements Predicate<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4300a;

        @Override // com.google.common.base.Predicate
        public boolean apply(@NullableDecl V v) {
            return n1.this.f4298g.apply(Maps.immutableEntry(this.f4300a, v));
        }

        public c(Object obj) {
            this.f4300a = obj;
        }
    }

    public static Collection g(Collection collection, Predicate predicate) {
        if (collection instanceof Set) {
            return Sets.filter((Set) collection, predicate);
        }
        return Collections2.filter(collection, predicate);
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@NullableDecl Object obj) {
        return asMap().get(obj) != null;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(@NullableDecl Object obj) {
        Object obj2;
        Collection<V> collectionRemove = asMap().remove(obj);
        if (this.f instanceof SetMultimap) {
            obj2 = Collections.EMPTY_SET;
        } else {
            obj2 = Collections.EMPTY_LIST;
        }
        return (Collection) MoreObjects.firstNonNull(collectionRemove, obj2);
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        entries().clear();
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(K k) {
        return g(this.f.get(k), new c(k));
    }

    @Override // com.google.common.collect.l
    public Collection b() {
        return g(this.f.entries(), this.f4298g);
    }

    @Override // com.google.common.collect.l
    public final Collection e() {
        return new u1(this);
    }

    @Override // com.google.common.collect.l
    public final Iterator f() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.l
    public final Map a() {
        return new a();
    }

    @Override // com.google.common.collect.l
    public final Set c() {
        return asMap().keySet();
    }

    public final boolean h(Predicate predicate) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.f.asMap().entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry<K, Collection<V>> next = it.next();
            K key = next.getKey();
            Collection collectionG = g(next.getValue(), new c(key));
            if (!collectionG.isEmpty() && predicate.apply(Maps.immutableEntry(key, collectionG))) {
                if (collectionG.size() == next.getValue().size()) {
                    it.remove();
                } else {
                    collectionG.clear();
                }
                z = true;
            }
        }
        return z;
    }

    public class a extends Maps.d0<K, Collection<V>> {
        public a() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            n1.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> get(@NullableDecl Object obj) {
            n1 n1Var = n1.this;
            Collection<V> collection = n1Var.f.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionG = n1.g(collection, new c(obj));
            if (collectionG.isEmpty()) {
                return null;
            }
            return collectionG;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> remove(@NullableDecl Object obj) {
            n1 n1Var = n1.this;
            Collection<V> collection = n1Var.f.asMap().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (n1Var.f4298g.apply(Maps.immutableEntry(obj, next))) {
                    it.remove();
                    arrayListNewArrayList.add(next);
                }
            }
            if (arrayListNewArrayList.isEmpty()) {
                return null;
            }
            if (n1Var.f instanceof SetMultimap) {
                return Collections.unmodifiableSet(Sets.newLinkedHashSet(arrayListNewArrayList));
            }
            return Collections.unmodifiableList(arrayListNewArrayList);
        }

        @Override // com.google.common.collect.Maps.d0
        public final Set createKeySet() {
            return new l1(this);
        }

        @Override // com.google.common.collect.Maps.d0
        public final Set createEntrySet() {
            return new k1(this);
        }

        @Override // com.google.common.collect.Maps.d0
        public final Collection a() {
            return new m1(this);
        }
    }

    @Override // com.google.common.collect.l
    public final Multiset d() {
        return new b();
    }

    public class b extends Multimaps.g<K, V> {
        public b() {
            super(n1.this);
        }

        @Override // com.google.common.collect.Multimaps.g, com.google.common.collect.m, com.google.common.collect.Multiset
        public int remove(@NullableDecl Object obj, int i) {
            g0.b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            n1 n1Var = n1.this;
            Collection<V> collection = n1Var.f.asMap().get(obj);
            int i2 = 0;
            if (collection == null) {
                return 0;
            }
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                if (n1Var.f4298g.apply(Maps.immutableEntry(obj, it.next())) && (i2 = i2 + 1) <= i) {
                    it.remove();
                }
            }
            return i2;
        }

        public class a extends Multisets.h<K> {
            public a() {
            }

            @Override // com.google.common.collect.Multisets.h
            public final Multiset a() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Multiset.Entry<K>> iterator() {
                return b.this.d();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return n1.this.keySet().size();
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                Predicate predicateIn = Predicates.in(collection);
                b bVar = b.this;
                return n1.this.h(new o1(predicateIn));
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                Predicate predicateNot = Predicates.not(Predicates.in(collection));
                b bVar = b.this;
                return n1.this.h(new o1(predicateNot));
            }
        }

        @Override // com.google.common.collect.m, com.google.common.collect.Multiset
        public Set<Multiset.Entry<K>> entrySet() {
            return new a();
        }
    }
}
