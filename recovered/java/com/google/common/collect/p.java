package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.g;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class p<K, V> extends g<K, V> implements SetMultimap<K, V> {
    @Override // com.google.common.collect.g
    public abstract Set createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((p<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((p<K, V>) obj, iterable);
    }

    public p(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.g
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public Set j() {
        return Collections.EMPTY_SET;
    }

    @Override // com.google.common.collect.g
    public Collection k(Collection collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override // com.google.common.collect.g
    public Collection m(Object obj, Collection collection) {
        return new g.l(obj, (Set) collection);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(@NullableDecl K k) {
        return (Set) super.get((p<K, V>) k);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public Set<V> removeAll(@NullableDecl Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public Set<V> replaceValues(@NullableDecl K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((p<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public boolean put(@NullableDecl K k, @NullableDecl V v) {
        return super.put(k, v);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }
}
