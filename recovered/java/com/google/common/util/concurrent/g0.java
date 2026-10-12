package com.google.common.util.concurrent;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
class g0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExecutorService f5022a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f5023b;
    public final /* synthetic */ TimeUnit c;

    public g0(ExecutorService executorService, long j, TimeUnit timeUnit) {
        this.f5022a = executorService;
        this.f5023b = j;
        this.c = timeUnit;
    }

    @Override // java.lang.Runnable
    public void run() throws InterruptedException {
        ExecutorService executorService = this.f5022a;
        try {
            executorService.shutdown();
            executorService.awaitTermination(this.f5023b, this.c);
        } catch (InterruptedException unused) {
        }
    }
}
