package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.util.Collection;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

@GwtCompatible
/* loaded from: classes.dex */
abstract class q<K, V> extends t<K, V> {
    @Override // com.google.common.collect.t, com.google.common.collect.p, com.google.common.collect.l, com.google.common.collect.Multimap, com.google.common.collect.ListMultimap
    public SortedMap<K, Collection<V>> asMap() {
        return (SortedMap) super.asMap();
    }

    @Override // com.google.common.collect.l, com.google.common.collect.Multimap
    public SortedSet<K> keySet() {
        return (SortedSet) super.keySet();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.l
    public final Set c() {
        return i();
    }
}
