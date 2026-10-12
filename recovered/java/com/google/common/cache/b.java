package com.google.common.cache;

import com.google.common.cache.a;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.logging.Level;

/* loaded from: classes.dex */
class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f3826a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3827b;
    public final /* synthetic */ a.m c;
    public final /* synthetic */ ListenableFuture d;
    public final /* synthetic */ a.r e;

    public b(a.r rVar, Object obj, int i, a.m mVar, ListenableFuture listenableFuture) {
        this.e = rVar;
        this.f3826a = obj;
        this.f3827b = i;
        this.c = mVar;
        this.d = listenableFuture;
    }

    @Override // java.lang.Runnable
    public void run() {
        a.m mVar = this.c;
        try {
            this.e.i(this.f3826a, this.f3827b, mVar, this.d);
        } catch (Throwable th) {
            a.w.log(Level.WARNING, "Exception thrown during refresh", th);
            mVar.setException(th);
        }
    }
}
