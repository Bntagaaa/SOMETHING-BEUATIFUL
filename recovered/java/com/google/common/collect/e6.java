package com.google.common.collect;

import com.google.common.base.Function;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
class e6 implements Function<Map<Object, Object>, Iterator<Object>> {
    @Override // com.google.common.base.Function
    public Iterator<Object> apply(Map<Object, Object> map) {
        return map.keySet().iterator();
    }
}
