package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
final class f0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5016a = true;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Executor f5017b;
    public final /* synthetic */ AbstractFuture c;

    public f0(Executor executor, AbstractFuture abstractFuture) {
        this.f5017b = executor;
        this.c = abstractFuture;
    }

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f5018a;

        public a(Runnable runnable) {
            this.f5018a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            f0.this.f5016a = false;
            this.f5018a.run();
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        try {
            this.f5017b.execute(new a(runnable));
        } catch (RejectedExecutionException e) {
            if (this.f5016a) {
                this.c.setException(e);
            }
        }
    }
}
