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
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class AbstractExecutionThreadService implements Service {

    /* renamed from: b, reason: collision with root package name */
    public static final Logger f4863b = Logger.getLogger(AbstractExecutionThreadService.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public final Service f4864a = new a();

    public abstract void run() throws Exception;

    public void shutDown() throws Exception {
    }

    public void startUp() throws Exception {
    }

    public void triggerShutdown() {
    }

    public class a extends AbstractService {
        public a() {
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public final void doStart() {
            Executor executor = AbstractExecutionThreadService.this.executor();
            C0140a c0140a = new C0140a();
            Preconditions.checkNotNull(executor);
            Preconditions.checkNotNull(c0140a);
            new c0(executor, c0140a).execute(new b());
        }

        /* renamed from: com.google.common.util.concurrent.AbstractExecutionThreadService$a$a, reason: collision with other inner class name */
        public class C0140a implements Supplier<String> {
            public C0140a() {
            }

            @Override // com.google.common.base.Supplier
            public String get() {
                return AbstractExecutionThreadService.this.serviceName();
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                try {
                    AbstractExecutionThreadService.this.startUp();
                    aVar.notifyStarted();
                    if (aVar.isRunning()) {
                        try {
                            AbstractExecutionThreadService.this.run();
                        } catch (Throwable th) {
                            try {
                                AbstractExecutionThreadService.this.shutDown();
                            } catch (Exception e) {
                                AbstractExecutionThreadService.f4863b.log(Level.WARNING, "Error while attempting to shut down the service after failure.", (Throwable) e);
                            }
                            aVar.notifyFailed(th);
                            return;
                        }
                    }
                    AbstractExecutionThreadService.this.shutDown();
                    aVar.notifyStopped();
                } catch (Throwable th2) {
                    aVar.notifyFailed(th2);
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStop() {
            AbstractExecutionThreadService.this.triggerShutdown();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public String toString() {
            return AbstractExecutionThreadService.this.toString();
        }
    }

    public class b implements Executor {
        public b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            MoreExecutors.a(AbstractExecutionThreadService.this.serviceName(), runnable).start();
        }
    }

    public Executor executor() {
        return new b();
    }

    public String toString() {
        return serviceName() + " [" + state() + "]";
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return this.f4864a.isRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        return this.f4864a.state();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f4864a.addListener(listener, executor);
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        return this.f4864a.failureCause();
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        this.f4864a.startAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        this.f4864a.stopAsync();
        return this;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        this.f4864a.awaitRunning();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f4864a.awaitRunning(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        this.f4864a.awaitTerminated();
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j, TimeUnit timeUnit) throws TimeoutException {
        this.f4864a.awaitTerminated(j, timeUnit);
    }

    public String serviceName() {
        return getClass().getSimpleName();
    }
}
