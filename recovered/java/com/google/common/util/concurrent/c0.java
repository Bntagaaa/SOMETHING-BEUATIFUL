package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class c0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Executor f5011a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Supplier f5012b;

    public c0(Executor executor, Supplier supplier) {
        this.f5011a = executor;
        this.f5012b = supplier;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Supplier supplier = this.f5012b;
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(runnable);
        this.f5011a.execute(new m(supplier, runnable));
    }
}
