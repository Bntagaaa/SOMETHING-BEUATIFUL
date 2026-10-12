package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import java.io.Serializable;
import java.lang.Enum;
import java.util.EnumMap;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true, serializable = true)
/* loaded from: classes.dex */
final class h2<K extends Enum<K>, V> extends ImmutableMap.a<K, V> {
    public final transient EnumMap f;

    public static class b<K extends Enum<K>, V> implements Serializable {
    }

    @Override // com.google.common.collect.ImmutableMap
    public final boolean f() {
        return false;
    }

    public h2(EnumMap enumMap) {
        this.f = enumMap;
        Preconditions.checkArgument(!enumMap.isEmpty());
    }

    @Override // com.google.common.collect.ImmutableMap
    public final UnmodifiableIterator g() {
        return Iterators.unmodifiableIterator(this.f.keySet().iterator());
    }

    @Override // java.util.Map
    public int size() {
        return this.f.size();
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return this.f.containsKey(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        return (V) this.f.get(obj);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h2) {
            obj = ((h2) obj).f;
        }
        return this.f.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableMap.a
    public final UnmodifiableIterator h() {
        return new y3(this.f.entrySet().iterator());
    }
}
