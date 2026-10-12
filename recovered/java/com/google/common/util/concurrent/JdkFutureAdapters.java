package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class JdkFutureAdapters {
    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future) {
        if (future instanceof ListenableFuture) {
            return (ListenableFuture) future;
        }
        return new a(future, a.e);
    }

    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future, Executor executor) {
        Preconditions.checkNotNull(executor);
        if (future instanceof ListenableFuture) {
            return (ListenableFuture) future;
        }
        return new a(future, executor);
    }

    public static class a<V> extends ForwardingFuture<V> implements ListenableFuture<V> {
        public static final ExecutorService e = Executors.newCachedThreadPool(new ThreadFactoryBuilder().setDaemon(true).setNameFormat("ListenableFutureAdapter-thread-%d").build());

        /* renamed from: a, reason: collision with root package name */
        public final Executor f4963a;

        /* renamed from: b, reason: collision with root package name */
        public final ExecutionList f4964b = new ExecutionList();
        public final AtomicBoolean c = new AtomicBoolean(false);
        public final Future d;

        public a(Future future, Executor executor) {
            this.d = (Future) Preconditions.checkNotNull(future);
            this.f4963a = (Executor) Preconditions.checkNotNull(executor);
        }

        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public Future<V> delegate() {
            return this.d;
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            ExecutionList executionList = this.f4964b;
            executionList.add(runnable, executor);
            if (this.c.compareAndSet(false, true)) {
                if (this.d.isDone()) {
                    executionList.execute();
                } else {
                    this.f4963a.execute(new RunnableC0143a());
                }
            }
        }

        /* renamed from: com.google.common.util.concurrent.JdkFutureAdapters$a$a, reason: collision with other inner class name */
        public class RunnableC0143a implements Runnable {
            public RunnableC0143a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                try {
                    Uninterruptibles.getUninterruptibly(aVar.d);
                } catch (Throwable unused) {
                }
                aVar.f4964b.execute();
            }
        }
    }

    private JdkFutureAdapters() {
    }
}
