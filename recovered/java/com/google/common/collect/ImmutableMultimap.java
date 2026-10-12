package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Multiset;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class ImmutableMultimap<K, V> extends d0<K, V> implements Serializable {
    public final transient ImmutableMap f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f3901g;

    @GwtIncompatible
    public static final class d implements Serializable {
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public abstract ImmutableCollection<V> get(K k);

    public abstract ImmutableMultimap<V, K> inverse();

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean containsEntry(@NullableDecl Object obj, @NullableDecl Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((ImmutableMultimap<K, V>) obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    @Deprecated
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((ImmutableMultimap<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.l
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v) {
        return ImmutableListMultimap.of((Object) k, (Object) v);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    @DoNotMock
    public static class Builder<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Map f3902a = k0.create();

        /* renamed from: b, reason: collision with root package name */
        public Comparator f3903b;
        public Comparator c;

        public Collection a() {
            return new ArrayList();
        }

        @CanIgnoreReturnValue
        public Builder<K, V> put(K k, V v) {
            g0.a(k, v);
            Map map = this.f3902a;
            Collection collectionA = (Collection) map.get(k);
            if (collectionA == null) {
                collectionA = a();
                map.put(k, collectionA);
            }
            collectionA.add(v);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            return put(entry.getKey(), entry.getValue());
        }

        @CanIgnoreReturnValue
        @Beta
        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> putAll(K k, Iterable<? extends V> iterable) {
            if (k == null) {
                throw new NullPointerException("null key in entry: null=" + Iterables.toString(iterable));
            }
            Map map = this.f3902a;
            Collection collection = (Collection) map.get(k);
            if (collection != null) {
                for (V v : iterable) {
                    g0.a(k, v);
                    collection.add(v);
                }
            } else {
                Iterator<? extends V> it = iterable.iterator();
                if (it.hasNext()) {
                    Collection collectionA = a();
                    while (it.hasNext()) {
                        V next = it.next();
                        g0.a(k, next);
                        collectionA.add(next);
                    }
                    map.put(k, collectionA);
                    return this;
                }
            }
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> putAll(K k, V... vArr) {
            return putAll((Builder<K, V>) k, Arrays.asList(vArr));
        }

        @CanIgnoreReturnValue
        public Builder<K, V> putAll(Multimap<? extends K, ? extends V> multimap) {
            for (Map.Entry<? extends K, Collection<? extends V>> entry : multimap.asMap().entrySet()) {
                putAll((Builder<K, V>) entry.getKey(), entry.getValue());
            }
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> orderKeysBy(Comparator<? super K> comparator) {
            this.f3903b = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> orderValuesBy(Comparator<? super V> comparator) {
            this.c = (Comparator) Preconditions.checkNotNull(comparator);
            return this;
        }

        public ImmutableMultimap<K, V> build() {
            Collection collectionEntrySet = this.f3902a.entrySet();
            Comparator comparator = this.f3903b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onResultOf(Maps.e.f4009a).immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableListMultimap.g(this.c, collectionEntrySet);
        }
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Multimap<? extends K, ? extends V> multimap) {
        if (multimap instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) multimap;
            if (!immutableMultimap.f.f()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((Multimap) multimap);
    }

    @Beta
    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    @GwtIncompatible
    public static class b {
        static {
            k5.a(ImmutableMultimap.class, "map");
            k5.a(ImmutableMultimap.class, "size");
        }
    }

    public ImmutableMultimap(int i, ImmutableMap immutableMap) {
        this.f = immutableMap;
        this.f3901g = i;
    }

    @Override // com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    @Deprecated
    public ImmutableCollection<V> replaceValues(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.Multimap
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    @Deprecated
    public boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    @Deprecated
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    @Deprecated
    public boolean putAll(Multimap<? extends K, ? extends V> multimap) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    @Deprecated
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    public static class a<K, V> extends ImmutableCollection<Map.Entry<K, V>> {

        /* renamed from: b, reason: collision with root package name */
        public final ImmutableMultimap f3904b;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return this.f3904b.f.f();
        }

        public a(ImmutableMultimap immutableMultimap) {
            this.f3904b = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            ImmutableMultimap immutableMultimap = this.f3904b;
            immutableMultimap.getClass();
            return new p2(immutableMultimap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f3904b.size();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f3904b.containsEntry(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.Multimap
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f.containsKey(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public boolean containsValue(@NullableDecl Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.Multimap
    public int size() {
        return this.f3901g;
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public ImmutableSet<K> keySet() {
        return this.f.keySet();
    }

    @Override // com.google.common.collect.l
    public final Set c() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public ImmutableMap<K, Collection<V>> asMap() {
        return this.f;
    }

    @Override // com.google.common.collect.l
    public final Map a() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    @Override // com.google.common.collect.l
    public final Collection b() {
        return new a(this);
    }

    @Override // com.google.common.collect.l
    public final Iterator f() {
        return new p2(this);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override // com.google.common.collect.l
    public final Multiset d() {
        return new c();
    }

    public class c extends ImmutableMultiset<K> {
        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public c() {
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@NullableDecl Object obj) {
            Collection collection = (Collection) ImmutableMultimap.this.f.get(obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.Multiset
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset
        public final Multiset.Entry f(int i) {
            Map.Entry<K, V> entry = ImmutableMultimap.this.f.entrySet().asList().get(i);
            return Multisets.immutableEntry(entry.getKey(), ((Collection) entry.getValue()).size());
        }
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }

    @Override // com.google.common.collect.l
    public final Collection e() {
        return new e(this);
    }

    public static final class e<K, V> extends ImmutableCollection<V> {

        /* renamed from: b, reason: collision with root package name */
        public final transient ImmutableMultimap f3905b;

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean isPartialView() {
            return true;
        }

        public e(ImmutableMultimap immutableMultimap) {
            this.f3905b = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.f3905b.containsValue(obj);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public UnmodifiableIterator<V> iterator() {
            ImmutableMultimap immutableMultimap = this.f3905b;
            immutableMultimap.getClass();
            return new q2(immutableMultimap);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int a(int i, Object[] objArr) {
            UnmodifiableIterator<V> it = this.f3905b.f.values().iterator();
            while (it.hasNext()) {
                i = ((ImmutableCollection) it.next()).a(i, objArr);
            }
            return i;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f3905b.size();
        }
    }
}
