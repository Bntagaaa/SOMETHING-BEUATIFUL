package com.google.common.collect;

import com.google.common.primitives.Primitives;
import java.util.Map;

/* loaded from: classes.dex */
final class n4 extends ForwardingMapEntry<Class<Object>, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4304a;

    public n4(Map.Entry entry) {
        this.f4304a = entry;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
    public Map.Entry<Class<Object>, Object> delegate() {
        return this.f4304a;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
    public Object setValue(Object obj) {
        return super.setValue(Primitives.wrap(getKey()).cast(obj));
    }
}
