package com.google.common.collect;

/* loaded from: classes.dex */
class a0 extends c<Object> {
    public final /* synthetic */ ArrayTable c;

    @Override // com.google.common.collect.c
    public Object get(int i) {
        ArrayTable arrayTable = this.c;
        ImmutableList immutableList = arrayTable.d;
        return arrayTable.at(i / immutableList.size(), i % immutableList.size());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(ArrayTable arrayTable, int i) {
        super(i);
        this.c = arrayTable;
    }
}
