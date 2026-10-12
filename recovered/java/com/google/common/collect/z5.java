package com.google.common.collect;

import com.google.common.collect.y5;
import java.util.Collection;
import java.util.Map;

/* loaded from: classes.dex */
class z5 extends ForwardingMapEntry<Object, Collection<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4402a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y5.c.a f4403b;

    public z5(y5.c.a aVar, Map.Entry entry) {
        this.f4403b = aVar;
        this.f4402a = entry;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
    public Map.Entry<Object, Collection<Object>> delegate() {
        return this.f4402a;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
    public Collection<Object> getValue() {
        return y5.b(y5.c.this.f4396b, (Collection) this.f4402a.getValue());
    }
}
