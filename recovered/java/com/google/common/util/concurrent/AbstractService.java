package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class AbstractService implements Service {
    public static final a h = new a();
    public static final b i = new b();
    public static final com.google.common.util.concurrent.d j;
    public static final com.google.common.util.concurrent.d k;
    public static final com.google.common.util.concurrent.c l;
    public static final com.google.common.util.concurrent.c m;
    public static final com.google.common.util.concurrent.c n;
    public static final com.google.common.util.concurrent.c o;

    /* renamed from: a, reason: collision with root package name */
    public final Monitor f4907a = new Monitor();

    /* renamed from: b, reason: collision with root package name */
    public final Monitor.Guard f4908b = new e();
    public final Monitor.Guard c = new f();
    public final Monitor.Guard d = new d();
    public final Monitor.Guard e = new g();
    public final a0 f = new a0();

    /* renamed from: g, reason: collision with root package name */
    public volatile h f4909g = new h(Service.State.NEW);

    @ForOverride
    public void doCancelStart() {
    }

    @ForOverride
    public abstract void doStart();

    @ForOverride
    public abstract void doStop();

    static {
        Service.State state = Service.State.STARTING;
        j = new com.google.common.util.concurrent.d(state);
        Service.State state2 = Service.State.RUNNING;
        k = new com.google.common.util.concurrent.d(state2);
        l = new com.google.common.util.concurrent.c(Service.State.NEW);
        m = new com.google.common.util.concurrent.c(state);
        n = new com.google.common.util.concurrent.c(state2);
        o = new com.google.common.util.concurrent.c(Service.State.STOPPING);
    }

    public static class a implements a0.a<Service.Listener> {
        @Override // com.google.common.util.concurrent.a0.a
        public void call(Service.Listener listener) {
            listener.starting();
        }

        public String toString() {
            return "starting()";
        }
    }

    public static class b implements a0.a<Service.Listener> {
        @Override // com.google.common.util.concurrent.a0.a
        public void call(Service.Listener listener) {
            listener.running();
        }

        public String toString() {
            return "running()";
        }
    }

    public final class e extends Monitor.Guard {
        public e() {
            super(AbstractService.this.f4907a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state() == Service.State.NEW;
        }
    }

    public final class f extends Monitor.Guard {
        public f() {
            super(AbstractService.this.f4907a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.RUNNING) <= 0;
        }
    }

    public final class d extends Monitor.Guard {
        public d() {
            super(AbstractService.this.f4907a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().compareTo(Service.State.RUNNING) >= 0;
        }
    }

    public final class g extends Monitor.Guard {
        public g() {
            super(AbstractService.this.f4907a);
        }

        @Override // com.google.common.util.concurrent.Monitor.Guard
        public boolean isSatisfied() {
            return AbstractService.this.state().a();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service startAsync() {
        if (this.f4907a.enterIf(this.f4908b)) {
            try {
                this.f4909g = new h(Service.State.STARTING);
                this.f.enqueue(h);
                doStart();
                return this;
            } catch (Throwable th) {
                try {
                    notifyFailed(th);
                    return this;
                } finally {
                    this.f4907a.leave();
                    b();
                }
            }
        }
        throw new IllegalStateException("Service " + this + " has already been started");
    }

    @Override // com.google.common.util.concurrent.Service
    @CanIgnoreReturnValue
    public final Service stopAsync() {
        if (this.f4907a.enterIf(this.c)) {
            try {
                Service.State state = state();
                switch (c.f4910a[state.ordinal()]) {
                    case 1:
                        this.f4909g = new h(Service.State.TERMINATED);
                        c(Service.State.NEW);
                        break;
                    case 2:
                        this.f4909g = new h(Service.State.STARTING, true, null);
                        this.f.enqueue(j);
                        doCancelStart();
                        break;
                    case 3:
                        this.f4909g = new h(Service.State.STOPPING);
                        Service.State state2 = Service.State.RUNNING;
                        Service.State state3 = Service.State.STARTING;
                        a0 a0Var = this.f;
                        if (state2 == state3) {
                            a0Var.enqueue(j);
                        } else {
                            a0Var.enqueue(k);
                        }
                        doStop();
                        break;
                    case 4:
                    case 5:
                    case 6:
                        throw new AssertionError("isStoppable is incorrectly implemented, saw: " + state);
                }
                return this;
            } catch (Throwable th) {
                try {
                    notifyFailed(th);
                } finally {
                    this.f4907a.leave();
                    b();
                }
            }
        }
        return this;
    }

    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4910a;

        static {
            int[] iArr = new int[Service.State.values().length];
            f4910a = iArr;
            try {
                iArr[Service.State.NEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4910a[Service.State.STARTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4910a[Service.State.RUNNING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4910a[Service.State.STOPPING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4910a[Service.State.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4910a[Service.State.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning() {
        Monitor.Guard guard = this.d;
        Monitor monitor = this.f4907a;
        monitor.enterWhenUninterruptibly(guard);
        try {
            a(Service.State.RUNNING);
        } finally {
            monitor.leave();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitRunning(long j2, TimeUnit timeUnit) throws TimeoutException {
        Monitor.Guard guard = this.d;
        Monitor monitor = this.f4907a;
        if (monitor.enterWhenUninterruptibly(guard, j2, timeUnit)) {
            try {
                a(Service.State.RUNNING);
            } finally {
                monitor.leave();
            }
        } else {
            throw new TimeoutException("Timed out waiting for " + this + " to reach the RUNNING state.");
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated() {
        Monitor.Guard guard = this.e;
        Monitor monitor = this.f4907a;
        monitor.enterWhenUninterruptibly(guard);
        try {
            a(Service.State.TERMINATED);
        } finally {
            monitor.leave();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final void awaitTerminated(long j2, TimeUnit timeUnit) throws TimeoutException {
        Monitor.Guard guard = this.e;
        Monitor monitor = this.f4907a;
        if (monitor.enterWhenUninterruptibly(guard, j2, timeUnit)) {
            try {
                a(Service.State.TERMINATED);
            } finally {
                monitor.leave();
            }
        } else {
            throw new TimeoutException("Timed out waiting for " + this + " to reach a terminal state. Current state: " + state());
        }
    }

    public final void a(Service.State state) {
        Service.State state2 = state();
        if (state2 != state) {
            if (state2 == Service.State.FAILED) {
                throw new IllegalStateException("Expected the service " + this + " to be " + state + ", but the service has FAILED", failureCause());
            }
            throw new IllegalStateException("Expected the service " + this + " to be " + state + ", but was " + state2);
        }
    }

    public final void notifyStarted() {
        this.f4907a.enter();
        try {
            if (this.f4909g.f4911a != Service.State.STARTING) {
                IllegalStateException illegalStateException = new IllegalStateException("Cannot notifyStarted() when the service is " + this.f4909g.f4911a);
                notifyFailed(illegalStateException);
                throw illegalStateException;
            }
            if (this.f4909g.f4912b) {
                this.f4909g = new h(Service.State.STOPPING);
                doStop();
            } else {
                this.f4909g = new h(Service.State.RUNNING);
                this.f.enqueue(i);
            }
            this.f4907a.leave();
            b();
        } catch (Throwable th) {
            this.f4907a.leave();
            b();
            throw th;
        }
    }

    public final void notifyStopped() {
        this.f4907a.enter();
        try {
            Service.State state = state();
            switch (c.f4910a[state.ordinal()]) {
                case 1:
                case 5:
                case 6:
                    throw new IllegalStateException("Cannot notifyStopped() when the service is " + state);
                case 2:
                case 3:
                case 4:
                    this.f4909g = new h(Service.State.TERMINATED);
                    c(state);
                    break;
            }
        } finally {
            this.f4907a.leave();
            b();
        }
    }

    public final void notifyFailed(Throwable th) {
        Preconditions.checkNotNull(th);
        this.f4907a.enter();
        try {
            Service.State state = state();
            int i2 = c.f4910a[state.ordinal()];
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3 || i2 == 4) {
                    this.f4909g = new h(Service.State.FAILED, false, th);
                    this.f.enqueue(new com.google.common.util.concurrent.e(state, th));
                } else if (i2 != 5) {
                }
                return;
            }
            throw new IllegalStateException("Failed while in state:" + state, th);
        } finally {
            this.f4907a.leave();
            b();
        }
    }

    @Override // com.google.common.util.concurrent.Service
    public final boolean isRunning() {
        return state() == Service.State.RUNNING;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Service.State state() {
        h hVar = this.f4909g;
        boolean z = hVar.f4912b;
        Service.State state = hVar.f4911a;
        return (z && state == Service.State.STARTING) ? Service.State.STOPPING : state;
    }

    @Override // com.google.common.util.concurrent.Service
    public final Throwable failureCause() {
        h hVar = this.f4909g;
        hVar.getClass();
        Service.State state = Service.State.FAILED;
        Service.State state2 = hVar.f4911a;
        Preconditions.checkState(state2 == state, "failureCause() is only valid if the service has failed, service is %s", state2);
        return hVar.c;
    }

    @Override // com.google.common.util.concurrent.Service
    public final void addListener(Service.Listener listener, Executor executor) {
        this.f.addListener(listener, executor);
    }

    public String toString() {
        return getClass().getSimpleName() + " [" + state() + "]";
    }

    public final void b() {
        if (this.f4907a.isOccupiedByCurrentThread()) {
            return;
        }
        this.f.dispatch();
    }

    public final void c(Service.State state) {
        int i2 = c.f4910a[state.ordinal()];
        a0 a0Var = this.f;
        switch (i2) {
            case 1:
                a0Var.enqueue(l);
                return;
            case 2:
                a0Var.enqueue(m);
                return;
            case 3:
                a0Var.enqueue(n);
                return;
            case 4:
                a0Var.enqueue(o);
                return;
            case 5:
            case 6:
                throw new AssertionError();
            default:
                return;
        }
    }

    public static final class h {

        /* renamed from: a, reason: collision with root package name */
        public final Service.State f4911a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f4912b;
        public final Throwable c;

        public h(Service.State state) {
            this(state, false, null);
        }

        public h(Service.State state, boolean z, Throwable th) {
            Preconditions.checkArgument(!z || state == Service.State.STARTING, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead.", state);
            Preconditions.checkArgument(!((state == Service.State.FAILED) ^ (th != null)), "A failure cause should be set if and only if the state is failed.  Got %s and %s instead.", state, th);
            this.f4911a = state;
            this.f4912b = z;
            this.c = th;
        }
    }
}
