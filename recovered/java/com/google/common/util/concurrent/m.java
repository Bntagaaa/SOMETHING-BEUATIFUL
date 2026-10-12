package com.google.common.util.concurrent;

import com.google.common.base.Supplier;

/* loaded from: classes.dex */
final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Supplier f5039a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Runnable f5040b;

    public m(Supplier supplier, Runnable runnable) {
        this.f5039a = supplier;
        this.f5040b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        boolean zA = Callables.a((String) this.f5039a.get(), threadCurrentThread);
        try {
            this.f5040b.run();
        } finally {
            if (zA) {
                Callables.a(name, threadCurrentThread);
            }
        }
    }
}
