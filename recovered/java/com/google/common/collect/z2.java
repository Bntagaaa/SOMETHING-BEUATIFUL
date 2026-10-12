package com.google.common.collect;

/* loaded from: classes.dex */
class z2 extends ImmutableList<Object> {
    public final /* synthetic */ a3 c;

    public z2(a3 a3Var) {
        this.c = a3Var;
    }

    @Override // java.util.List
    public Object get(int i) {
        return this.c.get(i);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return this.c.isPartialView();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c.size();
    }
}
