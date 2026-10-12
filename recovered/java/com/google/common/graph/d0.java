package com.google.common.graph;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
class d0<K, V> extends c0<K, V> {
    public volatile transient a c;
    public volatile transient a d;

    @Override // com.google.common.graph.c0
    public V get(@NullableDecl Object obj) {
        V ifCached = getIfCached(obj);
        if (ifCached != null) {
            return ifCached;
        }
        V withoutCaching = getWithoutCaching(obj);
        if (withoutCaching != null) {
            a aVar = new a(obj, withoutCaching);
            this.d = this.c;
            this.c = aVar;
        }
        return withoutCaching;
    }

    @Override // com.google.common.graph.c0
    public V getIfCached(@NullableDecl Object obj) {
        V v = (V) super.getIfCached(obj);
        if (v != null) {
            return v;
        }
        a aVar = this.c;
        if (aVar != null && aVar.f4507a == obj) {
            return (V) aVar.f4508b;
        }
        a aVar2 = this.d;
        if (aVar2 == null || aVar2.f4507a != obj) {
            return null;
        }
        this.d = this.c;
        this.c = aVar2;
        return (V) aVar2.f4508b;
    }

    @Override // com.google.common.graph.c0
    public void clearCache() {
        super.clearCache();
        this.c = null;
        this.d = null;
    }

    public static final class a<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4507a;

        /* renamed from: b, reason: collision with root package name */
        public final Object f4508b;

        public a(Object obj, Object obj2) {
            this.f4507a = obj;
            this.f4508b = obj2;
        }
    }
}
