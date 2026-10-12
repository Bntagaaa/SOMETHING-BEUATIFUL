package com.google.common.collect;

import java.util.List;

/* loaded from: classes.dex */
final class l5 extends ImmutableList<List<Object>> {
    public final /* synthetic */ ImmutableList c;

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean isPartialView() {
        return true;
    }

    public l5(ImmutableList immutableList) {
        this.c = immutableList;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.c.size();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.List
    public List<Object> get(int i) {
        return ((ImmutableSet) this.c.get(i)).asList();
    }
}
