package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.common.collect.r4;

/* loaded from: classes.dex */
class i extends j<Object>.a<Multiset.Entry<Object>> {
    public final /* synthetic */ j e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(j jVar) {
        super();
        this.e = jVar;
    }

    @Override // com.google.common.collect.j.a
    public final Object a(int i) {
        r4 r4Var = this.e.c;
        Preconditions.checkElementIndex(i, r4Var.c);
        return new r4.a(i);
    }
}
