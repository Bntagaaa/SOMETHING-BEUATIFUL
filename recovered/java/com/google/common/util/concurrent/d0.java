package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class d0 extends q0 {
    @Override // com.google.common.util.concurrent.q0
    public <T> Callable<T> wrapTask(Callable<T> callable) {
        Preconditions.checkNotNull(null);
        Preconditions.checkNotNull(callable);
        return new l(null, callable);
    }

    @Override // com.google.common.util.concurrent.q0
    public Runnable wrapTask(Runnable runnable) {
        Preconditions.checkNotNull(null);
        Preconditions.checkNotNull(runnable);
        return new m(null, runnable);
    }
}
