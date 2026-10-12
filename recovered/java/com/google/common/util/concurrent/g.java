package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.logging.Logger;

/* loaded from: classes.dex */
class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f5020a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5021b;
    public final /* synthetic */ i c;

    public g(i iVar, ListenableFuture listenableFuture, int i) {
        this.c = iVar;
        this.f5020a = listenableFuture;
        this.f5021b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        ListenableFuture listenableFuture = this.f5020a;
        i iVar = this.c;
        try {
            if (listenableFuture.isCancelled()) {
                iVar.l = null;
                iVar.cancel(false);
            } else {
                int i = this.f5021b;
                Logger logger = i.o;
                try {
                    iVar.k(i, Futures.getDone(listenableFuture));
                } catch (ExecutionException e) {
                    iVar.m(e.getCause());
                } catch (Throwable th) {
                    iVar.m(th);
                }
            }
            i.j(iVar, null);
        } catch (Throwable th2) {
            i.j(iVar, null);
            throw th2;
        }
    }
}
