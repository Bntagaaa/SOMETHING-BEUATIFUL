package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Map;

/* loaded from: classes.dex */
class x5 extends ForwardingMapEntry<Object, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Map.Entry f4386a;

    public x5(Map.Entry entry) {
        this.f4386a = entry;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, com.google.common.collect.ForwardingObject
    public Map.Entry<Object, Object> delegate() {
        return this.f4386a;
    }

    @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
    public Object setValue(Object obj) {
        return super.setValue(Preconditions.checkNotNull(obj));
    }

    @Override // com.google.common.collect.ForwardingMapEntry, java.util.Map.Entry
    public boolean equals(Object obj) {
        return standardEquals(obj);
    }
}
