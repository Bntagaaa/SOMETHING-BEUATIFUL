package com.google.common.collect;

import java.util.Map;

/* loaded from: classes.dex */
class f extends g<Object, Object>.b<Map.Entry<Object, Object>> {
    @Override // com.google.common.collect.g.b
    public final Object a(Object obj, Object obj2) {
        return Maps.immutableEntry(obj, obj2);
    }
}
