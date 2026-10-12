package com.google.common.collect;

import java.util.AbstractMap;
import java.util.Map;

/* loaded from: classes.dex */
class u2 extends ImmutableList<Map.Entry<Object, Object>> {
    public final /* synthetic */ v2 c;

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return true;
    }

    public u2(v2 v2Var) {
        this.c = v2Var;
    }

    @Override // java.util.List
    public Map.Entry<Object, Object> get(int i) {
        v2 v2Var = this.c;
        return new AbstractMap.SimpleImmutableEntry(v2Var.c.f.asList().get(i), v2Var.c.f3919g.get(i));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c.c.size();
    }
}
