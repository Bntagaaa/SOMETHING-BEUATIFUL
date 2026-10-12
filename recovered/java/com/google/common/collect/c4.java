package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.util.Map;

/* loaded from: classes.dex */
class c4 extends ForwardingMapEntry<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4189a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Maps.h.a.C0103a f4190b;

    public c4(Maps.h.a.C0103a c0103a, Map.Entry entry) {
        this.f4190b = c0103a;
        this.f4189a = entry;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
    public Map.Entry<Object, Object> delegate() {
        return this.f4189a;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
    public Object setValue(Object obj) {
        Preconditions.checkArgument(Maps.h.this.b(getKey(), obj));
        return super.setValue(obj);
    }
}
