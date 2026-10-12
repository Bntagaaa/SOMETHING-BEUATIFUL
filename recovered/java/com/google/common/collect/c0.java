package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ArrayTable;
import java.util.Map;

/* loaded from: classes.dex */
class c0 extends c<Map.Entry<Object, Object>> {
    public final /* synthetic */ ArrayTable.a c;

    @Override // com.google.common.collect.c
    public Map.Entry<Object, Object> get(int i) {
        ArrayTable.a aVar = this.c;
        Preconditions.checkElementIndex(i, aVar.size());
        return new b0(aVar, i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(ArrayTable.a aVar, int i) {
        super(i);
        this.c = aVar;
    }
}
