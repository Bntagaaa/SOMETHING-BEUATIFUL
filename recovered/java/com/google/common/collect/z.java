package com.google.common.collect;

import com.google.common.collect.Tables;

/* loaded from: classes.dex */
class z extends Tables.b<Object, Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final int f4399a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4400b;
    public final /* synthetic */ ArrayTable c;

    @Override // com.google.common.collect.Table.Cell
    public Object getColumnKey() {
        return this.c.d.get(this.f4400b);
    }

    @Override // com.google.common.collect.Table.Cell
    public Object getRowKey() {
        return this.c.c.get(this.f4399a);
    }

    public z(ArrayTable arrayTable, int i) {
        this.c = arrayTable;
        this.f4399a = i / arrayTable.d.size();
        this.f4400b = i % arrayTable.d.size();
    }

    @Override // com.google.common.collect.Table.Cell
    public Object getValue() {
        return this.c.at(this.f4399a, this.f4400b);
    }
}
