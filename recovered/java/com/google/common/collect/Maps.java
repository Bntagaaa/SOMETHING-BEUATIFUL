package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Converter;
import com.google.common.base.Equivalence;
import com.google.common.base.Function;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.MapDifference;
import com.google.common.collect.Sets;
import com.google.common.collect.y5;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Maps {

    public interface EntryTransformer<K, V1, V2> {
        V2 transformEntry(@NullableDecl K k, @NullableDecl V1 v1);
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static abstract class e implements Function<Map.Entry<?, ?>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f4009a = new a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4010b = new b();

        public enum a extends e {
            public a() {
                super("KEY", 0);
            }

            @Override // com.google.common.base.Function
            @NullableDecl
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        public enum b extends e {
            public b() {
                super("VALUE", 1);
            }

            @Override // com.google.common.base.Function
            @NullableDecl
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }
    }

    private Maps() {
    }

    @GwtCompatible(serializable = true)
    public static <K extends Enum<K>, V> ImmutableMap<K, V> immutableEnumMap(Map<K, ? extends V> map) {
        if (map instanceof h2) {
            return (h2) map;
        }
        Iterator<Map.Entry<K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return ImmutableMap.of();
        }
        Map.Entry<K, ? extends V> next = it.next();
        K key = next.getKey();
        V value = next.getValue();
        g0.a(key, value);
        EnumMap enumMap = new EnumMap(key.getDeclaringClass());
        enumMap.put((EnumMap) key, (K) value);
        while (it.hasNext()) {
            Map.Entry<K, ? extends V> next2 = it.next();
            K key2 = next2.getKey();
            V value2 = next2.getValue();
            g0.a(key2, value2);
            enumMap.put((EnumMap) key2, (K) value2);
        }
        int size = enumMap.size();
        if (size == 0) {
            return ImmutableMap.of();
        }
        if (size == 1) {
            Map.Entry entry = (Map.Entry) Iterables.getOnlyElement(enumMap.entrySet());
            return ImmutableMap.of(entry.getKey(), entry.getValue());
        }
        return new h2(enumMap);
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i2) {
        return new HashMap<>(c(i2));
    }

    public static int c(int i2) {
        if (i2 < 3) {
            g0.b(i2, "expectedSize");
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i2) {
        return new LinkedHashMap<>(c(i2));
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentMap() {
        return new ConcurrentHashMap();
    }

    public static <K extends Comparable, V> TreeMap<K, V> newTreeMap() {
        return new TreeMap<>();
    }

    public static <K, V> TreeMap<K, V> newTreeMap(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    public static <C, K extends C, V> TreeMap<K, V> newTreeMap(@NullableDecl Comparator<C> comparator) {
        return new TreeMap<>(comparator);
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Class<K> cls) {
        return new EnumMap<>((Class) Preconditions.checkNotNull(cls));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> IdentityHashMap<K, V> newIdentityHashMap() {
        return new IdentityHashMap<>();
    }

    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        if (map instanceof SortedMap) {
            return difference((SortedMap) map, (Map) map2);
        }
        return difference(map, map2, Equivalence.equals());
    }

    public static <K, V> MapDifference<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence) {
        Preconditions.checkNotNull(equivalence);
        LinkedHashMap linkedHashMapNewLinkedHashMap = newLinkedHashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = newLinkedHashMap();
        LinkedHashMap linkedHashMapNewLinkedHashMap3 = newLinkedHashMap();
        d(map, map2, equivalence, linkedHashMapNewLinkedHashMap, linkedHashMap, linkedHashMapNewLinkedHashMap2, linkedHashMapNewLinkedHashMap3);
        return new o(linkedHashMapNewLinkedHashMap, linkedHashMap, linkedHashMapNewLinkedHashMap2, linkedHashMapNewLinkedHashMap3);
    }

    public static <K, V> SortedMapDifference<K, V> difference(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        Preconditions.checkNotNull(sortedMap);
        Preconditions.checkNotNull(map);
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = Ordering.natural();
        }
        TreeMap treeMapNewTreeMap = newTreeMap(comparator);
        TreeMap treeMapNewTreeMap2 = newTreeMap(comparator);
        treeMapNewTreeMap2.putAll(map);
        TreeMap treeMapNewTreeMap3 = newTreeMap(comparator);
        TreeMap treeMapNewTreeMap4 = newTreeMap(comparator);
        d(sortedMap, map, Equivalence.equals(), treeMapNewTreeMap, treeMapNewTreeMap2, treeMapNewTreeMap3, treeMapNewTreeMap4);
        return new t(treeMapNewTreeMap, treeMapNewTreeMap2, treeMapNewTreeMap3, treeMapNewTreeMap4);
    }

    public static void d(Map map, Map map2, Equivalence equivalence, AbstractMap abstractMap, AbstractMap abstractMap2, AbstractMap abstractMap3, AbstractMap abstractMap4) {
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (map2.containsKey(key)) {
                Object objRemove = abstractMap2.remove(key);
                if (equivalence.equivalent(value, objRemove)) {
                    abstractMap3.put(key, value);
                } else {
                    abstractMap4.put(key, new b0(value, objRemove));
                }
            } else {
                abstractMap.put(key, value);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Map a(AbstractMap abstractMap) {
        if (abstractMap instanceof SortedMap) {
            return Collections.unmodifiableSortedMap((SortedMap) abstractMap);
        }
        return Collections.unmodifiableMap(abstractMap);
    }

    public static class o<K, V> implements MapDifference<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Map f4021a;

        /* renamed from: b, reason: collision with root package name */
        public final Map f4022b;
        public final Map c;
        public final Map d;

        public o(AbstractMap abstractMap, AbstractMap abstractMap2, AbstractMap abstractMap3, AbstractMap abstractMap4) {
            this.f4021a = Maps.a(abstractMap);
            this.f4022b = Maps.a(abstractMap2);
            this.c = Maps.a(abstractMap3);
            this.d = Maps.a(abstractMap4);
        }

        @Override // com.google.common.collect.MapDifference
        public boolean areEqual() {
            return this.f4021a.isEmpty() && this.f4022b.isEmpty() && this.d.isEmpty();
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesOnlyOnLeft() {
            return this.f4021a;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesOnlyOnRight() {
            return this.f4022b;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, V> entriesInCommon() {
            return this.c;
        }

        @Override // com.google.common.collect.MapDifference
        public Map<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return this.d;
        }

        @Override // com.google.common.collect.MapDifference
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof MapDifference) {
                MapDifference mapDifference = (MapDifference) obj;
                if (entriesOnlyOnLeft().equals(mapDifference.entriesOnlyOnLeft()) && entriesOnlyOnRight().equals(mapDifference.entriesOnlyOnRight()) && entriesInCommon().equals(mapDifference.entriesInCommon()) && entriesDiffering().equals(mapDifference.entriesDiffering())) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.MapDifference
        public int hashCode() {
            return Objects.hashCode(entriesOnlyOnLeft(), entriesOnlyOnRight(), entriesInCommon(), entriesDiffering());
        }

        public String toString() {
            if (areEqual()) {
                return "equal";
            }
            StringBuilder sb = new StringBuilder("not equal");
            Map map = this.f4021a;
            if (!map.isEmpty()) {
                sb.append(": only on left=");
                sb.append(map);
            }
            Map map2 = this.f4022b;
            if (!map2.isEmpty()) {
                sb.append(": only on right=");
                sb.append(map2);
            }
            Map map3 = this.d;
            if (!map3.isEmpty()) {
                sb.append(": value differences=");
                sb.append(map3);
            }
            return sb.toString();
        }
    }

    public static class b0<V> implements MapDifference.ValueDifference<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4001a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f4002b;

        public b0(Object obj, Object obj2) {
            this.f4001a = obj;
            this.f4002b = obj2;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public V leftValue() {
            return (V) this.f4001a;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public V rightValue() {
            return (V) this.f4002b;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof MapDifference.ValueDifference) {
                MapDifference.ValueDifference valueDifference = (MapDifference.ValueDifference) obj;
                if (Objects.equal(this.f4001a, valueDifference.leftValue()) && Objects.equal(this.f4002b, valueDifference.rightValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.MapDifference.ValueDifference
        public int hashCode() {
            return Objects.hashCode(this.f4001a, this.f4002b);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("(");
            sb.append(this.f4001a);
            sb.append(", ");
            return _COROUTINE.a.l(sb, this.f4002b, ")");
        }
    }

    public static class t<K, V> extends o<K, V> implements SortedMapDifference<K, V> {
        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, MapDifference.ValueDifference<V>> entriesDiffering() {
            return (SortedMap) super.entriesDiffering();
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesInCommon() {
            return (SortedMap) super.entriesInCommon();
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesOnlyOnLeft() {
            return (SortedMap) super.entriesOnlyOnLeft();
        }

        @Override // com.google.common.collect.Maps.o, com.google.common.collect.MapDifference
        public SortedMap<K, V> entriesOnlyOnRight() {
            return (SortedMap) super.entriesOnlyOnRight();
        }
    }

    public static <K, V> Map<K, V> asMap(Set<K> set, Function<? super K, V> function) {
        return new b(set, function);
    }

    public static <K, V> SortedMap<K, V> asMap(SortedSet<K> sortedSet, Function<? super K, V> function) {
        return new r(sortedSet, function);
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> asMap(NavigableSet<K> navigableSet, Function<? super K, V> function) {
        return new p(navigableSet, function);
    }

    public static class b<K, V> extends d0<K, V> {
        public final Set d;
        public final Function e;

        public Set b() {
            return this.d;
        }

        public b(Set set, Function function) {
            this.d = (Set) Preconditions.checkNotNull(set);
            this.e = (Function) Preconditions.checkNotNull(function);
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<K> createKeySet() {
            return new u3(b());
        }

        @Override // com.google.common.collect.Maps.d0
        public final Collection a() {
            return Collections2.transform(this.d, this.e);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return b().size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return b().contains(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(@NullableDecl Object obj) {
            if (Collections2.c(obj, b())) {
                return (V) this.e.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@NullableDecl Object obj) {
            if (b().remove(obj)) {
                return (V) this.e.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            b().clear();
        }

        public class a extends f<K, V> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.f
            public final Map a() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                b bVar = b.this;
                return new t3(bVar.b().iterator(), bVar.e);
            }
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<K, V>> createEntrySet() {
            return new a();
        }
    }

    @GwtIncompatible
    public static final class p<K, V> extends com.google.common.collect.n<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final NavigableSet f4023a;

        /* renamed from: b, reason: collision with root package name */
        public final Function f4024b;

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            return new t3(this.f4023a.iterator(), this.f4024b);
        }

        public p(NavigableSet navigableSet, Function function) {
            this.f4023a = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.f4024b = (Function) Preconditions.checkNotNull(function);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.asMap(this.f4023a.subSet(k, z, k2, z2), this.f4024b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.asMap(this.f4023a.headSet(k, z), this.f4024b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.asMap(this.f4023a.tailSet(k, z), this.f4024b);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.f4023a.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        @NullableDecl
        public V get(@NullableDecl Object obj) {
            if (Collections2.c(obj, this.f4023a)) {
                return (V) this.f4024b.apply(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f4023a.clear();
        }

        @Override // com.google.common.collect.n
        public final Iterator b() {
            return descendingMap().entrySet().iterator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f4023a.size();
        }

        @Override // com.google.common.collect.n, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.asMap(this.f4023a.descendingSet(), this.f4024b);
        }

        @Override // com.google.common.collect.n, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new w3(this.f4023a);
        }
    }

    public static class r<K, V> extends b<K, V> implements SortedMap<K, V> {
        @Override // com.google.common.collect.Maps.b
        public final Set b() {
            return (SortedSet) this.d;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return ((SortedSet) this.d).comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return (K) ((SortedSet) this.d).first();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return Maps.asMap(((SortedSet) this.d).headSet(k), this.e);
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return new v3((SortedSet) this.d);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return (K) ((SortedSet) this.d).last();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return Maps.asMap(((SortedSet) this.d).subSet(k, k2), this.e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return Maps.asMap(((SortedSet) this.d).tailSet(k), this.e);
        }
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterable<K> iterable, Function<? super K, V> function) {
        return toMap(iterable.iterator(), function);
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterator<K> it, Function<? super K, V> function) {
        Preconditions.checkNotNull(function);
        LinkedHashMap linkedHashMapNewLinkedHashMap = newLinkedHashMap();
        while (it.hasNext()) {
            K next = it.next();
            linkedHashMapNewLinkedHashMap.put(next, function.apply(next));
        }
        return ImmutableMap.copyOf((Map) linkedHashMapNewLinkedHashMap);
    }

    public static <K, V> BiMap<K, V> synchronizedBiMap(BiMap<K, V> biMap) {
        return ((biMap instanceof y5.e) || (biMap instanceof ImmutableBiMap)) ? biMap : new y5.e(biMap, null, null);
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterable<V> iterable, Function<? super V, K> function) {
        return uniqueIndex(iterable.iterator(), function);
    }

    @CanIgnoreReturnValue
    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterator<V> it, Function<? super V, K> function) {
        Preconditions.checkNotNull(function);
        ImmutableMap.Builder builder = ImmutableMap.builder();
        while (it.hasNext()) {
            V next = it.next();
            builder.put(function.apply(next), next);
        }
        try {
            return builder.build();
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException(e2.getMessage() + ". To index multiple values under a key, use Multimaps.index.");
        }
    }

    @GwtIncompatible
    public static ImmutableMap<String, String> fromProperties(Properties properties) {
        ImmutableMap.Builder builder = ImmutableMap.builder();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            String str = (String) enumerationPropertyNames.nextElement();
            builder.put(str, properties.getProperty(str));
        }
        return builder.build();
    }

    @GwtCompatible(serializable = true)
    public static <K, V> Map.Entry<K, V> immutableEntry(@NullableDecl K k2, @NullableDecl V v2) {
        return new g2(k2, v2);
    }

    public static Map.Entry b(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        Preconditions.checkNotNull(entry);
        return new x3(entry);
    }

    public static class y<K, V> extends ForwardingCollection<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final Collection f4029a;

        public y(Collection collection) {
            this.f4029a = collection;
        }

        @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Collection<Map.Entry<K, V>> delegate() {
            return this.f4029a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new y3(this.f4029a.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }
    }

    public static class z<K, V> extends y<K, V> implements Set<Map.Entry<K, V>> {
        @Override // java.util.Collection, java.util.Set
        public boolean equals(@NullableDecl Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }
    }

    public static <A, B> Converter<A, B> asConverter(BiMap<A, B> biMap) {
        return new c(biMap);
    }

    public static final class c<A, B> extends Converter<A, B> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public final BiMap f4003b;

        public c(BiMap biMap) {
            this.f4003b = (BiMap) Preconditions.checkNotNull(biMap);
        }

        @Override // com.google.common.base.Converter
        public A doBackward(B b2) {
            A a2 = (A) this.f4003b.inverse().get(b2);
            Preconditions.checkArgument(a2 != null, "No non-null mapping present for input: %s", b2);
            return a2;
        }

        @Override // com.google.common.base.Converter
        public B doForward(A a2) {
            B b2 = (B) this.f4003b.get(a2);
            Preconditions.checkArgument(b2 != null, "No non-null mapping present for input: %s", a2);
            return b2;
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return this.f4003b.equals(((c) obj).f4003b);
            }
            return false;
        }

        public int hashCode() {
            return this.f4003b.hashCode();
        }

        public String toString() {
            return "Maps.asConverter(" + this.f4003b + ")";
        }
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> synchronizedNavigableMap(NavigableMap<K, V> navigableMap) {
        return new y5.n(navigableMap, null);
    }

    public static <K, V> BiMap<K, V> unmodifiableBiMap(BiMap<? extends K, ? extends V> biMap) {
        return new x(biMap, null);
    }

    public static class x<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final Map f4027a;

        /* renamed from: b, reason: collision with root package name */
        public final BiMap f4028b;
        public BiMap c;
        public transient Set d;

        public x(BiMap biMap, BiMap biMap2) {
            this.f4027a = Collections.unmodifiableMap(biMap);
            this.f4028b = biMap;
            this.c = biMap2;
        }

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public Map<K, V> delegate() {
            return this.f4027a;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            BiMap<V, K> biMap = this.c;
            if (biMap != null) {
                return biMap;
            }
            x xVar = new x(this.f4028b.inverse(), this);
            this.c = xVar;
            return xVar;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Set<V> values() {
            Set<V> set = this.d;
            if (set != null) {
                return set;
            }
            Set<V> setUnmodifiableSet = Collections.unmodifiableSet(this.f4028b.values());
            this.d = setUnmodifiableSet;
            return setUnmodifiableSet;
        }
    }

    public static <K, V1, V2> Map<K, V2> transformEntries(Map<K, V1> map, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new u(map, entryTransformer);
    }

    public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> sortedMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new w(sortedMap, entryTransformer);
    }

    @GwtIncompatible
    public static <K, V1, V2> NavigableMap<K, V2> transformEntries(NavigableMap<K, V1> navigableMap, EntryTransformer<? super K, ? super V1, V2> entryTransformer) {
        return new v(navigableMap, entryTransformer);
    }

    public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> map, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries(map, new z3(function));
    }

    @GwtIncompatible
    public static <K, V1, V2> NavigableMap<K, V2> transformValues(NavigableMap<K, V1> navigableMap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries((NavigableMap) navigableMap, (EntryTransformer) new z3(function));
    }

    public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> sortedMap, Function<? super V1, V2> function) {
        Preconditions.checkNotNull(function);
        return transformEntries((SortedMap) sortedMap, (EntryTransformer) new z3(function));
    }

    @GwtIncompatible
    public static class v<K, V1, V2> extends w<K, V1, V2> implements NavigableMap<K, V2> {
        public final Map.Entry b(Map.Entry entry) {
            if (entry == null) {
                return null;
            }
            EntryTransformer entryTransformer = this.f4026b;
            Preconditions.checkNotNull(entryTransformer);
            Preconditions.checkNotNull(entry);
            return new p3(entry, entryTransformer);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        public /* bridge */ /* synthetic */ SortedMap headMap(Object obj) {
            return headMap((v<K, V1, V2>) obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        public /* bridge */ /* synthetic */ SortedMap tailMap(Object obj) {
            return tailMap((v<K, V1, V2>) obj);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> ceilingEntry(K k) {
            return b(fromMap().ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return fromMap().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return fromMap().descendingKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> descendingMap() {
            return Maps.transformEntries((NavigableMap) fromMap().descendingMap(), this.f4026b);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> firstEntry() {
            return b(fromMap().firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> floorEntry(K k) {
            return b(fromMap().floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return fromMap().floorKey(k);
        }

        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, V2> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> headMap(K k, boolean z) {
            return Maps.transformEntries((NavigableMap) fromMap().headMap(k, z), this.f4026b);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> higherEntry(K k) {
            return b(fromMap().higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return fromMap().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lastEntry() {
            return b(fromMap().lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lowerEntry(K k) {
            return b(fromMap().lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return fromMap().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return fromMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollFirstEntry() {
            return b(fromMap().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollLastEntry() {
            return b(fromMap().pollLastEntry());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.transformEntries((NavigableMap) fromMap().subMap(k, z, k2, z2), this.f4026b);
        }

        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, V2> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.w, java.util.SortedMap, java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(K k, boolean z) {
            return Maps.transformEntries((NavigableMap) fromMap().tailMap(k, z), this.f4026b);
        }

        @Override // com.google.common.collect.Maps.w
        public NavigableMap<K, V1> fromMap() {
            return (NavigableMap) super.fromMap();
        }
    }

    public static class u<K, V1, V2> extends m<K, V2> {

        /* renamed from: a, reason: collision with root package name */
        public final Map f4025a;

        /* renamed from: b, reason: collision with root package name */
        public final EntryTransformer f4026b;

        public u(Map map, EntryTransformer entryTransformer) {
            this.f4025a = (Map) Preconditions.checkNotNull(map);
            this.f4026b = (EntryTransformer) Preconditions.checkNotNull(entryTransformer);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f4025a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f4025a.containsKey(obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractMap, java.util.Map
        public V2 get(Object obj) {
            Map map = this.f4025a;
            Object obj2 = map.get(obj);
            if (obj2 != null || map.containsKey(obj)) {
                return (V2) this.f4026b.transformEntry(obj, obj2);
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractMap, java.util.Map
        public V2 remove(Object obj) {
            Map map = this.f4025a;
            if (map.containsKey(obj)) {
                return (V2) this.f4026b.transformEntry(obj, map.remove(obj));
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f4025a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.f4025a.keySet();
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            Iterator it = this.f4025a.entrySet().iterator();
            EntryTransformer entryTransformer = this.f4026b;
            Preconditions.checkNotNull(entryTransformer);
            return Iterators.transform(it, new q3(entryTransformer));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new c0(this);
        }
    }

    public static class w<K, V1, V2> extends u<K, V1, V2> implements SortedMap<K, V2> {
        public SortedMap<K, V1> fromMap() {
            return (SortedMap) this.f4025a;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return fromMap().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return fromMap().firstKey();
        }

        public SortedMap<K, V2> headMap(K k) {
            return Maps.transformEntries((SortedMap) fromMap().headMap(k), this.f4026b);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return fromMap().lastKey();
        }

        public SortedMap<K, V2> subMap(K k, K k2) {
            return Maps.transformEntries((SortedMap) fromMap().subMap(k, k2), this.f4026b);
        }

        public SortedMap<K, V2> tailMap(K k) {
            return Maps.transformEntries((SortedMap) fromMap().tailMap(k), this.f4026b);
        }
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> filterKeys(NavigableMap<K, V> navigableMap, Predicate<? super K> predicate) {
        return filterEntries((NavigableMap) navigableMap, Predicates.compose(predicate, e.f4009a));
    }

    public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> sortedMap, Predicate<? super K> predicate) {
        return filterEntries((SortedMap) sortedMap, Predicates.compose(predicate, e.f4009a));
    }

    public static <K, V> BiMap<K, V> filterValues(BiMap<K, V> biMap, Predicate<? super V> predicate) {
        return filterEntries((BiMap) biMap, Predicates.compose(predicate, e.f4010b));
    }

    public static <K, V> Map<K, V> filterValues(Map<K, V> map, Predicate<? super V> predicate) {
        return filterEntries(map, Predicates.compose(predicate, e.f4010b));
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> filterValues(NavigableMap<K, V> navigableMap, Predicate<? super V> predicate) {
        return filterEntries((NavigableMap) navigableMap, Predicates.compose(predicate, e.f4010b));
    }

    public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> sortedMap, Predicate<? super V> predicate) {
        return filterEntries((SortedMap) sortedMap, Predicates.compose(predicate, e.f4010b));
    }

    public static <K, V> Map<K, V> filterKeys(Map<K, V> map, Predicate<? super K> predicate) {
        Preconditions.checkNotNull(predicate);
        Predicate predicateCompose = Predicates.compose(predicate, e.f4009a);
        if (!(map instanceof a)) {
            return new k((Map) Preconditions.checkNotNull(map), predicate, predicateCompose);
        }
        a aVar = (a) map;
        return new h(aVar.d, Predicates.and(aVar.e, predicateCompose));
    }

    public static <K, V> BiMap<K, V> filterKeys(BiMap<K, V> biMap, Predicate<? super K> predicate) {
        Preconditions.checkNotNull(predicate);
        return filterEntries((BiMap) biMap, Predicates.compose(predicate, e.f4009a));
    }

    public static <K, V> Map<K, V> filterEntries(Map<K, V> map, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (!(map instanceof a)) {
            return new h((Map) Preconditions.checkNotNull(map), predicate);
        }
        a aVar = (a) map;
        return new h(aVar.d, Predicates.and(aVar.e, predicate));
    }

    public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> sortedMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (sortedMap instanceof j) {
            j jVar = (j) sortedMap;
            return new j((SortedMap) jVar.d, Predicates.and(jVar.e, predicate));
        }
        return new j((SortedMap) Preconditions.checkNotNull(sortedMap), predicate);
    }

    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> filterEntries(NavigableMap<K, V> navigableMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(predicate);
        if (!(navigableMap instanceof i)) {
            return new i((NavigableMap) Preconditions.checkNotNull(navigableMap), predicate);
        }
        i iVar = (i) navigableMap;
        return new i(iVar.f4015a, Predicates.and(iVar.f4016b, predicate));
    }

    public static <K, V> BiMap<K, V> filterEntries(BiMap<K, V> biMap, Predicate<? super Map.Entry<K, V>> predicate) {
        Preconditions.checkNotNull(biMap);
        Preconditions.checkNotNull(predicate);
        if (!(biMap instanceof g)) {
            return new g(biMap, predicate);
        }
        g gVar = (g) biMap;
        return new g((BiMap) gVar.d, Predicates.and(gVar.e, predicate));
    }

    public static abstract class a<K, V> extends d0<K, V> {
        public final Map d;
        public final Predicate e;

        public a(Map map, Predicate predicate) {
            this.d = map;
            this.e = predicate;
        }

        public final boolean b(Object obj, Object obj2) {
            return this.e.apply(Maps.immutableEntry(obj, obj2));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Preconditions.checkArgument(b(k, v));
            return (V) this.d.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                Preconditions.checkArgument(b(entry.getKey(), entry.getValue()));
            }
            this.d.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            Map map = this.d;
            return map.containsKey(obj) && b(obj, map.get(obj));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            V v = (V) this.d.get(obj);
            if (v == null || !b(obj, v)) {
                return null;
            }
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (containsKey(obj)) {
                return (V) this.d.remove(obj);
            }
            return null;
        }

        @Override // com.google.common.collect.Maps.d0
        public final Collection a() {
            return new l(this, this.d, this.e);
        }
    }

    public static final class l<K, V> extends c0<K, V> {

        /* renamed from: b, reason: collision with root package name */
        public final Map f4018b;
        public final Predicate c;

        public l(AbstractMap abstractMap, Map map, Predicate predicate) {
            super(abstractMap);
            this.f4018b = map;
            this.c = predicate;
        }

        @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            Iterator<Map.Entry<K, V>> it = this.f4018b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.c.apply(next) && Objects.equal(next.getValue(), obj)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f4018b.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.c.apply(next) && collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.c0, java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.f4018b.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.c.apply(next) && !collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    public static class k<K, V> extends a<K, V> {
        public final Predicate f;

        public k(Map map, Predicate predicate, Predicate predicate2) {
            super(map, predicate2);
            this.f = predicate;
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<K, V>> createEntrySet() {
            return Sets.filter(this.d.entrySet(), this.e);
        }

        @Override // com.google.common.collect.Maps.d0
        public final Set createKeySet() {
            return Sets.filter(this.d.keySet(), this.f);
        }

        @Override // com.google.common.collect.Maps.a, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.d.containsKey(obj) && this.f.apply(obj);
        }
    }

    public static class h<K, V> extends a<K, V> {
        public final Set f;

        public h(Map map, Predicate predicate) {
            super(map, predicate);
            this.f = Sets.filter(map.entrySet(), this.e);
        }

        @Override // com.google.common.collect.Maps.d0
        public Set<Map.Entry<K, V>> createEntrySet() {
            return new a();
        }

        public class a extends ForwardingSet<Map.Entry<K, V>> {
            public a() {
            }

            @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
            public Set<Map.Entry<K, V>> delegate() {
                return h.this.f;
            }

            /* renamed from: com.google.common.collect.Maps$h$a$a, reason: collision with other inner class name */
            public class C0103a extends c6<Map.Entry<K, V>, Map.Entry<K, V>> {
                public C0103a(Iterator it) {
                    super(it);
                }

                @Override // com.google.common.collect.c6
                public final Object a(Object obj) {
                    return new c4(this, (Map.Entry) obj);
                }
            }

            @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C0103a(h.this.f.iterator());
            }
        }

        @Override // com.google.common.collect.Maps.d0
        public Set createKeySet() {
            return new b();
        }

        public static boolean c(Map map, Predicate predicate, Collection collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (predicate.apply(next) && collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public static boolean d(Map map, Predicate predicate, Collection collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (predicate.apply(next) && !collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        public class b extends n<K, V> {
            public b() {
                super(h.this);
            }

            @Override // com.google.common.collect.Maps.n, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                h hVar = h.this;
                if (!hVar.containsKey(obj)) {
                    return false;
                }
                hVar.d.remove(obj);
                return true;
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                h hVar = h.this;
                return h.c(hVar.d, hVar.e, collection);
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                h hVar = h.this;
                return h.d(hVar.d, hVar.e, collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return Lists.newArrayList(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
            }
        }
    }

    public static class j<K, V> extends h<K, V> implements SortedMap<K, V> {

        public class a extends h<K, V>.b implements SortedSet<K> {
            @Override // java.util.SortedSet
            public Comparator<? super K> comparator() {
                return ((SortedMap) j.this.d).comparator();
            }

            public a() {
                super();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> subSet(K k, K k2) {
                return (SortedSet) j.this.subMap(k, k2).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> headSet(K k) {
                return (SortedSet) j.this.headMap(k).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> tailSet(K k) {
                return (SortedSet) j.this.tailMap(k).keySet();
            }

            @Override // java.util.SortedSet
            public K first() {
                return (K) j.this.firstKey();
            }

            @Override // java.util.SortedSet
            public K last() {
                return (K) j.this.lastKey();
            }
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return ((SortedMap) this.d).comparator();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            Map map = this.d;
            SortedMap<K, V> sortedMapHeadMap = (SortedMap) map;
            while (true) {
                K kLastKey = sortedMapHeadMap.lastKey();
                if (b(kLastKey, map.get(kLastKey))) {
                    return kLastKey;
                }
                sortedMapHeadMap = ((SortedMap) map).headMap(kLastKey);
            }
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public SortedSet<K> keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // com.google.common.collect.Maps.h, com.google.common.collect.Maps.d0
        public final Set createKeySet() {
            return new a();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return keySet().iterator().next();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return new j(((SortedMap) this.d).headMap(k), this.e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return new j(((SortedMap) this.d).subMap(k, k2), this.e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return new j(((SortedMap) this.d).tailMap(k), this.e);
        }
    }

    @GwtIncompatible
    public static class i<K, V> extends com.google.common.collect.n<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final NavigableMap f4015a;

        /* renamed from: b, reason: collision with root package name */
        public final Predicate f4016b;
        public final Map c;

        public class a extends q<K, V> {
            @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                i iVar = i.this;
                return h.c(iVar.f4015a, iVar.f4016b, collection);
            }

            @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                i iVar = i.this;
                return h.d(iVar.f4015a, iVar.f4016b, collection);
            }

            public a(NavigableMap navigableMap) {
                super(navigableMap);
            }
        }

        public i(NavigableMap navigableMap, Predicate predicate) {
            this.f4015a = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.f4016b = predicate;
            this.c = new h(navigableMap, predicate);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.f4015a.comparator();
        }

        @Override // com.google.common.collect.n, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new a(this);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Collection<V> values() {
            return new l(this, this.f4015a, this.f4016b);
        }

        @Override // com.google.common.collect.Maps.m
        public final Iterator a() {
            return Iterators.filter(this.f4015a.entrySet().iterator(), this.f4016b);
        }

        @Override // com.google.common.collect.n
        public final Iterator b() {
            return Iterators.filter(this.f4015a.descendingMap().entrySet().iterator(), this.f4016b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return ((AbstractMap) this.c).size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return !Iterables.any(this.f4015a.entrySet(), this.f4016b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        @NullableDecl
        public V get(@NullableDecl Object obj) {
            return (V) this.c.get(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(@NullableDecl Object obj) {
            return this.c.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            return (V) this.c.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(@NullableDecl Object obj) {
            return (V) this.c.remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.c.putAll(map);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public void clear() {
            ((AbstractMap) this.c).clear();
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<Map.Entry<K, V>> entrySet() {
            return this.c.entrySet();
        }

        @Override // com.google.common.collect.n, java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) Iterables.a(this.f4015a.entrySet(), this.f4016b);
        }

        @Override // com.google.common.collect.n, java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) Iterables.a(this.f4015a.descendingMap().entrySet(), this.f4016b);
        }

        @Override // com.google.common.collect.n, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.filterEntries((NavigableMap) this.f4015a.descendingMap(), this.f4016b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.filterEntries((NavigableMap) this.f4015a.subMap(k, z, k2, z2), this.f4016b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.f4015a.headMap(k, z), this.f4016b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.f4015a.tailMap(k, z), this.f4016b);
        }
    }

    public static final class g<K, V> extends h<K, V> implements BiMap<K, V> {

        /* renamed from: g, reason: collision with root package name */
        public final BiMap f4011g;

        public g(BiMap biMap, Predicate predicate) {
            super(biMap, predicate);
            this.f4011g = new g(biMap.inverse(), new b4(predicate), this);
        }

        public g(BiMap biMap, Predicate predicate, BiMap biMap2) {
            super(biMap, predicate);
            this.f4011g = biMap2;
        }

        @Override // com.google.common.collect.BiMap
        public V forcePut(@NullableDecl K k, @NullableDecl V v) {
            Preconditions.checkArgument(b(k, v));
            return (V) ((BiMap) this.d).forcePut(k, v);
        }

        @Override // com.google.common.collect.BiMap
        public BiMap<V, K> inverse() {
            return this.f4011g;
        }

        @Override // com.google.common.collect.Maps.d0, java.util.AbstractMap, java.util.Map
        public Set<V> values() {
            return this.f4011g.keySet();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @GwtIncompatible
    public static <K, V> NavigableMap<K, V> unmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap) {
        Preconditions.checkNotNull(navigableMap);
        return navigableMap instanceof a0 ? navigableMap : new a0(navigableMap);
    }

    @GwtIncompatible
    public static class a0<K, V> extends ForwardingSortedMap<K, V> implements NavigableMap<K, V>, Serializable {

        /* renamed from: a, reason: collision with root package name */
        public final NavigableMap f3998a;

        /* renamed from: b, reason: collision with root package name */
        public transient a0 f3999b;

        public a0(NavigableMap navigableMap) {
            this.f3998a = navigableMap;
        }

        public a0(NavigableMap navigableMap, a0 a0Var) {
            this.f3998a = navigableMap;
            this.f3999b = a0Var;
        }

        @Override // com.google.common.collect.ForwardingSortedMap, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public SortedMap<K, V> delegate() {
            return Collections.unmodifiableSortedMap(this.f3998a);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return Maps.b(this.f3998a.lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return (K) this.f3998a.lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return Maps.b(this.f3998a.floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return (K) this.f3998a.floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return Maps.b(this.f3998a.ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return (K) this.f3998a.ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return Maps.b(this.f3998a.higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return (K) this.f3998a.higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return Maps.b(this.f3998a.firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return Maps.b(this.f3998a.lastEntry());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            a0 a0Var = this.f3999b;
            if (a0Var != null) {
                return a0Var;
            }
            a0 a0Var2 = new a0(this.f3998a.descendingMap(), this);
            this.f3999b = a0Var2;
            return a0Var2;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Sets.unmodifiableNavigableSet(this.f3998a.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return Sets.unmodifiableNavigableSet(this.f3998a.descendingKeySet());
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.unmodifiableNavigableMap(this.f3998a.subMap(k, z, k2, z2));
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.f3998a.headMap(k, z));
        }

        @Override // com.google.common.collect.ForwardingSortedMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.f3998a.tailMap(k, z));
        }
    }

    @GwtCompatible
    public static abstract class d0<K, V> extends AbstractMap<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public transient Set f4007a;

        /* renamed from: b, reason: collision with root package name */
        public transient Set f4008b;
        public transient Collection c;

        public abstract Set createEntrySet();

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f4007a;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setCreateEntrySet = createEntrySet();
            this.f4007a = setCreateEntrySet;
            return setCreateEntrySet;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.f4008b;
            if (set != null) {
                return set;
            }
            Set<K> setCreateKeySet = createKeySet();
            this.f4008b = setCreateKeySet;
            return setCreateKeySet;
        }

        public Set createKeySet() {
            return new n(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.c;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionA = a();
            this.c = collectionA;
            return collectionA;
        }

        public Collection a() {
            return new c0(this);
        }
    }

    public static abstract class m<K, V> extends AbstractMap<K, V> {
        public abstract Iterator a();

        public class a extends f<K, V> {
            public a() {
            }

            @Override // com.google.common.collect.Maps.f
            public final Map a() {
                return m.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return m.this.a();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterators.b(a());
        }
    }

    public static Object h(Map map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    public static boolean g(Map map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static String i(Map map) {
        int size = map.size();
        g0.b(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z2 = true;
        for (Map.Entry entry : map.entrySet()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z2 = false;
        }
        sb.append('}');
        return sb.toString();
    }

    public static class n<K, V> extends Sets.k<K> {

        /* renamed from: a, reason: collision with root package name */
        public final Map f4020a;

        public n(Map map) {
            this.f4020a = (Map) Preconditions.checkNotNull(map);
        }

        public Map a() {
            return this.f4020a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new r3(a().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            a().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }
    }

    public static Object f(Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static class s<K, V> extends n<K, V> implements SortedSet<K> {
        @Override // com.google.common.collect.Maps.n
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public SortedMap a() {
            return (SortedMap) this.f4020a;
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return a().comparator();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new s(a().subMap(k, k2));
        }

        public SortedSet<K> headSet(K k) {
            return new s(a().headMap(k));
        }

        public SortedSet<K> tailSet(K k) {
            return new s(a().tailMap(k));
        }

        @Override // java.util.SortedSet
        public K first() {
            return (K) a().firstKey();
        }

        @Override // java.util.SortedSet
        public K last() {
            return (K) a().lastKey();
        }
    }

    @GwtIncompatible
    public static class q<K, V> extends s<K, V> implements NavigableSet<K> {
        @Override // com.google.common.collect.Maps.s, com.google.common.collect.Maps.n
        public final Map a() {
            return (NavigableMap) this.f4020a;
        }

        @Override // com.google.common.collect.Maps.s
        /* renamed from: b */
        public final SortedMap a() {
            return (NavigableMap) this.f4020a;
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return (K) ((NavigableMap) this.f4020a).ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return ((NavigableMap) this.f4020a).descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return (K) ((NavigableMap) this.f4020a).floorKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return ((NavigableMap) this.f4020a).headMap(k, z).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return (K) ((NavigableMap) this.f4020a).higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return (K) ((NavigableMap) this.f4020a).lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Maps.f(((NavigableMap) this.f4020a).pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Maps.f(((NavigableMap) this.f4020a).pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return ((NavigableMap) this.f4020a).subMap(k, z, k2, z2).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return ((NavigableMap) this.f4020a).tailMap(k, z).navigableKeySet();
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // com.google.common.collect.Maps.s, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.s, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // com.google.common.collect.Maps.s, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k) {
            return tailSet(k, true);
        }
    }

    public static class c0<K, V> extends AbstractCollection<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Map f4004a;

        public c0(Map map) {
            this.f4004a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new s3(this.f4004a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                Map map = this.f4004a;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    if (Objects.equal(obj, entry.getValue())) {
                        map.remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetNewHashSet = Sets.newHashSet();
                Map map = this.f4004a;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetNewHashSet.add(entry.getKey());
                    }
                }
                return map.keySet().removeAll(hashSetNewHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetNewHashSet = Sets.newHashSet();
                Map map = this.f4004a;
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetNewHashSet.add(entry.getKey());
                    }
                }
                return map.keySet().retainAll(hashSetNewHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f4004a.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f4004a.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return this.f4004a.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f4004a.clear();
        }
    }

    public static abstract class f<K, V> extends Sets.k<Map.Entry<K, V>> {
        public abstract Map a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object objH = Maps.h(a(), key);
            if (Objects.equal(objH, entry.getValue())) {
                return objH != null || a().containsKey(key);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return a().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.Sets.k, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                return Sets.d(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.Sets.k, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetNewHashSetWithExpectedSize = Sets.newHashSetWithExpectedSize(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        hashSetNewHashSetWithExpectedSize.add(((Map.Entry) obj).getKey());
                    }
                }
                return a().keySet().retainAll(hashSetNewHashSetWithExpectedSize);
            }
        }
    }

    @GwtIncompatible
    public static abstract class d<K, V> extends ForwardingMap<K, V> implements NavigableMap<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public transient Ordering f4005a;

        /* renamed from: b, reason: collision with root package name */
        public transient Set f4006b;
        public transient NavigableSet c;

        public abstract NavigableMap a();

        public abstract Iterator entryIterator();

        @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public final Map<K, V> delegate() {
            return a();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Ordering ordering = this.f4005a;
            if (ordering != null) {
                return ordering;
            }
            Comparator<? super K> comparator = a().comparator();
            if (comparator == null) {
                comparator = Ordering.natural();
            }
            Ordering orderingReverse = Ordering.from(comparator).reverse();
            this.f4005a = orderingReverse;
            return orderingReverse;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return (K) a().lastKey();
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return (K) a().firstKey();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return a().higherEntry(k);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return (K) a().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return a().ceilingEntry(k);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return (K) a().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return a().floorEntry(k);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return (K) a().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return a().lowerEntry(k);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return (K) a().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return a().lastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return a().firstEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return a().pollLastEntry();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return a().pollFirstEntry();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return a();
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.f4006b;
            if (set != null) {
                return set;
            }
            a4 a4Var = new a4(this);
            this.f4006b = a4Var;
            return a4Var;
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            NavigableSet<K> navigableSet = this.c;
            if (navigableSet != null) {
                return navigableSet;
            }
            q qVar = new q(this);
            this.c = qVar;
            return qVar;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return a().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return a().subMap(k2, z2, k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return a().tailMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return a().headMap(k, z).descendingMap();
        }

        @Override // java.util.NavigableMap, java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public Collection<V> values() {
            return new c0(this);
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }
    }

    public static ImmutableMap e(Collection collection) {
        ImmutableMap.Builder builder = new ImmutableMap.Builder(collection.size());
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            builder.put(it.next(), Integer.valueOf(i2));
            i2++;
        }
        return builder.build();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    @GwtIncompatible
    public static <K extends Comparable<? super K>, V> NavigableMap<K, V> subMap(NavigableMap<K, V> navigableMap, Range<K> range) {
        if (navigableMap.comparator() != null && navigableMap.comparator() != Ordering.natural() && range.hasLowerBound() && range.hasUpperBound()) {
            Preconditions.checkArgument(navigableMap.comparator().compare(range.lowerEndpoint(), range.upperEndpoint()) <= 0, "map is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.hasLowerBound() && range.hasUpperBound()) {
            Comparable comparableLowerEndpoint = range.lowerEndpoint();
            BoundType boundTypeLowerBoundType = range.lowerBoundType();
            BoundType boundType = BoundType.CLOSED;
            return navigableMap.subMap(comparableLowerEndpoint, boundTypeLowerBoundType == boundType, range.upperEndpoint(), range.upperBoundType() == boundType);
        }
        if (range.hasLowerBound()) {
            return navigableMap.tailMap(range.lowerEndpoint(), range.lowerBoundType() == BoundType.CLOSED);
        }
        if (range.hasUpperBound()) {
            return navigableMap.headMap(range.upperEndpoint(), range.upperBoundType() == BoundType.CLOSED);
        }
        return (NavigableMap) Preconditions.checkNotNull(navigableMap);
    }
}
