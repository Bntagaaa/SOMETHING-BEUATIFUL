package com.google.common.util.concurrent;

import com.google.common.base.Function;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
class k implements Function<AtomicLong, Long> {
    @Override // com.google.common.base.Function
    public Long apply(AtomicLong atomicLong) {
        return Long.valueOf(atomicLong.get());
    }
}
