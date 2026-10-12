package com.google.common.util.concurrent;

import com.google.common.base.Supplier;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class l implements Callable<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Supplier f5036a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Callable f5037b;

    public l(Supplier supplier, Callable callable) {
        this.f5036a = supplier;
        this.f5037b = callable;
    }

    @Override // java.util.concurrent.Callable
    public Object call() throws Exception {
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        boolean zA = Callables.a((String) this.f5036a.get(), threadCurrentThread);
        try {
            return this.f5037b.call();
        } finally {
            if (zA) {
                Callables.a(name, threadCurrentThread);
            }
        }
    }
}
