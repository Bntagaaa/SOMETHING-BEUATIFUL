package com.google.common.collect;

import com.google.common.collect.Table;

/* loaded from: classes.dex */
class y extends c<Table.Cell<Object, Object, Object>> {
    public final /* synthetic */ ArrayTable c;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.common.collect.c
    public Table.Cell<Object, Object, Object> get(int i) {
        ArrayTable arrayTable = this.c;
        arrayTable.getClass();
        return new z(arrayTable, i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(ArrayTable arrayTable, int i) {
        super(i);
        this.c = arrayTable;
    }
}
