package com.google.common.collect;

import com.google.common.collect.Multiset;

/* loaded from: classes.dex */
class i1 extends EnumMultiset<Enum<Object>>.a<Multiset.Entry<Enum<Object>>> {
    public final /* synthetic */ EnumMultiset d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i1(EnumMultiset enumMultiset) {
        super();
        this.d = enumMultiset;
    }

    @Override // com.google.common.collect.EnumMultiset.a
    public final Object a(int i) {
        return new h1(this, i);
    }
}
