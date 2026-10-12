package com.google.common.util.concurrent;

import com.google.common.base.Function;
import java.util.Map;

/* loaded from: classes.dex */
class k0 implements Function<Map.Entry<Service, Long>, Long> {
    @Override // com.google.common.base.Function
    public Long apply(Map.Entry<Service, Long> entry) {
        return entry.getValue();
    }
}
