package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.g;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
abstract class t<K, V> extends p<K, V> implements SortedSetMultimap<K, V> {
    @Override // com.google.common.collect.p, com.google.common.collect.g
    public abstract SortedSet createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(@NullableDecl Object obj) {
        return get((t<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Set get(@NullableDecl Object obj) {
        return get((t<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Collection replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((t<K, V>) obj, iterable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public /* bridge */ /* synthetic */ Set replaceValues(@NullableDecl Object obj, Iterable iterable) {
        return replaceValues((t<K, V>) obj, iterable);
    }

    public t(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g
    public final Collection j() {
        SortedSet sortedSetCreateCollection = createCollection();
        if (sortedSetCreateCollection instanceof NavigableSet) {
            return Sets.unmodifiableNavigableSet((NavigableSet) sortedSetCreateCollection);
        }
        return Collections.unmodifiableSortedSet(sortedSetCreateCollection);
    }

    @Override // com.google.common.collect.p
    /* renamed from: n */
    public final Set j() {
        SortedSet sortedSetCreateCollection = createCollection();
        if (sortedSetCreateCollection instanceof NavigableSet) {
            return Sets.unmodifiableNavigableSet((NavigableSet) sortedSetCreateCollection);
        }
        return Collections.unmodifiableSortedSet(sortedSetCreateCollection);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g
    public final Collection k(Collection collection) {
        if (collection instanceof NavigableSet) {
            return Sets.unmodifiableNavigableSet((NavigableSet) collection);
        }
        return Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g
    public final Collection m(Object obj, Collection collection) {
        if (collection instanceof NavigableSet) {
            return new g.k(obj, (NavigableSet) collection, null);
        }
        return new g.m(obj, (SortedSet) collection, null);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedSet<V> get(@NullableDecl K k) {
        return (SortedSet) super.get((t<K, V>) k);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public SortedSet<V> removeAll(@NullableDecl Object obj) {
        return (SortedSet) super.removeAll(obj);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    @CanIgnoreReturnValue
    public SortedSet<V> replaceValues(@NullableDecl K k, Iterable<? extends V> iterable) {
        return (SortedSet) super.replaceValues((t<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.p, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Map<K, Collection<V>> asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l, com.google.common.collect.Multimap
    public Collection<V> values() {
        return super.values();
    }
}
