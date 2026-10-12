package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

@GwtCompatible
/* loaded from: classes.dex */
abstract class f<I, O, F, T> extends FluentFuture.a<O> implements Runnable {
    public static final /* synthetic */ int j = 0;
    public ListenableFuture h;
    public Object i;

    public abstract Object j(Object obj, Object obj2);

    public abstract void k(Object obj);

    public f(ListenableFuture listenableFuture, Object obj) {
        this.h = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        this.i = Preconditions.checkNotNull(obj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture<? extends V> listenableFuture = this.h;
        Object obj = this.i;
        if ((isCancelled() | (listenableFuture == 0)) || (obj == null)) {
            return;
        }
        this.h = null;
        if (listenableFuture.isCancelled()) {
            setFuture(listenableFuture);
            return;
        }
        try {
            try {
                Object objJ = j(obj, Futures.getDone(listenableFuture));
                this.i = null;
                k(objJ);
            } catch (Throwable th) {
                try {
                    setException(th);
                } finally {
                    this.i = null;
                }
            }
        } catch (Error e) {
            setException(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e2) {
            setException(e2);
        } catch (ExecutionException e3) {
            setException(e3.getCause());
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        h(this.h);
        this.h = null;
        this.i = null;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public String pendingToString() {
        String str;
        ListenableFuture listenableFuture = this.h;
        Object obj = this.i;
        String strPendingToString = super.pendingToString();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (obj == null) {
            if (strPendingToString != null) {
                return _COROUTINE.a.z(str, strPendingToString);
            }
            return null;
        }
        return str + "function=[" + obj + "]";
    }

    public static final class a<I, O> extends f<I, O, AsyncFunction<? super I, ? extends O>, ListenableFuture<? extends O>> {
        @Override // com.google.common.util.concurrent.f
        public final Object j(Object obj, Object obj2) throws Exception {
            AsyncFunction asyncFunction = (AsyncFunction) obj;
            ListenableFuture<O> listenableFutureApply = asyncFunction.apply(obj2);
            Preconditions.checkNotNull(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncFunction);
            return listenableFutureApply;
        }

        @Override // com.google.common.util.concurrent.f
        public final void k(Object obj) {
            setFuture((ListenableFuture) obj);
        }
    }

    public static final class b<I, O> extends f<I, O, Function<? super I, ? extends O>, O> {
        @Override // com.google.common.util.concurrent.f
        public final Object j(Object obj, Object obj2) {
            return ((Function) obj).apply(obj2);
        }

        @Override // com.google.common.util.concurrent.f
        public final void k(Object obj) {
            set(obj);
        }
    }
}
