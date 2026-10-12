package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.Maps;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.DoNotMock;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@DoNotMock("Use ImmutableMap.of or another implementation")
@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    public static final Map.Entry[] e = new Map.Entry[0];

    /* renamed from: a, reason: collision with root package name */
    public transient ImmutableSet f3897a;

    /* renamed from: b, reason: collision with root package name */
    public transient ImmutableSet f3898b;
    public transient ImmutableCollection c;
    public transient ImmutableSetMultimap d;

    public static class c implements Serializable {
    }

    public abstract ImmutableSet a();

    public abstract ImmutableSet b();

    public abstract ImmutableCollection c();

    public boolean e() {
        return false;
    }

    public abstract boolean f();

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    public static <K, V> ImmutableMap<K, V> of() {
        return b5.i;
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v) {
        g0.a(k, v);
        return b5.h(1, new Object[]{k, v});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2) {
        g0.a(k, v);
        g0.a(k2, v2);
        return b5.h(2, new Object[]{k, v, k2, v2});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        g0.a(k, v);
        g0.a(k2, v2);
        g0.a(k3, v3);
        return b5.h(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        g0.a(k, v);
        g0.a(k2, v2);
        g0.a(k3, v3);
        g0.a(k4, v4);
        return b5.h(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        g0.a(k, v);
        g0.a(k2, v2);
        g0.a(k3, v3);
        g0.a(k4, v4);
        g0.a(k5, v5);
        return b5.h(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public static AbstractMap.SimpleImmutableEntry d(Object obj, Object obj2) {
        g0.a(obj, obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    public static <K, V> Builder<K, V> builder() {
        return new Builder<>();
    }

    @Beta
    public static <K, V> Builder<K, V> builderWithExpectedSize(int i) {
        g0.b(i, "expectedSize");
        return new Builder<>(i);
    }

    @DoNotMock
    public static class Builder<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public Comparator f3899a;

        /* renamed from: b, reason: collision with root package name */
        public Object[] f3900b;
        public int c;
        public boolean d;

        public Builder() {
            this(4);
        }

        public Builder(int i) {
            this.f3900b = new Object[i * 2];
            this.c = 0;
            this.d = false;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> put(K k, V v) {
            int i = (this.c + 1) * 2;
            Object[] objArr = this.f3900b;
            if (i > objArr.length) {
                this.f3900b = Arrays.copyOf(objArr, ImmutableCollection.Builder.a(objArr.length, i));
                this.d = false;
            }
            g0.a(k, v);
            Object[] objArr2 = this.f3900b;
            int i2 = this.c;
            int i3 = i2 * 2;
            objArr2[i3] = k;
            objArr2[i3 + 1] = v;
            this.c = i2 + 1;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            return put(entry.getKey(), entry.getValue());
        }

        @CanIgnoreReturnValue
        public Builder<K, V> putAll(Map<? extends K, ? extends V> map) {
            return putAll(map.entrySet());
        }

        @CanIgnoreReturnValue
        @Beta
        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                int size = (((Collection) iterable).size() + this.c) * 2;
                Object[] objArr = this.f3900b;
                if (size > objArr.length) {
                    this.f3900b = Arrays.copyOf(objArr, ImmutableCollection.Builder.a(objArr.length, size));
                    this.d = false;
                }
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                put(it.next());
            }
            return this;
        }

        @CanIgnoreReturnValue
        @Beta
        public Builder<K, V> orderEntriesByValue(Comparator<? super V> comparator) {
            Preconditions.checkState(this.f3899a == null, "valueComparator was already set");
            this.f3899a = (Comparator) Preconditions.checkNotNull(comparator, "valueComparator");
            return this;
        }

        public ImmutableMap<K, V> build() {
            a();
            this.d = true;
            return b5.h(this.c, this.f3900b);
        }

        public final void a() {
            int i;
            if (this.f3899a != null) {
                if (this.d) {
                    this.f3900b = Arrays.copyOf(this.f3900b, this.c * 2);
                }
                Map.Entry[] entryArr = new Map.Entry[this.c];
                int i2 = 0;
                while (true) {
                    i = this.c;
                    if (i2 >= i) {
                        break;
                    }
                    Object[] objArr = this.f3900b;
                    int i3 = i2 * 2;
                    entryArr[i2] = new AbstractMap.SimpleImmutableEntry(objArr[i3], objArr[i3 + 1]);
                    i2++;
                }
                Arrays.sort(entryArr, 0, i, Ordering.from(this.f3899a).onResultOf(Maps.e.f4010b));
                for (int i4 = 0; i4 < this.c; i4++) {
                    int i5 = i4 * 2;
                    this.f3900b[i5] = entryArr[i4].getKey();
                    this.f3900b[i5 + 1] = entryArr[i4].getValue();
                }
            }
        }
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.f()) {
                return immutableMap;
            }
        }
        return copyOf(map.entrySet());
    }

    @Beta
    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Builder builder = new Builder(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        builder.putAll(iterable);
        return builder.build();
    }

    public static abstract class a<K, V> extends ImmutableMap<K, V> {
        public abstract UnmodifiableIterator h();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }

        @Override // com.google.common.collect.ImmutableMap
        public ImmutableSet b() {
            return new n2(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableSet a() {
            return new k2(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        public final ImmutableCollection c() {
            return new o2(this);
        }
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f3897a;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Map.Entry<K, V>> immutableSetA = a();
        this.f3897a = immutableSetA;
        return immutableSetA;
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.f3898b;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<K> immutableSetB = b();
        this.f3898b = immutableSetB;
        return immutableSetB;
    }

    public UnmodifiableIterator g() {
        return new j2(entrySet().iterator());
    }

    @Override // java.util.Map
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.c;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        ImmutableCollection<V> immutableCollectionC = c();
        this.c = immutableCollectionC;
        return immutableCollectionC;
    }

    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.d;
        if (immutableSetMultimap != null) {
            return immutableSetMultimap;
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap2 = new ImmutableSetMultimap<>(new b(), size(), null);
        this.d = immutableSetMultimap2;
        return immutableSetMultimap2;
    }

    public final class b extends a<K, ImmutableSet<V>> {
        public b() {
        }

        @Override // java.util.Map
        public int size() {
            return ImmutableMap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMap.a, com.google.common.collect.ImmutableMap
        public final ImmutableSet b() {
            return ImmutableMap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public ImmutableSet<V> get(@NullableDecl Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return ImmutableSet.of(obj2);
        }

        @Override // com.google.common.collect.ImmutableMap
        public final boolean f() {
            return ImmutableMap.this.f();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableMap
        public final boolean e() {
            return ImmutableMap.this.e();
        }

        @Override // com.google.common.collect.ImmutableMap.a
        public final UnmodifiableIterator h() {
            return new l2(ImmutableMap.this.entrySet().iterator());
        }
    }

    @Override // java.util.Map
    public int hashCode() {
        return Sets.b(entrySet());
    }

    public String toString() {
        return Maps.i(this);
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }
}
