package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;

@GwtCompatible
/* loaded from: classes.dex */
abstract class a<V, X extends Throwable, F, T> extends FluentFuture.a<V> implements Runnable {
    public static final /* synthetic */ int k = 0;
    public ListenableFuture h;
    public Class i;
    public Object j;

    public abstract Object j(Object obj, Throwable th);

    public abstract void k(Object obj);

    public a(ListenableFuture listenableFuture, Class cls, Object obj) {
        this.h = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        this.i = (Class) Preconditions.checkNotNull(cls);
        this.j = Preconditions.checkNotNull(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.h;
        Class cls = this.i;
        Object obj = this.j;
        if (((obj == null) || ((listenableFuture == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        this.h = null;
        try {
            th = listenableFuture instanceof InternalFutureFailureAccess ? InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) listenableFuture) : null;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause == null) {
                cause = new NullPointerException("Future type " + listenableFuture.getClass() + " threw " + e.getClass() + " without a cause");
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        Object done = th == null ? Futures.getDone(listenableFuture) : null;
        if (th != null) {
            if (!cls.isInstance(th)) {
                setFuture(listenableFuture);
                return;
            }
            try {
                Object objJ = j(obj, th);
                this.i = null;
                this.j = null;
                k(objJ);
                return;
            } catch (Throwable th2) {
                try {
                    setException(th2);
                    return;
                } finally {
                    this.i = null;
                    this.j = null;
                }
            }
        }
        set(done);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public String pendingToString() {
        String str;
        ListenableFuture listenableFuture = this.h;
        Class cls = this.i;
        Object obj = this.j;
        String strPendingToString = super.pendingToString();
        if (listenableFuture != null) {
            str = "inputFuture=[" + listenableFuture + "], ";
        } else {
            str = "";
        }
        if (cls == null || obj == null) {
            if (strPendingToString != null) {
                return _COROUTINE.a.z(str, strPendingToString);
            }
            return null;
        }
        return str + "exceptionType=[" + cls + "], fallback=[" + obj + "]";
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        h(this.h);
        this.h = null;
        this.i = null;
        this.j = null;
    }

    /* renamed from: com.google.common.util.concurrent.a$a, reason: collision with other inner class name */
    public static final class C0146a<V, X extends Throwable> extends a<V, X, AsyncFunction<? super X, ? extends V>, ListenableFuture<? extends V>> {
        @Override // com.google.common.util.concurrent.a
        public final Object j(Object obj, Throwable th) throws Exception {
            AsyncFunction asyncFunction = (AsyncFunction) obj;
            ListenableFuture listenableFutureApply = asyncFunction.apply(th);
            Preconditions.checkNotNull(listenableFutureApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", asyncFunction);
            return listenableFutureApply;
        }

        @Override // com.google.common.util.concurrent.a
        public final void k(Object obj) {
            setFuture((ListenableFuture) obj);
        }
    }

    public static final class b<V, X extends Throwable> extends a<V, X, Function<? super X, ? extends V>, V> {
        @Override // com.google.common.util.concurrent.a
        public final Object j(Object obj, Throwable th) {
            return ((Function) obj).apply(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.a
        public final void k(Object obj) {
            set(obj);
        }
    }
}
