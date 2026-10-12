package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;

@GwtCompatible
/* loaded from: classes.dex */
class p0<V> extends FluentFuture.a<V> implements RunnableFuture<V> {
    public volatile z h;

    public p0(Callable callable) {
        this.h = new b(callable);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        z zVar = this.h;
        if (zVar != null) {
            zVar.run();
        }
        this.h = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        z zVar;
        super.afterDone();
        if (wasInterrupted() && (zVar = this.h) != null) {
            zVar.b();
        }
        this.h = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public String pendingToString() {
        z zVar = this.h;
        if (zVar != null) {
            return "task=[" + zVar + "]";
        }
        return super.pendingToString();
    }

    public final class b extends z<V> {
        public final Callable d;

        public b(Callable callable) {
            this.d = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // com.google.common.util.concurrent.z
        public final boolean c() {
            return p0.this.isDone();
        }

        @Override // com.google.common.util.concurrent.z
        public final Object d() {
            return this.d.call();
        }

        @Override // com.google.common.util.concurrent.z
        public final void a(Object obj, Throwable th) {
            p0 p0Var = p0.this;
            if (th == null) {
                p0Var.set(obj);
            } else {
                p0Var.setException(th);
            }
        }

        @Override // com.google.common.util.concurrent.z
        public final String e() {
            return this.d.toString();
        }
    }

    public final class a extends z<ListenableFuture<V>> {
        public final AsyncCallable d;

        @Override // com.google.common.util.concurrent.z
        public final void a(Object obj, Throwable th) {
            ListenableFuture<? extends V> listenableFuture = (ListenableFuture) obj;
            p0 p0Var = p0.this;
            if (th == null) {
                p0Var.setFuture(listenableFuture);
            } else {
                p0Var.setException(th);
            }
        }

        public a(AsyncCallable asyncCallable) {
            this.d = (AsyncCallable) Preconditions.checkNotNull(asyncCallable);
        }

        @Override // com.google.common.util.concurrent.z
        public final boolean c() {
            return p0.this.isDone();
        }

        @Override // com.google.common.util.concurrent.z
        public final Object d() {
            AsyncCallable asyncCallable = this.d;
            return (ListenableFuture) Preconditions.checkNotNull(asyncCallable.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncCallable);
        }

        @Override // com.google.common.util.concurrent.z
        public final String e() {
            return this.d.toString();
        }
    }
}
