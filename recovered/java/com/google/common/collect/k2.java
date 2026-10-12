package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import java.util.Map;

/* loaded from: classes.dex */
class k2 extends m2<Object, Object> {
    public final /* synthetic */ ImmutableMap.a c;

    public k2(ImmutableMap.a aVar) {
        this.c = aVar;
    }

    @Override // com.google.common.collect.m2
    public final ImmutableMap i() {
        return this.c;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public UnmodifiableIterator<Map.Entry<Object, Object>> iterator() {
        return this.c.h();
    }
}
