package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class AbstractScheduledService implements Service {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f4891b = Logger.getLogger(AbstractScheduledService.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final AbstractService f4892a = new c();

    public abstract void runOneIteration() throws Exception;

    public abstract Scheduler scheduler();

    public void shutDown() throws Exception {
    }

    public void startUp() throws Exception {
    }

    public static abstract class Scheduler {
        public abstract Future schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable);

        public /* synthetic */ Scheduler(int i) {
            this();
        }

        public static Scheduler newFixedDelaySchedule(long j, long j2, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            Preconditions.checkArgument(j2 > 0, "delay must be > 0, found %s", j2);
            return new a(j, j2, timeUnit);
        }

        public static class a extends Scheduler {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ long f4897a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ long f4898b;
            public final /* synthetic */ TimeUnit c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(long j, long j2, TimeUnit timeUnit) {
                super(0);
                this.f4897a = j;
                this.f4898b = j2;
                this.c = timeUnit;
            }

            @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
            public Future<?> schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return scheduledExecutorService.scheduleWithFixedDelay(runnable, this.f4897a, this.f4898b, this.c);
            }
        }

        public static Scheduler newFixedRateSchedule(long j, long j2, TimeUnit timeUnit) {
            Preconditions.checkNotNull(timeUnit);
            Preconditions.checkArgument(j2 > 0, "period must be > 0, found %s", j2);
            return new b(j, j2, timeUnit);
        }

        public static class b extends Scheduler {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ long f4899a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ long f4900b;
            public final /* synthetic */ TimeUnit c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(long j, long j2, TimeUnit timeUnit) {
                super(0);
                this.f4899a = j;
                this.f4900b = j2;
                this.c = timeUnit;
            }

            @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
            public Future<?> schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                return scheduledExecutorService.scheduleAtFixedRate(runnable, this.f4899a, this.f4900b, this.c);
            }
        }

        private Scheduler() {
        }
    }

    public final class c extends AbstractService {
        public volatile Future p;
        public volatile ScheduledExecutorService q;
        public final ReentrantLock r = new ReentrantLock();
        public final Runnable s = new d();

        public c() {
        }

        public class d implements Runnable {
            public d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.r.lock();
                try {
                    if (c.this.p.isCancelled()) {
                        return;
                    }
                    AbstractScheduledService.this.runOneIteration();
                } catch (Throwable th) {
                    try {
                        try {
                            AbstractScheduledService.this.shutDown();
                        } finally {
                            c.this.r.unlock();
                        }
                    } catch (Exception e) {
                        AbstractScheduledService.f4891b.log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                    }
                    c.this.notifyFailed(th);
                    c.this.p.cancel(false);
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStart() {
            ScheduledExecutorService scheduledExecutorServiceExecutor = AbstractScheduledService.this.executor();
            a aVar = new a();
            Preconditions.checkNotNull(scheduledExecutorServiceExecutor);
            Preconditions.checkNotNull(aVar);
            this.q = new e0(scheduledExecutorServiceExecutor, aVar);
            this.q.execute(new b());
        }

        public class a implements Supplier<String> {
            public a() {
            }

            @Override // com.google.common.base.Supplier
            public String get() {
                StringBuilder sb = new StringBuilder();
                c cVar = c.this;
                sb.append(AbstractScheduledService.this.serviceName());
                sb.append(" ");
                sb.append(cVar.state());
                return sb.toString();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.r.lock();
                try {
                    AbstractScheduledService.this.startUp();
                    c cVar = c.this;
                    Scheduler scheduler = AbstractScheduledService.this.scheduler();
                    c cVar2 = c.this;
                    cVar.p = scheduler.schedule(AbstractScheduledService.this.f4892a, cVar2.q, c.this.s);
                    c.this.notifyStarted();
                } catch (Throwable th) {
                    try {
                        c.this.notifyFailed(th);
                        if (c.this.p != null) {
                            c.this.p.cancel(false);
                        }
                    } finally {
                        c.this.r.unlock();
                    }
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStop() {
            this.p.cancel(false);
            this.q.execute(new RunnableC0142c());
        }

        /* renamed from: com.google.common.util.concurrent.AbstractScheduledService$c$c, reason: collision with other inner class name */
        public class RunnableC0142c implements Runnable {
            public RunnableC0142c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                try {
                    cVar.r.lock();
                    try {
                        if (cVar.state() != Service.State.STOPPING) {
                            return;
                        }
                        AbstractScheduledService.this.shutDown();
                        cVar.r.unlock();
                        cVar.notifyStopped();
                    } finally {
                        cVar.r.unlock();
                    }
                } catch (Throwable th) {
                    cVar.notifyFailed(th);
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractScheduledService.this.toString();
        }
    }

    public class b implements ThreadFactory {
        public b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return MoreExecutors.a(AbstractScheduledService.this.serviceName(), runnable);
        }
    }

    public ScheduledExecutorService executor() {
        ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(new b());
        addListener(new a(scheduledExecutorServiceNewSingleThreadScheduledExecutor), MoreExecutors.directExecutor());
        return scheduledExecutorServiceNewSingleThreadScheduledExecutor;
    }

    public class a extends Service.Listener {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ScheduledExecutorService f4901a;

        public a(ScheduledExecutorService scheduledExecutorService) {
            this.f4901a = scheduledExecutorService;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) {
            this.f4901a.shutdown();
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) {
            this.f4901a.shutdown();
        }
    }

    public String serviceName() {
        return getClass().getSimpleName();
    }

    public String toString() {
        return serviceName() + " [" + state() + "]";
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f4892a.isRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f4892a.state();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f4892a.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f4892a.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        this.f4892a.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        this.f4892a.stopAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f4892a.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f4892a.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f4892a.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f4892a.awaitTerminated(j, timeUnit);
    }

    @Beta
    public static abstract class CustomScheduler extends Scheduler {
        public abstract Schedule getNextSchedule() throws Exception;

        public CustomScheduler() {
            super(0);
        }

        public class a extends ForwardingFuture<Void> implements Callable<Void> {

            /* renamed from: a, reason: collision with root package name */
            public final Runnable f4895a;

            /* renamed from: b, reason: collision with root package name */
            public final ScheduledExecutorService f4896b;
            public final AbstractService c;
            public final ReentrantLock d = new ReentrantLock();
            public ScheduledFuture e;

            public a(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
                this.f4895a = runnable;
                this.f4896b = scheduledExecutorService;
                this.c = abstractService;
            }

            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                this.f4895a.run();
                reschedule();
                return null;
            }

            public void reschedule() {
                AbstractService abstractService = this.c;
                try {
                    Schedule nextSchedule = CustomScheduler.this.getNextSchedule();
                    ReentrantLock reentrantLock = this.d;
                    reentrantLock.lock();
                    try {
                        ScheduledFuture scheduledFuture = this.e;
                        if (scheduledFuture == null || !scheduledFuture.isCancelled()) {
                            this.e = this.f4896b.schedule(this, nextSchedule.f4893a, nextSchedule.f4894b);
                        }
                        reentrantLock.unlock();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                        reentrantLock.unlock();
                    }
                    if (th != null) {
                        abstractService.notifyFailed(th);
                    }
                } catch (Throwable th2) {
                    abstractService.notifyFailed(th2);
                }
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                ReentrantLock reentrantLock = this.d;
                reentrantLock.lock();
                try {
                    return this.e.cancel(z);
                } finally {
                    reentrantLock.unlock();
                }
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean isCancelled() {
                ReentrantLock reentrantLock = this.d;
                reentrantLock.lock();
                try {
                    return this.e.isCancelled();
                } finally {
                    reentrantLock.unlock();
                }
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
            public Future<Void> delegate() {
                throw new UnsupportedOperationException("Only cancel and isCancelled is supported by this future");
            }
        }

        @Override // com.google.common.util.concurrent.AbstractScheduledService.Scheduler
        public final Future schedule(AbstractService abstractService, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            a aVar = new a(abstractService, scheduledExecutorService, runnable);
            aVar.reschedule();
            return aVar;
        }

        @Beta
        public static final class Schedule {

            /* renamed from: a, reason: collision with root package name */
            public final long f4893a;

            /* renamed from: b, reason: collision with root package name */
            public final TimeUnit f4894b;

            public Schedule(long j, TimeUnit timeUnit) {
                this.f4893a = j;
                this.f4894b = (TimeUnit) Preconditions.checkNotNull(timeUnit);
            }
        }
    }
}
