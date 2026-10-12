package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class b<K, V> extends ForwardingMap<K, V> implements BiMap<K, V>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final transient AbstractMap f4164a;

    /* renamed from: b, reason: collision with root package name */
    public final transient b f4165b;
    public transient Set c;
    public transient Set d;
    public transient Set e;

    public Object a(Object obj) {
        return obj;
    }

    public Object b(Object obj) {
        return obj;
    }

    public class d extends ForwardingSet<K> {
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<K> delegate() {
            return b.this.f4164a.keySet();
        }

        public d() {
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public void clear() {
            b.this.clear();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            b bVar = b.this;
            bVar.f4165b.f4164a.remove(bVar.f4164a.remove(obj));
            return true;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new r3(b.this.entrySet().iterator());
        }
    }

    public b(EnumMap enumMap, AbstractMap abstractMap) {
        Preconditions.checkState(this.f4164a == null);
        Preconditions.checkState(this.f4165b == null);
        Preconditions.checkArgument(enumMap.isEmpty());
        Preconditions.checkArgument(abstractMap.isEmpty());
        Preconditions.checkArgument(enumMap != abstractMap);
        this.f4164a = enumMap;
        c cVar = new c();
        cVar.f4164a = abstractMap;
        cVar.f4165b = this;
        this.f4165b = cVar;
    }

    @Override // com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
    public Map<K, V> delegate() {
        return this.f4164a;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return this.f4165b.containsKey(obj);
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    @CanIgnoreReturnValue
    public V put(@NullableDecl K k, @NullableDecl V v) {
        return (V) c(k, v, false);
    }

    @CanIgnoreReturnValue
    public V forcePut(@NullableDecl K k, @NullableDecl V v) {
        return (V) c(k, v, true);
    }

    public final Object c(Object obj, Object obj2, boolean z) {
        a(obj);
        b(obj2);
        boolean zContainsKey = containsKey(obj);
        if (zContainsKey && Objects.equal(obj2, get(obj))) {
            return obj2;
        }
        if (z) {
            inverse().remove(obj2);
        } else {
            Preconditions.checkArgument(!containsValue(obj2), "value already present: %s", obj2);
        }
        Object objPut = this.f4164a.put(obj, obj2);
        if (zContainsKey) {
            this.f4165b.f4164a.remove(objPut);
        }
        this.f4165b.f4164a.put(obj2, obj);
        return objPut;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    @CanIgnoreReturnValue
    public V remove(@NullableDecl Object obj) {
        if (!containsKey(obj)) {
            return null;
        }
        V v = (V) this.f4164a.remove(obj);
        this.f4165b.f4164a.remove(v);
        return v;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public void clear() {
        this.f4164a.clear();
        this.f4165b.f4164a.clear();
    }

    public BiMap<V, K> inverse() {
        return this.f4165b;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.c;
        if (set != null) {
            return set;
        }
        d dVar = new d();
        this.c = dVar;
        return dVar;
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public Set<V> values() {
        Set<V> set = this.d;
        if (set != null) {
            return set;
        }
        e eVar = new e();
        this.d = eVar;
        return eVar;
    }

    public class e extends ForwardingSet<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Set f4171a;

        public e() {
            this.f4171a = b.this.f4165b.keySet();
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<V> delegate() {
            return this.f4171a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new s3(b.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingObject
        public String toString() {
            return standardToString();
        }
    }

    @Override // com.google.common.collect.ForwardingMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.e;
        if (set != null) {
            return set;
        }
        C0113b c0113b = new C0113b();
        this.e = c0113b;
        return c0113b;
    }

    public class a extends ForwardingMapEntry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Map.Entry f4166a;

        public a(Map.Entry entry) {
            this.f4166a = entry;
        }

        @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
        public Map.Entry<K, V> delegate() {
            return this.f4166a;
        }

        @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
        public V setValue(V v) {
            b bVar = b.this;
            bVar.b(v);
            Preconditions.checkState(bVar.entrySet().contains(this), "entry no longer in map");
            if (Objects.equal(v, getValue())) {
                return v;
            }
            Preconditions.checkArgument(!bVar.containsValue(v), "value already present: %s", v);
            V v2 = (V) this.f4166a.setValue(v);
            Preconditions.checkState(Objects.equal(v, bVar.get(getKey())), "entry no longer in map");
            K key = getKey();
            bVar.f4165b.f4164a.remove(v2);
            bVar.f4165b.f4164a.put(v, key);
            return v2;
        }
    }

    /* renamed from: com.google.common.collect.b$b, reason: collision with other inner class name */
    public class C0113b extends ForwardingSet<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public final Set f4168a;

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            b bVar = b.this;
            return new com.google.common.collect.a(bVar, bVar.f4164a.entrySet().iterator());
        }

        public C0113b() {
            this.f4168a = b.this.f4164a.entrySet();
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<Map.Entry<K, V>> delegate() {
            return this.f4168a;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public void clear() {
            b.this.clear();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean remove(Object obj) {
            Set set = this.f4168a;
            if (!set.contains(obj)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            b.this.f4165b.f4164a.remove(entry.getValue());
            set.remove(entry);
            return true;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public Object[] toArray() {
            return standardToArray();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) standardToArray(tArr);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean contains(Object obj) {
            Set<Map.Entry<K, V>> setDelegate = delegate();
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Preconditions.checkNotNull(entry);
            return setDelegate.contains(new x3(entry));
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return standardContainsAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return standardRemoveAll(collection);
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return standardRetainAll(collection);
        }
    }

    public static class c<K, V> extends b<K, V> {
        @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, com.google.common.collect.ForwardingObject
        public /* bridge */ /* synthetic */ Object delegate() {
            return super.delegate();
        }

        @Override // com.google.common.collect.b, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }

        @Override // com.google.common.collect.b
        public final Object a(Object obj) {
            return this.f4165b.b(obj);
        }

        @Override // com.google.common.collect.b
        public final Object b(Object obj) {
            return this.f4165b.a(obj);
        }
    }
}
