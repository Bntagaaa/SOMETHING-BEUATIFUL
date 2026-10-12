package com.google.common.collect;

import java.util.Map;

/* loaded from: classes.dex */
final class x3 extends k<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4385a;

    public x3(Map.Entry entry) {
        this.f4385a = entry;
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object getKey() {
        return this.f4385a.getKey();
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object getValue() {
        return this.f4385a.getValue();
    }
}
