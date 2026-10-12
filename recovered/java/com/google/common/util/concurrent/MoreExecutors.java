package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public final class MoreExecutors {

    @GwtIncompatible
    public static final class d extends c implements ListeningScheduledExecutorService {

        /* renamed from: b, reason: collision with root package name */
        public final ScheduledExecutorService f4974b;

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            p0 p0Var = new p0(callable);
            return new a(p0Var, this.f4974b.schedule(p0Var, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            p0 p0Var = new p0(Executors.callable(runnable, null));
            return new a(p0Var, this.f4974b.schedule(p0Var, j, timeUnit));
        }

        public d(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f4974b = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f4974b.scheduleAtFixedRate(bVar, j, j2, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.f4974b.scheduleWithFixedDelay(bVar, j, j2, timeUnit));
        }

        public static final class a<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {

            /* renamed from: b, reason: collision with root package name */
            public final ScheduledFuture f4975b;

            public a(ListenableFuture<V> listenableFuture, ScheduledFuture<?> scheduledFuture) {
                super(listenableFuture);
                this.f4975b = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.f4975b.cancel(z);
                }
                return zCancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.f4975b.getDelay(timeUnit);
            }

            @Override // java.lang.Comparable
            public int compareTo(Delayed delayed) {
                return this.f4975b.compareTo(delayed);
            }
        }

        @GwtIncompatible
        public static final class b extends AbstractFuture.j<Void> implements Runnable {
            public final Runnable h;

            public b(Runnable runnable) {
                this.h = (Runnable) Preconditions.checkNotNull(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.h.run();
                } catch (Throwable th) {
                    setException(th);
                    throw Throwables.propagate(th);
                }
            }
        }
    }

    private MoreExecutors() {
    }

    @Beta
    @GwtIncompatible
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        new a();
        threadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(threadPoolExecutor.getThreadFactory()).build());
        ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
        a.a(threadPoolExecutor, j, timeUnit);
        return executorServiceUnconfigurableExecutorService;
    }

    @Beta
    @GwtIncompatible
    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
        new a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        threadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(threadPoolExecutor.getThreadFactory()).build());
        ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
        a.a(threadPoolExecutor, 120L, timeUnit);
        return executorServiceUnconfigurableExecutorService;
    }

    @Beta
    @GwtIncompatible
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        new a();
        scheduledThreadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(scheduledThreadPoolExecutor.getThreadFactory()).build());
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
        a.a(scheduledThreadPoolExecutor, j, timeUnit);
        return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }

    @Beta
    @GwtIncompatible
    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        new a();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        scheduledThreadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(scheduledThreadPoolExecutor.getThreadFactory()).build());
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
        a.a(scheduledThreadPoolExecutor, 120L, timeUnit);
        return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }

    @Beta
    @GwtIncompatible
    public static void addDelayedShutdownHook(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new a();
        a.a(executorService, j, timeUnit);
    }

    @VisibleForTesting
    @GwtIncompatible
    public static class a {
        public static void a(ExecutorService executorService, long j, TimeUnit timeUnit) {
            Preconditions.checkNotNull(executorService);
            Preconditions.checkNotNull(timeUnit);
            Runtime.getRuntime().addShutdownHook(MoreExecutors.a("DelayedShutdownHook-for-" + executorService, new g0(executorService, j, timeUnit)));
        }
    }

    @GwtIncompatible
    public static final class b extends AbstractListeningExecutorService {

        /* renamed from: a, reason: collision with root package name */
        public final Object f4971a;

        /* renamed from: b, reason: collision with root package name */
        public int f4972b;
        public boolean c;

        private b() {
            this.f4971a = new Object();
            this.f4972b = 0;
            this.c = false;
        }

        public /* synthetic */ b(int i) {
            this();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z;
            synchronized (this.f4971a) {
                z = this.c;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.f4971a) {
                try {
                    this.c = true;
                    if (this.f4972b == 0) {
                        this.f4971a.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.EMPTY_LIST;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z;
            synchronized (this.f4971a) {
                try {
                    z = this.c && this.f4972b == 0;
                } finally {
                }
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j);
            synchronized (this.f4971a) {
                while (true) {
                    try {
                        if (this.c && this.f4972b == 0) {
                            return true;
                        }
                        if (nanos <= 0) {
                            return false;
                        }
                        long jNanoTime = System.nanoTime();
                        TimeUnit.NANOSECONDS.timedWait(this.f4971a, nanos);
                        nanos -= System.nanoTime() - jNanoTime;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            synchronized (this.f4971a) {
                if (this.c) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.f4972b++;
            }
            try {
                runnable.run();
            } finally {
                a();
            }
        }

        public final void a() {
            synchronized (this.f4971a) {
                try {
                    int i = this.f4972b - 1;
                    this.f4972b = i;
                    if (i == 0) {
                        this.f4971a.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @GwtIncompatible
    public static ListeningExecutorService newDirectExecutorService() {
        return new b(0);
    }

    public static Executor directExecutor() {
        return p.f5048a;
    }

    @Beta
    @GwtIncompatible
    public static Executor newSequentialExecutor(Executor executor) {
        return new j0(executor);
    }

    @GwtIncompatible
    public static ListeningExecutorService listeningDecorator(ExecutorService executorService) {
        return executorService instanceof ListeningExecutorService ? (ListeningExecutorService) executorService : executorService instanceof ScheduledExecutorService ? new d((ScheduledExecutorService) executorService) : new c(executorService);
    }

    @GwtIncompatible
    public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof ListeningScheduledExecutorService ? (ListeningScheduledExecutorService) scheduledExecutorService : new d(scheduledExecutorService);
    }

    @GwtIncompatible
    public static class c extends AbstractListeningExecutorService {

        /* renamed from: a, reason: collision with root package name */
        public final ExecutorService f4973a;

        public c(ExecutorService executorService) {
            this.f4973a = (ExecutorService) Preconditions.checkNotNull(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.f4973a.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f4973a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f4973a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f4973a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.f4973a.shutdownNow();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f4973a.execute(runnable);
        }
    }

    @Beta
    @GwtIncompatible
    public static ThreadFactory platformThreadFactory() throws ClassNotFoundException {
        if (System.getProperty("com.google.appengine.runtime.environment") != null) {
            try {
                Class.forName("com.google.appengine.api.utils.SystemProperty");
                if (Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null) {
                    try {
                        return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
                    } catch (ClassNotFoundException e) {
                        throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
                    } catch (IllegalAccessException e2) {
                        throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
                    } catch (NoSuchMethodException e3) {
                        throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
                    } catch (InvocationTargetException e4) {
                        throw Throwables.propagate(e4.getCause());
                    }
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return Executors.defaultThreadFactory();
    }

    public static Thread a(String str, Runnable runnable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(runnable);
        Thread threadNewThread = platformThreadFactory().newThread(runnable);
        try {
            threadNewThread.setName(str);
        } catch (SecurityException unused) {
        }
        return threadNewThread;
    }

    @CanIgnoreReturnValue
    @Beta
    @GwtIncompatible
    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) throws InterruptedException {
        long nanos = timeUnit.toNanos(j) / 2;
        executorService.shutdown();
        try {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (!executorService.awaitTermination(nanos, timeUnit2)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, timeUnit2);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }

    public static Executor b(Executor executor, AbstractFuture abstractFuture) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(abstractFuture);
        return executor == directExecutor() ? executor : new f0(executor, abstractFuture);
    }
}
