package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
class g2<K, V> extends k<K, V> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4221a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f4222b;

    public g2(Object obj, Object obj2) {
        this.f4221a = obj;
        this.f4222b = obj2;
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    @NullableDecl
    public final K getKey() {
        return (K) this.f4221a;
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    @NullableDecl
    public final V getValue() {
        return (V) this.f4222b;
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public final V setValue(V v) {
        throw new UnsupportedOperationException();
    }
}
