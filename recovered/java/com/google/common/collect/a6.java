package com.google.common.collect;

import com.google.common.base.Function;
import com.google.common.collect.Table;
import com.google.common.collect.Tables;

/* loaded from: classes.dex */
class a6 implements Function<Table.Cell<Object, Object, Object>, Table.Cell<Object, Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Tables.d f4163a;

    public a6(Tables.d dVar) {
        this.f4163a = dVar;
    }

    @Override // com.google.common.base.Function
    public Table.Cell<Object, Object, Object> apply(Table.Cell<Object, Object, Object> cell) {
        return Tables.immutableCell(cell.getRowKey(), cell.getColumnKey(), this.f4163a.d.apply(cell.getValue()));
    }
}
