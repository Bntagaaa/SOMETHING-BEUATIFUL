package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.Service;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class AbstractIdleService implements Service {

    /* renamed from: a, reason: collision with root package name */
    public final Supplier f4885a = new c();

    /* renamed from: b, reason: collision with root package name */
    public final Service f4886b = new b();

    public abstract void shutDown() throws Exception;

    public abstract void startUp() throws Exception;

    public class a implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            MoreExecutors.a((String) AbstractIdleService.this.f4885a.get(), runnable).start();
        }

        public a() {
        }
    }

    public final class c implements Supplier<String> {
        public c() {
        }

        @Override // com.google.common.base.Supplier
        public String get() {
            StringBuilder sb = new StringBuilder();
            AbstractIdleService abstractIdleService = AbstractIdleService.this;
            sb.append(abstractIdleService.serviceName());
            sb.append(" ");
            sb.append(abstractIdleService.state());
            return sb.toString();
        }
    }

    public final class b extends AbstractService {
        public b() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStart() {
            AbstractIdleService abstractIdleService = AbstractIdleService.this;
            Executor executor = abstractIdleService.executor();
            Supplier supplier = abstractIdleService.f4885a;
            Preconditions.checkNotNull(executor);
            Preconditions.checkNotNull(supplier);
            new c0(executor, supplier).execute(new a());
        }

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                try {
                    AbstractIdleService.this.startUp();
                    bVar.notifyStarted();
                } catch (Throwable th) {
                    bVar.notifyFailed(th);
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStop() {
            AbstractIdleService abstractIdleService = AbstractIdleService.this;
            Executor executor = abstractIdleService.executor();
            Supplier supplier = abstractIdleService.f4885a;
            Preconditions.checkNotNull(executor);
            Preconditions.checkNotNull(supplier);
            new c0(executor, supplier).execute(new RunnableC0141b());
        }

        /* renamed from: com.google.common.util.concurrent.AbstractIdleService$b$b, reason: collision with other inner class name */
        public class RunnableC0141b implements Runnable {
            public RunnableC0141b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b bVar = b.this;
                try {
                    AbstractIdleService.this.shutDown();
                    bVar.notifyStopped();
                } catch (Throwable th) {
                    bVar.notifyFailed(th);
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractIdleService.this.toString();
        }
    }

    public Executor executor() {
        return new a();
    }

    public String toString() {
        return serviceName() + " [" + state() + "]";
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f4886b.isRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f4886b.state();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f4886b.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f4886b.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        this.f4886b.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        this.f4886b.stopAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f4886b.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f4886b.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f4886b.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f4886b.awaitTerminated(j, timeUnit);
    }

    public String serviceName() {
        return getClass().getSimpleName();
    }
}
