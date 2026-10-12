package com.google.common.collect;

import com.google.common.collect.Table;
import java.util.Comparator;

/* loaded from: classes.dex */
final class g5 implements Comparator<Table.Cell<Object, Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f4223a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Comparator f4224b;

    public g5(Comparator comparator, Comparator comparator2) {
        this.f4223a = comparator;
        this.f4224b = comparator2;
    }

    @Override // java.util.Comparator
    public int compare(Table.Cell<Object, Object, Object> cell, Table.Cell<Object, Object, Object> cell2) {
        Comparator comparator = this.f4223a;
        int iCompare = comparator == null ? 0 : comparator.compare(cell.getRowKey(), cell2.getRowKey());
        if (iCompare != 0) {
            return iCompare;
        }
        Comparator comparator2 = this.f4224b;
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(cell.getColumnKey(), cell2.getColumnKey());
    }
}
