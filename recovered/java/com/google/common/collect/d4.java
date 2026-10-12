package com.google.common.collect;

import com.google.common.collect.Multisets;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
class d4 extends Multisets.e<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4195a;

    public d4(Map.Entry entry) {
        this.f4195a = entry;
    }

    @Override // com.google.common.collect.Multiset.Entry
    public Object getElement() {
        return this.f4195a.getKey();
    }

    @Override // com.google.common.collect.Multiset.Entry
    public int getCount() {
        return ((Collection) this.f4195a.getValue()).size();
    }
}
