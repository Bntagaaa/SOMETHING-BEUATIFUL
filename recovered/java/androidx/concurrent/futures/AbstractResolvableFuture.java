package androidx.concurrent.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public abstract class AbstractResolvableFuture<V> implements ListenableFuture<V> {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(AbstractResolvableFuture.class.getName());
    public static final b f;

    /* renamed from: g, reason: collision with root package name */
    public static final Object f570g;

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f571a;

    /* renamed from: b, reason: collision with root package name */
    public volatile e f572b;
    public volatile i c;

    public void afterDone() {
    }

    public void interruptTask() {
    }

    static {
        b hVar;
        try {
            hVar = new f(AtomicReferenceFieldUpdater.newUpdater(i.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(i.class, i.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, i.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractResolvableFuture.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            hVar = new h();
        }
        f = hVar;
        if (th != null) {
            e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f570g = new Object();
    }

    public static final class i {
        public static final i c = new i();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f583a;

        /* renamed from: b, reason: collision with root package name */
        public volatile i f584b;

        public i() {
            AbstractResolvableFuture.f.e(this, Thread.currentThread());
        }
    }

    public final void g(i iVar) {
        iVar.f583a = null;
        while (true) {
            i iVar2 = this.c;
            if (iVar2 == i.c) {
                return;
            }
            i iVar3 = null;
            while (iVar2 != null) {
                i iVar4 = iVar2.f584b;
                if (iVar2.f583a != null) {
                    iVar3 = iVar2;
                } else if (iVar3 != null) {
                    iVar3.f584b = iVar4;
                    if (iVar3.f583a == null) {
                        break;
                    }
                } else if (!f.c(this, iVar2, iVar4)) {
                    break;
                }
                iVar2 = iVar4;
            }
            return;
        }
    }

    public static final class e {
        public static final e d = new e(null, null);

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f577a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f578b;
        public e c;

        public e(Runnable runnable, Executor executor) {
            this.f577a = runnable;
            this.f578b = executor;
        }
    }

    public static final class d {

        /* renamed from: b, reason: collision with root package name */
        public static final d f575b = new d(new a("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f576a;

        public class a extends Throwable {
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public d(Throwable th) {
            boolean z = AbstractResolvableFuture.d;
            th.getClass();
            this.f576a = th;
        }
    }

    public static final class c {
        public static final c c;
        public static final c d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f573a;

        /* renamed from: b, reason: collision with root package name */
        public final CancellationException f574b;

        static {
            if (AbstractResolvableFuture.d) {
                d = null;
                c = null;
            } else {
                d = new c(false, null);
                c = new c(true, null);
            }
        }

        public c(boolean z, CancellationException cancellationException) {
            this.f573a = z;
            this.f574b = cancellationException;
        }
    }

    public static final class g<V> implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final AbstractResolvableFuture f581a;

        /* renamed from: b, reason: collision with root package name */
        public final ListenableFuture f582b;

        public g(AbstractResolvableFuture abstractResolvableFuture, ListenableFuture listenableFuture) {
            this.f581a = abstractResolvableFuture;
            this.f582b = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f581a.f571a != this) {
                return;
            }
            if (AbstractResolvableFuture.f.b(this.f581a, this, AbstractResolvableFuture.e(this.f582b))) {
                AbstractResolvableFuture.b(this.f581a);
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f571a;
        if ((obj != null) && (!(obj instanceof g))) {
            return (V) d(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            i iVar = this.c;
            i iVar2 = i.c;
            if (iVar != iVar2) {
                i iVar3 = new i();
                do {
                    b bVar = f;
                    bVar.d(iVar3, iVar);
                    if (bVar.c(this, iVar, iVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                g(iVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f571a;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return (V) d(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        g(iVar3);
                    } else {
                        iVar = this.c;
                    }
                } while (iVar != iVar2);
            }
            return (V) d(this.f571a);
        }
        while (nanos > 0) {
            Object obj3 = this.f571a;
            if ((obj3 != null) && (!(obj3 instanceof g))) {
                return (V) d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = jNanoTime - System.nanoTime();
        }
        String string = toString();
        String string2 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = string2.toLowerCase(locale);
        String strZ = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strZ2 = _COROUTINE.a.z(strZ, " (plus ");
            long j2 = -nanos;
            long jConvert = timeUnit.convert(j2, TimeUnit.NANOSECONDS);
            long nanos2 = j2 - timeUnit.toNanos(jConvert);
            boolean z = jConvert == 0 || nanos2 > 1000;
            if (jConvert > 0) {
                String strZ3 = strZ2 + jConvert + " " + lowerCase;
                if (z) {
                    strZ3 = _COROUTINE.a.z(strZ3, ",");
                }
                strZ2 = _COROUTINE.a.z(strZ3, " ");
            }
            if (z) {
                strZ2 = strZ2 + nanos2 + " nanoseconds ";
            }
            strZ = _COROUTINE.a.z(strZ2, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(_COROUTINE.a.z(strZ, " but future completed as timeout expired"));
        }
        throw new TimeoutException(_COROUTINE.a.j(strZ, " for ", string));
    }

    @Override // java.util.concurrent.Future
    public final V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f571a;
        if ((obj2 != null) & (!(obj2 instanceof g))) {
            return (V) d(obj2);
        }
        i iVar = this.c;
        i iVar2 = i.c;
        if (iVar != iVar2) {
            i iVar3 = new i();
            do {
                b bVar = f;
                bVar.d(iVar3, iVar);
                if (bVar.c(this, iVar, iVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            g(iVar3);
                            throw new InterruptedException();
                        }
                        obj = this.f571a;
                    } while (!((obj != null) & (!(obj instanceof g))));
                    return (V) d(obj);
                }
                iVar = this.c;
            } while (iVar != iVar2);
        }
        return (V) d(this.f571a);
    }

    public static Object d(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            CancellationException cancellationException = ((c) obj).f574b;
            CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
            cancellationException2.initCause(cancellationException);
            throw cancellationException2;
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).f576a);
        }
        if (obj == f570g) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof g)) & (this.f571a != null);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f571a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        c cVar;
        Object obj = this.f571a;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        if (d) {
            cVar = new c(z, new CancellationException("Future.cancel() was called."));
        } else if (z) {
            cVar = c.c;
        } else {
            cVar = c.d;
        }
        boolean z2 = false;
        AbstractResolvableFuture<V> abstractResolvableFuture = this;
        while (true) {
            if (f.b(abstractResolvableFuture, obj, cVar)) {
                if (z) {
                    abstractResolvableFuture.interruptTask();
                }
                b(abstractResolvableFuture);
                if (!(obj instanceof g)) {
                    break;
                }
                ListenableFuture listenableFuture = ((g) obj).f582b;
                if (listenableFuture instanceof AbstractResolvableFuture) {
                    abstractResolvableFuture = (AbstractResolvableFuture) listenableFuture;
                    obj = abstractResolvableFuture.f571a;
                    if (!(obj == null) && !(obj instanceof g)) {
                        break;
                    }
                    z2 = true;
                } else {
                    listenableFuture.cancel(z);
                    break;
                }
            } else {
                obj = abstractResolvableFuture.f571a;
                if (!(obj instanceof g)) {
                    return z2;
                }
            }
        }
        return true;
    }

    public final boolean wasInterrupted() {
        Object obj = this.f571a;
        return (obj instanceof c) && ((c) obj).f573a;
    }

    public boolean set(@Nullable V v) {
        if (v == null) {
            v = (V) f570g;
        }
        if (!f.b(this, null, v)) {
            return false;
        }
        b(this);
        return true;
    }

    public boolean setException(Throwable th) {
        th.getClass();
        if (!f.b(this, null, new d(th))) {
            return false;
        }
        b(this);
        return true;
    }

    public static Object e(ListenableFuture listenableFuture) {
        if (listenableFuture instanceof AbstractResolvableFuture) {
            Object obj = ((AbstractResolvableFuture) listenableFuture).f571a;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            return cVar.f573a ? cVar.f574b != null ? new c(false, cVar.f574b) : c.d : obj;
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        if ((!d) & zIsCancelled) {
            return c.d;
        }
        try {
            Object objF = f(listenableFuture);
            return objF == null ? f570g : objF;
        } catch (CancellationException e2) {
            if (!zIsCancelled) {
                return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e2));
            }
            return new c(false, e2);
        } catch (ExecutionException e3) {
            return new d(e3.getCause());
        } catch (Throwable th) {
            return new d(th);
        }
    }

    public static Object f(ListenableFuture listenableFuture) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = listenableFuture.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public static void b(AbstractResolvableFuture abstractResolvableFuture) {
        e eVar;
        e eVar2;
        e eVar3 = null;
        while (true) {
            i iVar = abstractResolvableFuture.c;
            if (f.c(abstractResolvableFuture, iVar, i.c)) {
                while (iVar != null) {
                    Thread thread = iVar.f583a;
                    if (thread != null) {
                        iVar.f583a = null;
                        LockSupport.unpark(thread);
                    }
                    iVar = iVar.f584b;
                }
                abstractResolvableFuture.afterDone();
                do {
                    eVar = abstractResolvableFuture.f572b;
                } while (!f.a(abstractResolvableFuture, eVar, e.d));
                while (true) {
                    eVar2 = eVar3;
                    eVar3 = eVar;
                    if (eVar3 == null) {
                        break;
                    }
                    eVar = eVar3.c;
                    eVar3.c = eVar2;
                }
                while (eVar2 != null) {
                    eVar3 = eVar2.c;
                    Runnable runnable = eVar2.f577a;
                    if (runnable instanceof g) {
                        g gVar = (g) runnable;
                        abstractResolvableFuture = gVar.f581a;
                        if (abstractResolvableFuture.f571a == gVar) {
                            if (f.b(abstractResolvableFuture, gVar, e(gVar.f582b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        c(runnable, eVar2.f578b);
                    }
                    eVar2 = eVar3;
                }
                return;
            }
        }
    }

    public String toString() {
        String strPendingToString;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                strPendingToString = pendingToString();
            } catch (RuntimeException e2) {
                strPendingToString = "Exception thrown from implementation: " + e2.getClass();
            }
            if (strPendingToString != null && !strPendingToString.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(strPendingToString);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public String pendingToString() {
        Object obj = this.f571a;
        if (obj instanceof g) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            ListenableFuture listenableFuture = ((g) obj).f582b;
            return _COROUTINE.a.m(sb, listenableFuture == this ? "this future" : String.valueOf(listenableFuture), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void a(StringBuilder sb) {
        String strValueOf;
        try {
            Object objF = f(this);
            sb.append("SUCCESS, result=[");
            if (objF == this) {
                strValueOf = "this future";
            } else {
                strValueOf = String.valueOf(objF);
            }
            sb.append(strValueOf);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static abstract class b {
        public abstract boolean a(AbstractResolvableFuture abstractResolvableFuture, e eVar, e eVar2);

        public abstract boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2);

        public abstract boolean c(AbstractResolvableFuture abstractResolvableFuture, i iVar, i iVar2);

        public abstract void d(i iVar, i iVar2);

        public abstract void e(i iVar, Thread thread);

        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }
    }

    public static final class f extends b {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f579a;

        /* renamed from: b, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f580b;
        public final AtomicReferenceFieldUpdater c;
        public final AtomicReferenceFieldUpdater d;
        public final AtomicReferenceFieldUpdater e;

        public f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(0);
            this.f579a = atomicReferenceFieldUpdater;
            this.f580b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final void e(i iVar, Thread thread) {
            this.f579a.lazySet(iVar, thread);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final void d(i iVar, i iVar2) {
            this.f580b.lazySet(iVar, iVar2);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final boolean c(AbstractResolvableFuture abstractResolvableFuture, i iVar, i iVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, iVar, iVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == iVar);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final boolean a(AbstractResolvableFuture abstractResolvableFuture, e eVar, e eVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, eVar, eVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == eVar);
            return false;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractResolvableFuture, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractResolvableFuture) == obj);
            return false;
        }
    }

    public static final class h extends b {
        public h() {
            super(0);
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final void e(i iVar, Thread thread) {
            iVar.f583a = thread;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final void d(i iVar, i iVar2) {
            iVar.f584b = iVar2;
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final boolean c(AbstractResolvableFuture abstractResolvableFuture, i iVar, i iVar2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.c != iVar) {
                        return false;
                    }
                    abstractResolvableFuture.c = iVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final boolean a(AbstractResolvableFuture abstractResolvableFuture, e eVar, e eVar2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f572b != eVar) {
                        return false;
                    }
                    abstractResolvableFuture.f572b = eVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.concurrent.futures.AbstractResolvableFuture.b
        public final boolean b(AbstractResolvableFuture abstractResolvableFuture, Object obj, Object obj2) {
            synchronized (abstractResolvableFuture) {
                try {
                    if (abstractResolvableFuture.f571a != obj) {
                        return false;
                    }
                    abstractResolvableFuture.f571a = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        e eVar = this.f572b;
        e eVar2 = e.d;
        if (eVar != eVar2) {
            e eVar3 = new e(runnable, executor);
            do {
                eVar3.c = eVar;
                if (f.a(this, eVar, eVar3)) {
                    return;
                } else {
                    eVar = this.f572b;
                }
            } while (eVar != eVar2);
        }
        c(runnable, executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean setFuture(com.google.common.util.concurrent.ListenableFuture<? extends V> r6) {
        /*
            r5 = this;
            r6.getClass()
            java.lang.Object r0 = r5.f571a
            r1 = 0
            if (r0 != 0) goto L44
            boolean r0 = r6.isDone()
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L20
            java.lang.Object r6 = e(r6)
            androidx.concurrent.futures.AbstractResolvableFuture$b r0 = androidx.concurrent.futures.AbstractResolvableFuture.f
            boolean r6 = r0.b(r5, r3, r6)
            if (r6 == 0) goto L4f
            b(r5)
            return r2
        L20:
            androidx.concurrent.futures.AbstractResolvableFuture$g r0 = new androidx.concurrent.futures.AbstractResolvableFuture$g
            r0.<init>(r5, r6)
            androidx.concurrent.futures.AbstractResolvableFuture$b r4 = androidx.concurrent.futures.AbstractResolvableFuture.f
            boolean r3 = r4.b(r5, r3, r0)
            if (r3 == 0) goto L42
            androidx.concurrent.futures.DirectExecutor r1 = androidx.concurrent.futures.DirectExecutor.INSTANCE     // Catch: java.lang.Throwable -> L33
            r6.addListener(r0, r1)     // Catch: java.lang.Throwable -> L33
            return r2
        L33:
            r6 = move-exception
            androidx.concurrent.futures.AbstractResolvableFuture$d r1 = new androidx.concurrent.futures.AbstractResolvableFuture$d     // Catch: java.lang.Throwable -> L3a
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L3a
            goto L3c
        L3a:
            androidx.concurrent.futures.AbstractResolvableFuture$d r1 = androidx.concurrent.futures.AbstractResolvableFuture.d.f575b
        L3c:
            androidx.concurrent.futures.AbstractResolvableFuture$b r6 = androidx.concurrent.futures.AbstractResolvableFuture.f
            r6.b(r5, r0, r1)
            return r2
        L42:
            java.lang.Object r0 = r5.f571a
        L44:
            boolean r2 = r0 instanceof androidx.concurrent.futures.AbstractResolvableFuture.c
            if (r2 == 0) goto L4f
            androidx.concurrent.futures.AbstractResolvableFuture$c r0 = (androidx.concurrent.futures.AbstractResolvableFuture.c) r0
            boolean r0 = r0.f573a
            r6.cancel(r0)
        L4f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.concurrent.futures.AbstractResolvableFuture.setFuture(com.google.common.util.concurrent.ListenableFuture):boolean");
    }
}
