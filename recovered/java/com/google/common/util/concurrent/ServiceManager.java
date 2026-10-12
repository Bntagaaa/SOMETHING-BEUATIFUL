package com.google.common.util.concurrent;

import com.google.appinventor.components.common.ComponentDescriptorConstants;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.base.Stopwatch;
import com.google.common.collect.Collections2;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSetMultimap;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Multiset;
import com.google.common.collect.Ordering;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.util.concurrent.Monitor;
import com.google.common.util.concurrent.Service;
import com.google.common.util.concurrent.a0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class ServiceManager {
    public static final Logger c = Logger.getLogger(ServiceManager.class.getName());
    public static final a d = new a();
    public static final b e = new b();

    /* renamed from: a, reason: collision with root package name */
    public final f f4981a;

    /* renamed from: b, reason: collision with root package name */
    public final ImmutableList f4982b;

    @Beta
    public static abstract class Listener {
        public void failure(Service service) {
        }

        public void healthy() {
        }

        public void stopped() {
        }
    }

    public static class a implements a0.a<Listener> {
        @Override // com.google.common.util.concurrent.a0.a
        public void call(Listener listener) {
            listener.healthy();
        }

        public String toString() {
            return "healthy()";
        }
    }

    public static class b implements a0.a<Listener> {
        @Override // com.google.common.util.concurrent.a0.a
        public void call(Listener listener) {
            listener.stopped();
        }

        public String toString() {
            return "stopped()";
        }
    }

    public ServiceManager(Iterable<? extends Service> iterable) {
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        int i = 0;
        if (immutableListCopyOf.isEmpty()) {
            c.log(Level.WARNING, "ServiceManager configured with no services.  Is your application configured properly?", (Throwable) new c(i));
            immutableListCopyOf = ImmutableList.of(new d(i));
        }
        f fVar = new f(immutableListCopyOf);
        this.f4981a = fVar;
        this.f4982b = immutableListCopyOf;
        WeakReference weakReference = new WeakReference(fVar);
        UnmodifiableIterator it = immutableListCopyOf.iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Service service = (Service) it.next();
            service.addListener(new e(service, weakReference), MoreExecutors.directExecutor());
            if (service.state() != Service.State.NEW) {
                z = false;
            }
            Preconditions.checkArgument(z, "Can only manage NEW services, %s", service);
        }
        f fVar2 = this.f4981a;
        Monitor monitor = fVar2.f4985a;
        monitor.enter();
        try {
            if (!fVar2.f) {
                fVar2.e = true;
                return;
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            UnmodifiableIterator it2 = fVar2.c().values().iterator();
            while (it2.hasNext()) {
                Service service2 = (Service) it2.next();
                if (service2.state() != Service.State.NEW) {
                    arrayListNewArrayList.add(service2);
                }
            }
            throw new IllegalArgumentException("Services started transitioning asynchronously before the ServiceManager was constructed: " + arrayListNewArrayList);
        } finally {
            monitor.leave();
        }
    }

    public void addListener(Listener listener) {
        this.f4981a.j.addListener(listener, MoreExecutors.directExecutor());
    }

    @CanIgnoreReturnValue
    public ServiceManager startAsync() {
        ImmutableList immutableList = this.f4982b;
        UnmodifiableIterator it = immutableList.iterator();
        while (it.hasNext()) {
            Service service = (Service) it.next();
            Service.State state = service.state();
            Preconditions.checkState(state == Service.State.NEW, "Service %s is %s, cannot start it.", service, state);
        }
        UnmodifiableIterator it2 = immutableList.iterator();
        while (it2.hasNext()) {
            Service service2 = (Service) it2.next();
            try {
                f fVar = this.f4981a;
                Monitor monitor = fVar.f4985a;
                monitor.enter();
                IdentityHashMap identityHashMap = fVar.d;
                try {
                    if (((Stopwatch) identityHashMap.get(service2)) == null) {
                        identityHashMap.put(service2, Stopwatch.createStarted());
                    }
                    monitor.leave();
                    service2.startAsync();
                } catch (Throwable th) {
                    monitor.leave();
                    throw th;
                }
            } catch (IllegalStateException e2) {
                c.log(Level.WARNING, "Unable to start Service " + service2, (Throwable) e2);
            }
        }
        return this;
    }

    @CanIgnoreReturnValue
    public ServiceManager stopAsync() {
        UnmodifiableIterator it = this.f4982b.iterator();
        while (it.hasNext()) {
            ((Service) it.next()).stopAsync();
        }
        return this;
    }

    public boolean isHealthy() {
        UnmodifiableIterator it = this.f4982b.iterator();
        while (it.hasNext()) {
            if (!((Service) it.next()).isRunning()) {
                return false;
            }
        }
        return true;
    }

    public ImmutableMultimap<Service.State, Service> servicesByState() {
        return this.f4981a.c();
    }

    public String toString() {
        return MoreObjects.toStringHelper((Class<?>) ServiceManager.class).add(ComponentDescriptorConstants.SERVICES_TARGET, Collections2.filter(this.f4982b, Predicates.not(Predicates.instanceOf(d.class)))).toString();
    }

    public static final class f {

        /* renamed from: a, reason: collision with root package name */
        public final Monitor f4985a = new Monitor();

        /* renamed from: b, reason: collision with root package name */
        public final SetMultimap f4986b;
        public final Multiset c;
        public final IdentityHashMap d;
        public boolean e;
        public boolean f;

        /* renamed from: g, reason: collision with root package name */
        public final int f4987g;
        public final Monitor.Guard h;
        public final Monitor.Guard i;
        public final a0 j;

        public final class a extends Monitor.Guard {
            public a() {
                super(f.this.f4985a);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean isSatisfied() {
                f fVar = f.this;
                return fVar.c.count(Service.State.RUNNING) == fVar.f4987g || fVar.c.contains(Service.State.STOPPING) || fVar.c.contains(Service.State.TERMINATED) || fVar.c.contains(Service.State.FAILED);
            }
        }

        public final class b extends Monitor.Guard {
            public b() {
                super(f.this.f4985a);
            }

            @Override // com.google.common.util.concurrent.Monitor.Guard
            @GuardedBy("ServiceManagerState.this.monitor")
            public boolean isSatisfied() {
                f fVar = f.this;
                return fVar.c.count(Service.State.FAILED) + fVar.c.count(Service.State.TERMINATED) == fVar.f4987g;
            }
        }

        public f(ImmutableList immutableList) {
            SetMultimap setMultimapBuild = MultimapBuilder.enumKeys(Service.State.class).linkedHashSetValues().build();
            this.f4986b = setMultimapBuild;
            this.c = setMultimapBuild.keys();
            this.d = Maps.newIdentityHashMap();
            this.h = new a();
            this.i = new b();
            this.j = new a0();
            this.f4987g = immutableList.size();
            setMultimapBuild.putAll(Service.State.NEW, immutableList);
        }

        public final ImmutableSetMultimap c() {
            ImmutableSetMultimap.Builder builder = ImmutableSetMultimap.builder();
            Monitor monitor = this.f4985a;
            monitor.enter();
            try {
                for (Map.Entry entry : this.f4986b.entries()) {
                    if (!(entry.getValue() instanceof d)) {
                        builder.put(entry);
                    }
                }
                monitor.leave();
                return builder.build();
            } catch (Throwable th) {
                monitor.leave();
                throw th;
            }
        }

        public final void d(Service service, Service.State state, Service.State state2) {
            SetMultimap setMultimap = this.f4986b;
            Multiset multiset = this.c;
            Preconditions.checkNotNull(service);
            Preconditions.checkArgument(state != state2);
            Monitor monitor = this.f4985a;
            monitor.enter();
            try {
                this.f = true;
                if (this.e) {
                    Preconditions.checkState(setMultimap.remove(state, service), "Service %s not at the expected location in the state map %s", service, state);
                    Preconditions.checkState(setMultimap.put(state2, service), "Service %s in the state map unexpectedly at %s", service, state2);
                    IdentityHashMap identityHashMap = this.d;
                    Stopwatch stopwatchCreateStarted = (Stopwatch) identityHashMap.get(service);
                    if (stopwatchCreateStarted == null) {
                        stopwatchCreateStarted = Stopwatch.createStarted();
                        identityHashMap.put(service, stopwatchCreateStarted);
                    }
                    Service.State state3 = Service.State.RUNNING;
                    if (state2.compareTo(state3) >= 0 && stopwatchCreateStarted.isRunning()) {
                        stopwatchCreateStarted.stop();
                        if (!(service instanceof d)) {
                            ServiceManager.c.log(Level.FINE, "Started {0} in {1}.", new Object[]{service, stopwatchCreateStarted});
                        }
                    }
                    Service.State state4 = Service.State.FAILED;
                    a0 a0Var = this.j;
                    if (state2 == state4) {
                        a0Var.enqueue(new l0(service));
                    }
                    int iCount = multiset.count(state3);
                    int i = this.f4987g;
                    if (iCount != i) {
                        if (multiset.count(Service.State.TERMINATED) + multiset.count(state4) == i) {
                            a0Var.enqueue(ServiceManager.e);
                        }
                    } else {
                        a0Var.enqueue(ServiceManager.d);
                    }
                }
                monitor.leave();
                b();
            } catch (Throwable th) {
                monitor.leave();
                b();
                throw th;
            }
        }

        public final void b() {
            Preconditions.checkState(!this.f4985a.isOccupiedByCurrentThread(), "It is incorrect to execute listeners with the monitor held.");
            this.j.dispatch();
        }

        public final void a() {
            Service.State state = Service.State.RUNNING;
            if (this.c.count(state) == this.f4987g) {
                return;
            }
            throw new IllegalStateException("Expected to be healthy after starting. The following services are not running: " + Multimaps.filterKeys(this.f4986b, Predicates.not(Predicates.equalTo(state))));
        }
    }

    public void addListener(Listener listener, Executor executor) {
        this.f4981a.j.addListener(listener, executor);
    }

    public void awaitHealthy() {
        f fVar = this.f4981a;
        Monitor.Guard guard = fVar.h;
        Monitor monitor = fVar.f4985a;
        monitor.enterWhenUninterruptibly(guard);
        try {
            fVar.a();
        } finally {
            monitor.leave();
        }
    }

    public void awaitHealthy(long j, TimeUnit timeUnit) throws TimeoutException {
        f fVar = this.f4981a;
        Monitor monitor = fVar.f4985a;
        monitor.enter();
        try {
            if (!monitor.waitForUninterruptibly(fVar.h, j, timeUnit)) {
                throw new TimeoutException("Timeout waiting for the services to become healthy. The following services have not started: " + Multimaps.filterKeys(fVar.f4986b, Predicates.in(ImmutableSet.of(Service.State.NEW, Service.State.STARTING))));
            }
            fVar.a();
        } finally {
            monitor.leave();
        }
    }

    public void awaitStopped() {
        f fVar = this.f4981a;
        Monitor.Guard guard = fVar.i;
        Monitor monitor = fVar.f4985a;
        monitor.enterWhenUninterruptibly(guard);
        monitor.leave();
    }

    public void awaitStopped(long j, TimeUnit timeUnit) throws TimeoutException {
        f fVar = this.f4981a;
        Monitor monitor = fVar.f4985a;
        monitor.enter();
        try {
            if (monitor.waitForUninterruptibly(fVar.i, j, timeUnit)) {
                return;
            }
            throw new TimeoutException("Timeout waiting for the services to stop. The following services have not stopped: " + Multimaps.filterKeys(fVar.f4986b, Predicates.not(Predicates.in(EnumSet.of(Service.State.TERMINATED, Service.State.FAILED)))));
        } finally {
            monitor.leave();
        }
    }

    public ImmutableMap<Service, Long> startupTimes() {
        f fVar = this.f4981a;
        Monitor monitor = fVar.f4985a;
        monitor.enter();
        IdentityHashMap identityHashMap = fVar.d;
        try {
            ArrayList arrayListNewArrayListWithCapacity = Lists.newArrayListWithCapacity(identityHashMap.size());
            for (Map.Entry entry : identityHashMap.entrySet()) {
                Service service = (Service) entry.getKey();
                Stopwatch stopwatch = (Stopwatch) entry.getValue();
                if (!stopwatch.isRunning() && !(service instanceof d)) {
                    arrayListNewArrayListWithCapacity.add(Maps.immutableEntry(service, Long.valueOf(stopwatch.elapsed(TimeUnit.MILLISECONDS))));
                }
            }
            monitor.leave();
            Collections.sort(arrayListNewArrayListWithCapacity, Ordering.natural().onResultOf(new k0()));
            return ImmutableMap.copyOf(arrayListNewArrayListWithCapacity);
        } catch (Throwable th) {
            monitor.leave();
            throw th;
        }
    }

    public static final class e extends Service.Listener {

        /* renamed from: a, reason: collision with root package name */
        public final Service f4983a;

        /* renamed from: b, reason: collision with root package name */
        public final WeakReference f4984b;

        public e(Service service, WeakReference weakReference) {
            this.f4983a = service;
            this.f4984b = weakReference;
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void starting() {
            f fVar = (f) this.f4984b.get();
            if (fVar != null) {
                Service.State state = Service.State.NEW;
                Service.State state2 = Service.State.STARTING;
                Service service = this.f4983a;
                fVar.d(service, state, state2);
                if (service instanceof d) {
                    return;
                }
                ServiceManager.c.log(Level.FINE, "Starting {0}.", service);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void running() {
            f fVar = (f) this.f4984b.get();
            if (fVar != null) {
                fVar.d(this.f4983a, Service.State.STARTING, Service.State.RUNNING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void stopping(Service.State state) {
            f fVar = (f) this.f4984b.get();
            if (fVar != null) {
                fVar.d(this.f4983a, state, Service.State.STOPPING);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void terminated(Service.State state) {
            f fVar = (f) this.f4984b.get();
            if (fVar != null) {
                Service service = this.f4983a;
                if (!(service instanceof d)) {
                    ServiceManager.c.log(Level.FINE, "Service {0} has terminated. Previous state was: {1}", new Object[]{service, state});
                }
                fVar.d(service, state, Service.State.TERMINATED);
            }
        }

        @Override // com.google.common.util.concurrent.Service.Listener
        public void failed(Service.State state, Throwable th) {
            f fVar = (f) this.f4984b.get();
            if (fVar != null) {
                Service service = this.f4983a;
                if (!(service instanceof d)) {
                    ServiceManager.c.log(Level.SEVERE, "Service " + service + " has failed in the " + state + " state.", th);
                }
                fVar.d(service, state, Service.State.FAILED);
            }
        }
    }

    public static final class d extends AbstractService {
        private d() {
        }

        public /* synthetic */ d(int i) {
            this();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStart() {
            notifyStarted();
        }

        @Override // com.google.common.util.concurrent.AbstractService
        public void doStop() {
            notifyStopped();
        }
    }

    public static final class c extends Throwable {
        private c() {
        }

        public /* synthetic */ c(int i) {
            this();
        }
    }
}
