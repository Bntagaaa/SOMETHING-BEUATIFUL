package com.google.common.collect;

import com.google.common.base.Preconditions;

/* loaded from: classes.dex */
class w4 extends f2<Comparable> {
    public final /* synthetic */ v4 c;

    public w4(v4 v4Var) {
        this.c = v4Var;
    }

    @Override // com.google.common.collect.f2
    public final ImmutableCollection f() {
        return this.c;
    }

    @Override // java.util.List
    public Comparable get(int i) {
        Preconditions.checkElementIndex(i, size());
        v4 v4Var = this.c;
        return v4Var.e.a(v4Var.first(), i);
    }
}
