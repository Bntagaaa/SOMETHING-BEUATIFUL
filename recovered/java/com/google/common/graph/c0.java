package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.UnmodifiableIterator;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class c0<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final Map f4500a;

    /* renamed from: b, reason: collision with root package name */
    public volatile transient Map.Entry f4501b;

    public class a extends AbstractSet<K> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public UnmodifiableIterator<K> iterator() {
            return new C0132a(c0.this.f4500a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return c0.this.f4500a.size();
        }

        public a() {
        }

        /* renamed from: com.google.common.graph.c0$a$a, reason: collision with other inner class name */
        public class C0132a extends UnmodifiableIterator<K> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Iterator f4503a;

            public C0132a(Iterator it) {
                this.f4503a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f4503a.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry entry = (Map.Entry) this.f4503a.next();
                c0.this.f4501b = entry;
                return (K) entry.getKey();
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return c0.this.containsKey(obj);
        }
    }

    public c0(Map map) {
        this.f4500a = (Map) Preconditions.checkNotNull(map);
    }

    @CanIgnoreReturnValue
    public final V put(@NullableDecl K k, @NullableDecl V v) {
        clearCache();
        return (V) this.f4500a.put(k, v);
    }

    @CanIgnoreReturnValue
    public final V remove(@NullableDecl Object obj) {
        clearCache();
        return (V) this.f4500a.remove(obj);
    }

    public V get(@NullableDecl Object obj) {
        V ifCached = getIfCached(obj);
        return ifCached != null ? ifCached : getWithoutCaching(obj);
    }

    public final V getWithoutCaching(@NullableDecl Object obj) {
        return (V) this.f4500a.get(obj);
    }

    public final boolean containsKey(@NullableDecl Object obj) {
        return getIfCached(obj) != null || this.f4500a.containsKey(obj);
    }

    public final Set<K> unmodifiableKeySet() {
        return new a();
    }

    public V getIfCached(@NullableDecl Object obj) {
        Map.Entry entry = this.f4501b;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return (V) entry.getValue();
    }

    public void clearCache() {
        this.f4501b = null;
    }
}
