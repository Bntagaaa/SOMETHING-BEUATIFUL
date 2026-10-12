package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.i;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

@GwtCompatible
/* loaded from: classes.dex */
final class o<V> extends i<Object, V> {
    public c p;

    @Override // com.google.common.util.concurrent.i
    public final void k(int i, Object obj) {
    }

    public abstract class c<T> extends z<T> {
        public final Executor d;
        public boolean e = true;

        public abstract void f(Object obj);

        @Override // com.google.common.util.concurrent.z
        public final void a(Object obj, Throwable th) {
            o oVar = o.this;
            oVar.p = null;
            if (th != null) {
                if (th instanceof ExecutionException) {
                    oVar.setException(th.getCause());
                    return;
                } else if (th instanceof CancellationException) {
                    oVar.cancel(false);
                    return;
                } else {
                    oVar.setException(th);
                    return;
                }
            }
            f(obj);
        }

        public c(Executor executor) {
            this.d = (Executor) Preconditions.checkNotNull(executor);
        }

        @Override // com.google.common.util.concurrent.z
        public final boolean c() {
            return o.this.isDone();
        }
    }

    @Override // com.google.common.util.concurrent.i
    public final void l() {
        c cVar = this.p;
        if (cVar != null) {
            try {
                cVar.d.execute(cVar);
            } catch (RejectedExecutionException e) {
                if (cVar.e) {
                    o.this.setException(e);
                }
            }
        }
    }

    @Override // com.google.common.util.concurrent.i
    public final void o(i.a aVar) {
        super.o(aVar);
        if (aVar == i.a.f5026a) {
            this.p = null;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public void interruptTask() {
        c cVar = this.p;
        if (cVar != null) {
            cVar.b();
        }
    }

    public final class a extends o<V>.c<ListenableFuture<V>> {

        /* renamed from: g, reason: collision with root package name */
        public final AsyncCallable f5045g;

        @Override // com.google.common.util.concurrent.o.c
        public final void f(Object obj) {
            o.this.setFuture((ListenableFuture) obj);
        }

        public a(AsyncCallable asyncCallable, Executor executor) {
            super(executor);
            this.f5045g = (AsyncCallable) Preconditions.checkNotNull(asyncCallable);
        }

        @Override // com.google.common.util.concurrent.z
        public final Object d() {
            this.e = false;
            AsyncCallable asyncCallable = this.f5045g;
            return (ListenableFuture) Preconditions.checkNotNull(asyncCallable.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncCallable);
        }

        @Override // com.google.common.util.concurrent.z
        public final String e() {
            return this.f5045g.toString();
        }
    }

    public final class b extends o<V>.c<V> {

        /* renamed from: g, reason: collision with root package name */
        public final Callable f5046g;

        public b(Callable callable, Executor executor) {
            super(executor);
            this.f5046g = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // com.google.common.util.concurrent.z
        public final Object d() {
            this.e = false;
            return this.f5046g.call();
        }

        @Override // com.google.common.util.concurrent.o.c
        public final void f(Object obj) {
            o.this.set(obj);
        }

        @Override // com.google.common.util.concurrent.z
        public final String e() {
            return this.f5046g.toString();
        }
    }
}
