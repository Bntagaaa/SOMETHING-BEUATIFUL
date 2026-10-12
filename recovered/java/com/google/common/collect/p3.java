package com.google.common.collect;

import com.google.common.collect.Maps;
import java.util.Map;

/* loaded from: classes.dex */
final class p3 extends k<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4315a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Maps.EntryTransformer f4316b;

    public p3(Map.Entry entry, Maps.EntryTransformer entryTransformer) {
        this.f4315a = entry;
        this.f4316b = entryTransformer;
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object getKey() {
        return this.f4315a.getKey();
    }

    @Override // com.google.common.collect.k, java.util.Map.Entry
    public Object getValue() {
        Map.Entry entry = this.f4315a;
        return this.f4316b.transformEntry(entry.getKey(), entry.getValue());
    }
}
