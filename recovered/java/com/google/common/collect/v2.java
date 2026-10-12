package com.google.common.collect;

import java.util.Map;

/* loaded from: classes.dex */
class v2 extends m2<Object, Object> {
    public final /* synthetic */ ImmutableSortedMap c;

    public v2(ImmutableSortedMap immutableSortedMap) {
        this.c = immutableSortedMap;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<Map.Entry<Object, Object>> iterator() {
        return asList().iterator();
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList g() {
        return new u2(this);
    }

    @Override // com.google.common.collect.m2
    public final ImmutableMap i() {
        return this.c;
    }
}
