package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableMap;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.SortedMap;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
public final class ImmutableSortedMap<K, V> extends w2<K, V> implements NavigableMap<K, V> {
    public static final Ordering i = Ordering.natural();
    public static final ImmutableSortedMap j = new ImmutableSortedMap(ImmutableSortedSet.k(Ordering.natural()), ImmutableList.of(), null);
    public final transient f5 f;

    /* renamed from: g, reason: collision with root package name */
    public final transient ImmutableList f3919g;
    public final transient ImmutableSortedMap h;

    public static class a extends ImmutableMap.c {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap headMap(Object obj, boolean z) {
        return headMap((ImmutableSortedMap<K, V>) obj, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
        return headMap((ImmutableSortedMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
        return subMap((boolean) obj, z, (boolean) obj2, z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public /* bridge */ /* synthetic */ NavigableMap tailMap(Object obj, boolean z) {
        return tailMap((ImmutableSortedMap<K, V>) obj, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap, java.util.SortedMap
    public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
        return tailMap((ImmutableSortedMap<K, V>) obj);
    }

    public static ImmutableSortedMap i(Comparator comparator) {
        if (Ordering.natural().equals(comparator)) {
            return of();
        }
        return new ImmutableSortedMap(ImmutableSortedSet.k(comparator), ImmutableList.of(), null);
    }

    public static <K, V> ImmutableSortedMap<K, V> of() {
        return j;
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj) {
        return l(comparable, obj, Ordering.natural());
    }

    public static ImmutableSortedMap l(Object obj, Object obj2, Comparator comparator) {
        return new ImmutableSortedMap(new f5(ImmutableList.of(obj), (Comparator) Preconditions.checkNotNull(comparator)), ImmutableList.of(obj2), null);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return j(Ordering.natural(), false, new Map.Entry[]{ImmutableMap.d(comparable, obj), ImmutableMap.d(comparable2, obj2)}, 2);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return j(Ordering.natural(), false, new Map.Entry[]{ImmutableMap.d(comparable, obj), ImmutableMap.d(comparable2, obj2), ImmutableMap.d(comparable3, obj3)}, 3);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return j(Ordering.natural(), false, new Map.Entry[]{ImmutableMap.d(comparable, obj), ImmutableMap.d(comparable2, obj2), ImmutableMap.d(comparable3, obj3), ImmutableMap.d(comparable4, obj4)}, 4);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return j(Ordering.natural(), false, new Map.Entry[]{ImmutableMap.d(comparable, obj), ImmutableMap.d(comparable2, obj2), ImmutableMap.d(comparable3, obj3), ImmutableMap.d(comparable4, obj4), ImmutableMap.d(comparable5, obj5)}, 5);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final boolean f() {
        return this.f.e.isPartialView() || this.f3919g.isPartialView();
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return h(map, i);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return h(map, (Comparator) Preconditions.checkNotNull(comparator));
    }

    @Beta
    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return copyOf(iterable, i);
    }

    @Beta
    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        Comparator comparator2 = (Comparator) Preconditions.checkNotNull(comparator);
        Map.Entry[] entryArr = (Map.Entry[]) (iterable instanceof Collection ? (Collection) iterable : Lists.newArrayList(iterable.iterator())).toArray(ImmutableMap.e);
        return j(comparator2, false, entryArr, entryArr.length);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = i;
        }
        if (sortedMap instanceof ImmutableSortedMap) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) sortedMap;
            if (!immutableSortedMap.f()) {
                return immutableSortedMap;
            }
        }
        Collection collectionEntrySet = sortedMap.entrySet();
        Map.Entry[] entryArr = ImmutableMap.e;
        if (!_COROUTINE.a.x(collectionEntrySet)) {
            collectionEntrySet = Lists.newArrayList(collectionEntrySet.iterator());
        }
        Map.Entry[] entryArr2 = (Map.Entry[]) collectionEntrySet.toArray(entryArr);
        return j(comparator, true, entryArr2, entryArr2.length);
    }

    public static ImmutableSortedMap h(Map map, Comparator comparator) {
        boolean zEquals = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 == null) {
                if (comparator == i) {
                    zEquals = true;
                }
            } else {
                zEquals = comparator.equals(comparator2);
            }
        }
        if (zEquals && (map instanceof ImmutableSortedMap)) {
            ImmutableSortedMap immutableSortedMap = (ImmutableSortedMap) map;
            if (!immutableSortedMap.f()) {
                return immutableSortedMap;
            }
        }
        Collection collectionEntrySet = map.entrySet();
        Map.Entry[] entryArr = ImmutableMap.e;
        if (!_COROUTINE.a.x(collectionEntrySet)) {
            collectionEntrySet = Lists.newArrayList(collectionEntrySet.iterator());
        }
        Map.Entry[] entryArr2 = (Map.Entry[]) collectionEntrySet.toArray(entryArr);
        return j(comparator, zEquals, entryArr2, entryArr2.length);
    }

    public static ImmutableSortedMap j(Comparator comparator, boolean z, Map.Entry[] entryArr, int i2) {
        if (i2 == 0) {
            return i(comparator);
        }
        if (i2 == 1) {
            return l(entryArr[0].getKey(), entryArr[0].getValue(), comparator);
        }
        Object[] objArr = new Object[i2];
        Object[] objArr2 = new Object[i2];
        if (z) {
            for (int i3 = 0; i3 < i2; i3++) {
                Object key = entryArr[i3].getKey();
                Object value = entryArr[i3].getValue();
                g0.a(key, value);
                objArr[i3] = key;
                objArr2[i3] = value;
            }
        } else {
            Arrays.sort(entryArr, 0, i2, new t2(comparator));
            Object key2 = entryArr[0].getKey();
            objArr[0] = key2;
            Object value2 = entryArr[0].getValue();
            objArr2[0] = value2;
            g0.a(objArr[0], value2);
            int i4 = 1;
            while (i4 < i2) {
                Object key3 = entryArr[i4].getKey();
                Object value3 = entryArr[i4].getValue();
                g0.a(key3, value3);
                objArr[i4] = key3;
                objArr2[i4] = value3;
                boolean z2 = comparator.compare(key2, key3) != 0;
                Map.Entry entry = entryArr[i4 - 1];
                Map.Entry entry2 = entryArr[i4];
                if (!z2) {
                    throw new IllegalArgumentException("Multiple entries with same key: " + entry + " and " + entry2);
                }
                i4++;
                key2 = key3;
            }
        }
        return new ImmutableSortedMap(new f5(ImmutableList.e(i2, objArr), comparator), ImmutableList.e(i2, objArr2), null);
    }

    public static <K extends Comparable<?>, V> Builder<K, V> naturalOrder() {
        return new Builder<>(Ordering.natural());
    }

    public static <K, V> Builder<K, V> orderedBy(Comparator<K> comparator) {
        return new Builder<>(comparator);
    }

    public static <K extends Comparable<?>, V> Builder<K, V> reverseOrder() {
        return new Builder<>(Ordering.natural().reverse());
    }

    public static class Builder<K, V> extends ImmutableMap.Builder<K, V> {
        public transient Object[] e = new Object[4];
        public transient Object[] f = new Object[4];

        /* renamed from: g, reason: collision with root package name */
        public final Comparator f3920g;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.ImmutableMap.Builder
        @CanIgnoreReturnValue
        public /* bridge */ /* synthetic */ ImmutableMap.Builder put(Object obj, Object obj2) {
            return put((Builder<K, V>) obj, obj2);
        }

        public Builder(Comparator<? super K> comparator) {
            this.f3920g = (Comparator) Preconditions.checkNotNull(comparator);
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @CanIgnoreReturnValue
        public Builder<K, V> put(K k, V v) {
            int i = this.c + 1;
            Object[] objArr = this.e;
            if (i > objArr.length) {
                int iA = ImmutableCollection.Builder.a(objArr.length, i);
                this.e = Arrays.copyOf(this.e, iA);
                this.f = Arrays.copyOf(this.f, iA);
            }
            g0.a(k, v);
            Object[] objArr2 = this.e;
            int i2 = this.c;
            objArr2[i2] = k;
            this.f[i2] = v;
            this.c = i2 + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @CanIgnoreReturnValue
        public Builder<K, V> put(Map.Entry<? extends K, ? extends V> entry) {
            super.put((Map.Entry) entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @CanIgnoreReturnValue
        public Builder<K, V> putAll(Map<? extends K, ? extends V> map) {
            super.putAll((Map) map);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @CanIgnoreReturnValue
        @Beta
        public Builder<K, V> putAll(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.putAll((Iterable) iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        @CanIgnoreReturnValue
        @Beta
        @Deprecated
        public Builder<K, V> orderEntriesByValue(Comparator<? super V> comparator) {
            throw new UnsupportedOperationException("Not available on ImmutableSortedMap.Builder");
        }

        @Override // com.google.common.collect.ImmutableMap.Builder
        public ImmutableSortedMap<K, V> build() {
            int i = this.c;
            Comparator comparator = this.f3920g;
            if (i == 0) {
                return ImmutableSortedMap.i(comparator);
            }
            if (i == 1) {
                return ImmutableSortedMap.l(this.e[0], this.f[0], comparator);
            }
            Object[] objArrCopyOf = Arrays.copyOf(this.e, i);
            Arrays.sort(objArrCopyOf, comparator);
            int i2 = this.c;
            Object[] objArr = new Object[i2];
            for (int i3 = 0; i3 < this.c; i3++) {
                if (i3 > 0) {
                    int i4 = i3 - 1;
                    if (comparator.compare(objArrCopyOf[i4], objArrCopyOf[i3]) == 0) {
                        throw new IllegalArgumentException("keys required to be distinct but compared as equal: " + objArrCopyOf[i4] + " and " + objArrCopyOf[i3]);
                    }
                }
                objArr[Arrays.binarySearch(objArrCopyOf, this.e[i3], comparator)] = this.f[i3];
            }
            return new ImmutableSortedMap<>(new f5(ImmutableList.e(objArrCopyOf.length, objArrCopyOf), comparator), ImmutableList.e(i2, objArr), null);
        }
    }

    public ImmutableSortedMap(f5 f5Var, ImmutableList immutableList, ImmutableSortedMap immutableSortedMap) {
        this.f = f5Var;
        this.f3919g = immutableList;
        this.h = immutableSortedMap;
    }

    @Override // java.util.Map
    public int size() {
        return this.f3919g.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0008  */
    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public V get(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object r4) {
        /*
            r3 = this;
            com.google.common.collect.f5 r0 = r3.f
            r0.getClass()
            r1 = -1
            if (r4 != 0) goto La
        L8:
            r4 = -1
            goto L17
        La:
            com.google.common.collect.ImmutableList r2 = r0.e     // Catch: java.lang.ClassCastException -> L15
            java.util.Comparator r0 = r0.c     // Catch: java.lang.ClassCastException -> L15
            int r4 = java.util.Collections.binarySearch(r2, r4, r0)     // Catch: java.lang.ClassCastException -> L15
            if (r4 < 0) goto L8
            goto L17
        L15:
            goto L8
        L17:
            if (r4 != r1) goto L1b
            r4 = 0
            return r4
        L1b:
            com.google.common.collect.ImmutableList r0 = r3.f3919g
            java.lang.Object r4 = r0.get(r4)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.ImmutableSortedMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet a() {
        return isEmpty() ? ImmutableSet.of() : new v2(this);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableSortedSet<K> keySet() {
        return this.f;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet b() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public ImmutableCollection<V> values() {
        return this.f3919g;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection c() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return keySet().first();
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return keySet().last();
    }

    public final ImmutableSortedMap k(int i2, int i3) {
        if (i2 == 0 && i3 == size()) {
            return this;
        }
        if (i2 != i3) {
            return new ImmutableSortedMap(this.f.o(i2, i3), this.f3919g.subList(i2, i3), null);
        }
        return i(comparator());
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> headMap(K k) {
        return headMap((ImmutableSortedMap<K, V>) k, false);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> headMap(K k, boolean z) {
        return k(0, this.f.p(Preconditions.checkNotNull(k), z));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> subMap(K k, K k2) {
        return subMap((boolean) k, true, (boolean) k2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(k2);
        Preconditions.checkArgument(comparator().compare(k, k2) <= 0, "expected fromKey <= toKey but %s > %s", k, k2);
        return headMap((ImmutableSortedMap<K, V>) k2, z2).tailMap((ImmutableSortedMap<K, V>) k, z);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public ImmutableSortedMap<K, V> tailMap(K k) {
        return tailMap((ImmutableSortedMap<K, V>) k, true);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> tailMap(K k, boolean z) {
        return k(this.f.q(Preconditions.checkNotNull(k), z), size());
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k) {
        return headMap((ImmutableSortedMap<K, V>) k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k) {
        return (K) Maps.f(lowerEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k) {
        return headMap((ImmutableSortedMap<K, V>) k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k) {
        return (K) Maps.f(floorEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k) {
        return tailMap((ImmutableSortedMap<K, V>) k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k) {
        return (K) Maps.f(ceilingEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k) {
        return tailMap((ImmutableSortedMap<K, V>) k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k) {
        return (K) Maps.f(higherEntry(k));
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(0);
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().asList().get(size() - 1);
    }

    @Override // java.util.NavigableMap
    @CanIgnoreReturnValue
    @Deprecated
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @CanIgnoreReturnValue
    @Deprecated
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedMap<K, V> descendingMap() {
        ImmutableSortedMap<K, V> immutableSortedMap = this.h;
        if (immutableSortedMap != null) {
            return immutableSortedMap;
        }
        if (isEmpty()) {
            return i(Ordering.from(comparator()).reverse());
        }
        return new ImmutableSortedMap<>((f5) this.f.descendingSet(), this.f3919g.reverse(), this);
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> navigableKeySet() {
        return this.f;
    }

    @Override // java.util.NavigableMap
    public ImmutableSortedSet<K> descendingKeySet() {
        return (ImmutableSortedSet<K>) this.f.descendingSet();
    }
}
