package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.reflect.MutableTypeToInstanceMap;
import java.util.Map;

/* loaded from: classes.dex */
final class c implements Function<Map.Entry<Object, Object>, Map.Entry<Object, Object>> {
    @Override // com.google.common.base.Function
    public Map.Entry<Object, Object> apply(Map.Entry<Object, Object> entry) {
        return new MutableTypeToInstanceMap.b(entry);
    }
}
