package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
final class e0 extends r0 {
    public final /* synthetic */ Supplier c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(ScheduledExecutorService scheduledExecutorService, Supplier supplier) {
        super(scheduledExecutorService);
        this.c = supplier;
    }

    @Override // com.google.common.util.concurrent.q0
    public <T> Callable<T> wrapTask(Callable<T> callable) {
        Supplier supplier = this.c;
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(callable);
        return new l(supplier, callable);
    }

    @Override // com.google.common.util.concurrent.q0
    public Runnable wrapTask(Runnable runnable) {
        Supplier supplier = this.c;
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(runnable);
        return new m(supplier, runnable);
    }
}
