package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

@Beta
/* loaded from: classes.dex */
public final class ExecutionSequencer {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f4939a = new AtomicReference(Futures.immediateFuture(null));

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class e {

        /* renamed from: a, reason: collision with root package name */
        public static final e f4947a = new e("NOT_RUN", 0);

        /* renamed from: b, reason: collision with root package name */
        public static final e f4948b = new e("CANCELLED", 1);
        public static final e c = new e("STARTED", 2);
    }

    private ExecutionSequencer() {
    }

    public static ExecutionSequencer create() {
        return new ExecutionSequencer();
    }

    public <T> ListenableFuture<T> submit(Callable<T> callable, Executor executor) {
        Preconditions.checkNotNull(callable);
        return submitAsync(new a(callable), executor);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements AsyncCallable<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Callable f4940a;

        public a(Callable callable) {
            this.f4940a = callable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            return Futures.immediateFuture(this.f4940a.call());
        }

        public String toString() {
            return this.f4940a.toString();
        }
    }

    public <T> ListenableFuture<T> submitAsync(AsyncCallable<T> asyncCallable, Executor executor) {
        Preconditions.checkNotNull(asyncCallable);
        AtomicReference atomicReference = new AtomicReference(e.f4947a);
        b bVar = new b(atomicReference, asyncCallable);
        SettableFuture settableFutureCreate = SettableFuture.create();
        ListenableFuture listenableFuture = (ListenableFuture) this.f4939a.getAndSet(settableFutureCreate);
        ListenableFuture listenableFutureSubmitAsync = Futures.submitAsync(bVar, new c(listenableFuture, executor));
        ListenableFuture<T> listenableFutureNonCancellationPropagating = Futures.nonCancellationPropagating(listenableFutureSubmitAsync);
        d dVar = new d(listenableFutureSubmitAsync, listenableFutureNonCancellationPropagating, atomicReference, settableFutureCreate, listenableFuture);
        listenableFutureNonCancellationPropagating.addListener(dVar, MoreExecutors.directExecutor());
        listenableFutureSubmitAsync.addListener(dVar, MoreExecutors.directExecutor());
        return listenableFutureNonCancellationPropagating;
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class b<T> implements AsyncCallable<T> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ AtomicReference f4941a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ AsyncCallable f4942b;

        public b(AtomicReference atomicReference, AsyncCallable asyncCallable) {
            this.f4941a = atomicReference;
            this.f4942b = asyncCallable;
        }

        @Override // com.google.common.util.concurrent.AsyncCallable
        public ListenableFuture<T> call() throws Exception {
            AtomicReference atomicReference;
            e eVar = e.f4947a;
            e eVar2 = e.c;
            do {
                atomicReference = this.f4941a;
                if (atomicReference.compareAndSet(eVar, eVar2)) {
                    return this.f4942b.call();
                }
            } while (atomicReference.get() == eVar);
            return Futures.immediateCancelledFuture();
        }

        public String toString() {
            return this.f4942b.toString();
        }
    }

    public class c implements Executor {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ListenableFuture f4943a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ Executor f4944b;

        public c(ListenableFuture listenableFuture, Executor executor) {
            this.f4943a = listenableFuture;
            this.f4944b = executor;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f4943a.addListener(runnable, this.f4944b);
        }
    }

    public class d implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ListenableFuture f4945a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ListenableFuture f4946b;
        public final /* synthetic */ AtomicReference c;
        public final /* synthetic */ SettableFuture d;
        public final /* synthetic */ ListenableFuture e;

        public d(ListenableFuture listenableFuture, ListenableFuture listenableFuture2, AtomicReference atomicReference, SettableFuture settableFuture, ListenableFuture listenableFuture3) {
            this.f4945a = listenableFuture;
            this.f4946b = listenableFuture2;
            this.c = atomicReference;
            this.d = settableFuture;
            this.e = listenableFuture3;
        }

        @Override // java.lang.Runnable
        public void run() {
            AtomicReference atomicReference;
            if (!this.f4945a.isDone()) {
                if (this.f4946b.isCancelled()) {
                    e eVar = e.f4947a;
                    e eVar2 = e.f4948b;
                    do {
                        atomicReference = this.c;
                        if (atomicReference.compareAndSet(eVar, eVar2)) {
                        }
                    } while (atomicReference.get() == eVar);
                    return;
                }
                return;
            }
            this.d.setFuture(this.e);
        }
    }
}
