package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@GwtIncompatible
/* loaded from: classes.dex */
final class o0<V> extends FluentFuture.a<V> {
    public ListenableFuture h;
    public ScheduledFuture i;

    public static final class b<V> implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public o0 f5047a;

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture;
            o0 o0Var = this.f5047a;
            if (o0Var == null || (listenableFuture = o0Var.h) == null) {
                return;
            }
            this.f5047a = null;
            if (listenableFuture.isDone()) {
                o0Var.setFuture(listenableFuture);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = o0Var.i;
                o0Var.i = null;
                String str = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            str = "Timed out (timeout delayed by " + jAbs + " ms after scheduled time)";
                        }
                    } catch (Throwable th) {
                        o0Var.setException(new c(str));
                        throw th;
                    }
                }
                o0Var.setException(new c(str + ": " + listenableFuture));
            } finally {
                listenableFuture.cancel(true);
            }
        }
    }

    public static final class c extends TimeoutException {
        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public String pendingToString() {
        ListenableFuture listenableFuture = this.h;
        ScheduledFuture scheduledFuture = this.i;
        if (listenableFuture == null) {
            return null;
        }
        String str = "inputFuture=[" + listenableFuture + "]";
        if (scheduledFuture == null) {
            return str;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return str;
        }
        return str + ", remaining delay=[" + delay + " ms]";
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        h(this.h);
        ScheduledFuture scheduledFuture = this.i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.h = null;
        this.i = null;
    }
}
