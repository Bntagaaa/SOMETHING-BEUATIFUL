package com.google.common.collect;

/* loaded from: classes.dex */
class g1 extends EnumMultiset<Enum<Object>>.a<Enum<Object>> {
    public final /* synthetic */ EnumMultiset d;

    @Override // com.google.common.collect.EnumMultiset.a
    public final Object a(int i) {
        return this.d.d[i];
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g1(EnumMultiset enumMultiset) {
        super();
        this.d = enumMultiset;
    }
}
