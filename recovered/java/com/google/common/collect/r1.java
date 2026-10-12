package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
class r1<K, V> extends l<K, V> implements t1<K, V> {
    public final Multimap f;

    /* renamed from: g, reason: collision with root package name */
    public final Predicate f4328g;

    public r1(Multimap multimap, Predicate predicate) {
        this.f = (Multimap) Preconditions.checkNotNull(multimap);
        this.f4328g = (Predicate) Preconditions.checkNotNull(predicate);
    }

    public Multimap<K, V> unfiltered() {
        return this.f;
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        Iterator<Collection<V>> it = asMap().values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@NullableDecl Object obj) {
        if (this.f.containsKey(obj)) {
            return this.f4328g.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> removeAll(Object obj) {
        boolean zContainsKey = containsKey(obj);
        Multimap multimap = this.f;
        if (zContainsKey) {
            return multimap.removeAll(obj);
        }
        if (multimap instanceof SetMultimap) {
            return ImmutableSet.of();
        }
        return ImmutableList.of();
    }

    @Override // com.google.common.collect.Multimap
    public void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.l
    public final Set c() {
        return Sets.filter(this.f.keySet(), this.f4328g);
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Collection<V> get(K k) {
        boolean zApply = this.f4328g.apply(k);
        Multimap multimap = this.f;
        if (zApply) {
            return multimap.get(k);
        }
        if (multimap instanceof SetMultimap) {
            return new b(k);
        }
        return new a(k);
    }

    public static class b<K, V> extends ForwardingSet<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4330a;

        public b(Object obj) {
            this.f4330a = obj;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f4330a);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f4330a);
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<V> delegate() {
            return Collections.EMPTY_SET;
        }
    }

    public static class a<K, V> extends ForwardingList<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4329a;

        public a(Object obj) {
            this.f4329a = obj;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            add(0, v);
            return true;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        public void add(int i, V v) {
            Preconditions.checkPositionIndex(i, 0);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f4329a);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }

        @Override // com.google.common.collect.ForwardingList, java.util.List
        @CanIgnoreReturnValue
        public boolean addAll(int i, Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            Preconditions.checkPositionIndex(i, 0);
            throw new IllegalArgumentException("Key does not satisfy predicate: " + this.f4329a);
        }

        @Override // com.google.common.collect.ForwardingList, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public List<V> delegate() {
            return Collections.EMPTY_LIST;
        }
    }

    @Override // com.google.common.collect.l
    public final Iterator f() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.l
    public Collection b() {
        return new c();
    }

    public class c extends ForwardingCollection<Map.Entry<K, V>> {
        public c() {
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            r1 r1Var = r1.this;
            return Collections2.filter(r1Var.f.entries(), r1Var.entryPredicate());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean remove(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            r1 r1Var = r1.this;
            if (r1Var.f.containsKey(entry.getKey()) && r1Var.f4328g.apply(entry.getKey())) {
                return r1Var.f.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }
    }

    @Override // com.google.common.collect.l
    public final Collection e() {
        return new u1(this);
    }

    @Override // com.google.common.collect.l
    public final Map a() {
        return Maps.filterKeys(this.f.asMap(), this.f4328g);
    }

    @Override // com.google.common.collect.l
    public final Multiset d() {
        return Multisets.filter(this.f.keys(), this.f4328g);
    }

    @Override // com.google.common.collect.t1
    public Predicate<? super Map.Entry<K, V>> entryPredicate() {
        return Predicates.compose(this.f4328g, Maps.e.f4009a);
    }
}
