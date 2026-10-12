package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.g;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class d<K, V> extends g<K, V> implements ListMultimap<K, V> {
    @Override // com.google.common.collect.g
    public abstract List createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((d<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((d<K, V>) obj, iterable);
    }

    public d(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.g
    public final Collection j() {
        return Collections.EMPTY_LIST;
    }

    @Override // com.google.common.collect.g
    public final Collection k(Collection collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.g
    public final Collection m(Object obj, Collection collection) {
        List list = (List) collection;
        if (!(list instanceof RandomAccess)) {
            return new g.j(obj, list, null);
        }
        return new g.f(obj, list, null);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public List<V> get(@NullableDecl K k) {
        return (List) super.get((d<K, V>) k);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public List<V> removeAll(@NullableDecl Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public List<V> replaceValues(@NullableDecl K k, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((d<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    @CanIgnoreReturnValue
    public boolean put(@NullableDecl K k, @NullableDecl V v) {
        return super.put(k, v);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public boolean equals(@NullableDecl Object obj) {
        return super.equals(obj);
    }
}
