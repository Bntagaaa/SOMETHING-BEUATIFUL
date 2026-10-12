package com.google.common.collect;

import com.google.common.collect.ArrayTable;

/* loaded from: classes.dex */
class b0 extends k<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4173a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayTable.a f4174b;

    public b0(ArrayTable.a aVar, int i) {
        this.f4174b = aVar;
        this.f4173a = i;
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object getKey() {
        ArrayTable.a aVar = this.f4174b;
        return aVar.f3841a.keySet().asList().get(this.f4173a);
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object getValue() {
        return this.f4174b.c(this.f4173a);
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object setValue(Object obj) {
        return this.f4174b.d(this.f4173a, obj);
    }
}
