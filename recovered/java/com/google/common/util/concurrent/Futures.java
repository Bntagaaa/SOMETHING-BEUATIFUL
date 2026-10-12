package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.a;
import com.google.common.util.concurrent.f;
import com.google.common.util.concurrent.h0;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.common.util.concurrent.n;
import com.google.common.util.concurrent.o;
import com.google.common.util.concurrent.o0;
import com.google.common.util.concurrent.p0;
import com.google.common.util.concurrent.t;
import com.google.common.util.concurrent.y;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class Futures extends w {
    @Beta
    @GwtIncompatible
    public static <O> ListenableFuture<O> scheduleAsync(AsyncCallable<O> asyncCallable, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        p0 p0Var = new p0();
        p0Var.h = new p0.a(asyncCallable);
        p0Var.addListener(new a(scheduledExecutorService.schedule(p0Var, j, timeUnit)), MoreExecutors.directExecutor());
        return p0Var;
    }

    @Beta
    public static <O> ListenableFuture<O> submitAsync(AsyncCallable<O> asyncCallable, Executor executor) {
        p0 p0Var = new p0();
        p0Var.h = new p0.a(asyncCallable);
        executor.execute(p0Var);
        return p0Var;
    }

    @Beta
    public static <O> ListenableFuture<O> submit(Callable<O> callable, Executor executor) {
        p0 p0Var = new p0(callable);
        executor.execute(p0Var);
        return p0Var;
    }

    @Beta
    public static ListenableFuture<Void> submit(Runnable runnable, Executor executor) {
        p0 p0Var = new p0(Executors.callable(runnable, null));
        executor.execute(p0Var);
        return p0Var;
    }

    private Futures() {
    }

    public static <V> ListenableFuture<V> immediateFuture(@NullableDecl V v) {
        if (v == null) {
            return y.f5057b;
        }
        return new y(v);
    }

    public static <V> ListenableFuture<V> immediateFailedFuture(Throwable th) {
        Preconditions.checkNotNull(th);
        y.b bVar = new y.b();
        bVar.setException(th);
        return bVar;
    }

    public static <V> ListenableFuture<V> immediateCancelledFuture() {
        return new y.a();
    }

    public static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ScheduledFuture f4954a;

        public a(ScheduledFuture scheduledFuture) {
            this.f4954a = scheduledFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4954a.cancel(false);
        }
    }

    @Beta
    @h0.a
    public static <V, X extends Throwable> ListenableFuture<V> catching(ListenableFuture<? extends V> listenableFuture, Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        int i = com.google.common.util.concurrent.a.k;
        a.b bVar = new a.b(listenableFuture, cls, function);
        listenableFuture.addListener(bVar, MoreExecutors.b(executor, bVar));
        return bVar;
    }

    @Beta
    @h0.a
    public static <V, X extends Throwable> ListenableFuture<V> catchingAsync(ListenableFuture<? extends V> listenableFuture, Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        int i = com.google.common.util.concurrent.a.k;
        a.C0146a c0146a = new a.C0146a(listenableFuture, cls, asyncFunction);
        listenableFuture.addListener(c0146a, MoreExecutors.b(executor, c0146a));
        return c0146a;
    }

    @Beta
    @GwtIncompatible
    public static <V> ListenableFuture<V> withTimeout(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        o0 o0Var = new o0();
        o0Var.h = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
        o0.b bVar = new o0.b();
        bVar.f5047a = o0Var;
        o0Var.i = scheduledExecutorService.schedule(bVar, j, timeUnit);
        listenableFuture.addListener(bVar, MoreExecutors.directExecutor());
        return o0Var;
    }

    @Beta
    public static <I, O> ListenableFuture<O> transformAsync(ListenableFuture<I> listenableFuture, AsyncFunction<? super I, ? extends O> asyncFunction, Executor executor) {
        int i = com.google.common.util.concurrent.f.j;
        Preconditions.checkNotNull(executor);
        f.a aVar = new f.a(listenableFuture, asyncFunction);
        listenableFuture.addListener(aVar, MoreExecutors.b(executor, aVar));
        return aVar;
    }

    @Beta
    public static <I, O> ListenableFuture<O> transform(ListenableFuture<I> listenableFuture, Function<? super I, ? extends O> function, Executor executor) {
        int i = com.google.common.util.concurrent.f.j;
        Preconditions.checkNotNull(function);
        f.b bVar = new f.b(listenableFuture, function);
        listenableFuture.addListener(bVar, MoreExecutors.b(executor, bVar));
        return bVar;
    }

    @Beta
    @GwtIncompatible
    public static <I, O> Future<O> lazyTransform(Future<I> future, Function<? super I, ? extends O> function) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(function);
        return new b(future, function);
    }

    /* JADX INFO: Add missing generic type declarations: [O] */
    public static class b<O> implements Future<O> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Future f4955a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Function f4956b;

        public b(Future future, Function function) {
            this.f4955a = future;
            this.f4956b = function;
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return this.f4955a.cancel(z);
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f4955a.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f4955a.isDone();
        }

        @Override // java.util.concurrent.Future
        public O get() throws ExecutionException, InterruptedException {
            try {
                return (O) this.f4956b.apply(this.f4955a.get());
            } catch (Throwable th) {
                throw new ExecutionException(th);
            }
        }

        @Override // java.util.concurrent.Future
        public O get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            try {
                return (O) this.f4956b.apply(this.f4955a.get(j, timeUnit));
            } catch (Throwable th) {
                throw new ExecutionException(th);
            }
        }
    }

    @SafeVarargs
    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new n.a(ImmutableList.copyOf(listenableFutureArr), true);
    }

    @Beta
    public static <V> ListenableFuture<List<V>> allAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new n.a(ImmutableList.copyOf(iterable), true);
    }

    @SafeVarargs
    @Beta
    public static <V> FutureCombiner<V> whenAllComplete(ListenableFuture<? extends V>... listenableFutureArr) {
        return new FutureCombiner<>(ImmutableList.copyOf(listenableFutureArr), false);
    }

    @Beta
    public static <V> FutureCombiner<V> whenAllComplete(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new FutureCombiner<>(ImmutableList.copyOf(iterable), false);
    }

    @SafeVarargs
    @Beta
    public static <V> FutureCombiner<V> whenAllSucceed(ListenableFuture<? extends V>... listenableFutureArr) {
        return new FutureCombiner<>(ImmutableList.copyOf(listenableFutureArr), true);
    }

    @Beta
    public static <V> FutureCombiner<V> whenAllSucceed(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new FutureCombiner<>(ImmutableList.copyOf(iterable), true);
    }

    @Beta
    @GwtCompatible
    @CanIgnoreReturnValue
    public static final class FutureCombiner<V> {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f4951a;

        /* renamed from: b, reason: collision with root package name */
        public final ImmutableList f4952b;

        public FutureCombiner(ImmutableList immutableList, boolean z) {
            this.f4951a = z;
            this.f4952b = immutableList;
        }

        public <C> ListenableFuture<C> callAsync(AsyncCallable<C> asyncCallable, Executor executor) {
            o oVar = new o(this.f4952b, this.f4951a, false);
            oVar.p = new o.a(asyncCallable, executor);
            oVar.n();
            return oVar;
        }

        @CanIgnoreReturnValue
        public <C> ListenableFuture<C> call(Callable<C> callable, Executor executor) {
            o oVar = new o(this.f4952b, this.f4951a, false);
            oVar.p = new o.b(callable, executor);
            oVar.n();
            return oVar;
        }

        public class a implements Callable<Void> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ Runnable f4953a;

            public a(Runnable runnable) {
                this.f4953a = runnable;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                this.f4953a.run();
                return null;
            }
        }

        public ListenableFuture<?> run(Runnable runnable, Executor executor) {
            return call(new a(runnable), executor);
        }
    }

    @Beta
    public static <V> ListenableFuture<V> nonCancellationPropagating(ListenableFuture<V> listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        g gVar = new g();
        gVar.h = listenableFuture;
        listenableFuture.addListener(gVar, MoreExecutors.directExecutor());
        return gVar;
    }

    public static final class g<V> extends AbstractFuture.j<V> implements Runnable {
        public ListenableFuture h;

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture = this.h;
            if (listenableFuture != null) {
                setFuture(listenableFuture);
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public String pendingToString() {
            ListenableFuture listenableFuture = this.h;
            if (listenableFuture == null) {
                return null;
            }
            return "delegate=[" + listenableFuture + "]";
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.h = null;
        }
    }

    @SafeVarargs
    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(ListenableFuture<? extends V>... listenableFutureArr) {
        return new n.a(ImmutableList.copyOf(listenableFutureArr), false);
    }

    @Beta
    public static <V> ListenableFuture<List<V>> successfulAsList(Iterable<? extends ListenableFuture<? extends V>> iterable) {
        return new n.a(ImmutableList.copyOf(iterable), false);
    }

    @Beta
    public static <T> ImmutableList<ListenableFuture<T>> inCompletionOrder(Iterable<? extends ListenableFuture<? extends T>> iterable) {
        Collection collectionCopyOf;
        if (iterable instanceof Collection) {
            collectionCopyOf = (Collection) iterable;
        } else {
            collectionCopyOf = ImmutableList.copyOf(iterable);
        }
        ListenableFuture[] listenableFutureArr = (ListenableFuture[]) collectionCopyOf.toArray(new ListenableFuture[collectionCopyOf.size()]);
        f fVar = new f(listenableFutureArr);
        ImmutableList.Builder builder = ImmutableList.builder();
        for (int i = 0; i < listenableFutureArr.length; i++) {
            e eVar = new e();
            eVar.h = fVar;
            builder.add((ImmutableList.Builder) eVar);
        }
        ImmutableList<ListenableFuture<T>> immutableListBuild = builder.build();
        for (int i2 = 0; i2 < listenableFutureArr.length; i2++) {
            listenableFutureArr[i2].addListener(new c(fVar, immutableListBuild, i2), MoreExecutors.directExecutor());
        }
        return immutableListBuild;
    }

    public static class c implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f f4957a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ImmutableList f4958b;
        public final /* synthetic */ int c;

        public c(f fVar, ImmutableList immutableList, int i) {
            this.f4957a = fVar;
            this.f4958b = immutableList;
            this.c = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            f fVar = this.f4957a;
            ImmutableList immutableList = this.f4958b;
            int i = this.c;
            ListenableFuture[] listenableFutureArr = fVar.d;
            ListenableFuture listenableFuture = listenableFutureArr[i];
            listenableFutureArr[i] = null;
            for (int i2 = fVar.e; i2 < immutableList.size(); i2++) {
                if (((AbstractFuture) immutableList.get(i2)).setFuture(listenableFuture)) {
                    fVar.a();
                    fVar.e = i2 + 1;
                    return;
                }
            }
            fVar.e = immutableList.size();
        }
    }

    public static final class e<T> extends AbstractFuture<T> {
        public f h;

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            f fVar = this.h;
            if (!super.cancel(z)) {
                return false;
            }
            fVar.f4961a = true;
            if (!z) {
                fVar.f4962b = false;
            }
            fVar.a();
            return true;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.h = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public String pendingToString() {
            f fVar = this.h;
            if (fVar == null) {
                return null;
            }
            return "inputCount=[" + fVar.d.length + "], remaining=[" + fVar.c.get() + "]";
        }
    }

    public static final class f<T> {
        public final AtomicInteger c;
        public final ListenableFuture[] d;

        /* renamed from: a, reason: collision with root package name */
        public boolean f4961a = false;

        /* renamed from: b, reason: collision with root package name */
        public boolean f4962b = true;
        public volatile int e = 0;

        public f(ListenableFuture[] listenableFutureArr) {
            this.d = listenableFutureArr;
            this.c = new AtomicInteger(listenableFutureArr.length);
        }

        public final void a() {
            if (this.c.decrementAndGet() == 0 && this.f4961a) {
                for (ListenableFuture listenableFuture : this.d) {
                    if (listenableFuture != null) {
                        listenableFuture.cancel(this.f4962b);
                    }
                }
            }
        }
    }

    public static <V> void addCallback(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback, Executor executor) {
        Preconditions.checkNotNull(futureCallback);
        listenableFuture.addListener(new d(listenableFuture, futureCallback), executor);
    }

    public static final class d<V> implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final ListenableFuture f4959a;

        /* renamed from: b, reason: collision with root package name */
        public final FutureCallback f4960b;

        public d(ListenableFuture listenableFuture, FutureCallback futureCallback) {
            this.f4959a = listenableFuture;
            this.f4960b = futureCallback;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Throwable thTryInternalFastPathGetFailure;
            ListenableFuture listenableFuture = this.f4959a;
            boolean z = listenableFuture instanceof InternalFutureFailureAccess;
            FutureCallback futureCallback = this.f4960b;
            if (z && (thTryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) listenableFuture)) != null) {
                futureCallback.onFailure(thTryInternalFastPathGetFailure);
                return;
            }
            try {
                futureCallback.onSuccess(Futures.getDone(listenableFuture));
            } catch (Error e) {
                e = e;
                futureCallback.onFailure(e);
            } catch (RuntimeException e2) {
                e = e2;
                futureCallback.onFailure(e);
            } catch (ExecutionException e3) {
                futureCallback.onFailure(e3.getCause());
            }
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).addValue(this.f4960b).toString();
        }
    }

    @CanIgnoreReturnValue
    public static <V> V getDone(Future<V> future) throws ExecutionException {
        Preconditions.checkState(future.isDone(), "Future was expected to be done: %s", future);
        return (V) Uninterruptibles.getUninterruptibly(future);
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) throws Exception {
        Ordering ordering = t.f5052a;
        t.c.f5053a.validateClass(cls);
        try {
            return future.get();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw t.b(e2, cls);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            if (cause instanceof RuntimeException) {
                throw new UncheckedExecutionException(cause);
            }
            throw t.b(cause, cls);
        }
    }

    @Beta
    @GwtIncompatible
    @CanIgnoreReturnValue
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        Ordering ordering = t.f5052a;
        t.c.f5053a.validateClass(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            throw t.b(e2, cls);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            if (cause instanceof RuntimeException) {
                throw new UncheckedExecutionException(cause);
            }
            throw t.b(cause, cls);
        } catch (TimeoutException e4) {
            throw t.b(e4, cls);
        }
    }

    @CanIgnoreReturnValue
    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return (V) Uninterruptibles.getUninterruptibly(future);
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof Error) {
                throw new ExecutionError((Error) cause);
            }
            throw new UncheckedExecutionException(cause);
        }
    }
}
