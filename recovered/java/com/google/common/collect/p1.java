package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

@GwtCompatible
/* loaded from: classes.dex */
final class p1<K, V> extends n1<K, V> implements v1<K, V> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.n1, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection get(Object obj) {
        return get((p1<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public /* bridge */ /* synthetic */ Collection replaceValues(Object obj, Iterable iterable) {
        return replaceValues((p1<K, V>) obj, iterable);
    }

    @Override // com.google.common.collect.n1, com.google.common.collect.t1
    public SetMultimap<K, V> unfiltered() {
        return (SetMultimap) this.f;
    }

    @Override // com.google.common.collect.n1, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> get(K k) {
        return (Set) super.get((p1<K, V>) k);
    }

    @Override // com.google.common.collect.n1, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> removeAll(Object obj) {
        return (Set) super.removeAll(obj);
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public Set<V> replaceValues(K k, Iterable<? extends V> iterable) {
        return (Set) super.replaceValues((p1<K, V>) k, (Iterable) iterable);
    }

    @Override // com.google.common.collect.n1, com.google.common.collect.l
    public final Collection b() {
        return Sets.filter(unfiltered().entries(), entryPredicate());
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public Set<Map.Entry<K, V>> entries() {
        return (Set) super.entries();
    }
}
