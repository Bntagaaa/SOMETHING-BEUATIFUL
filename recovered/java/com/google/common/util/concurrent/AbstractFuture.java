package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.j2objc.annotations.ReflectionSupport;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import sun.misc.Unsafe;

@ReflectionSupport(ReflectionSupport.Level.FULL)
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
public abstract class AbstractFuture<V> extends InternalFutureFailureAccess implements ListenableFuture<V> {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(AbstractFuture.class.getName());
    public static final b f;

    /* renamed from: g, reason: collision with root package name */
    public static final Object f4868g;

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f4869a;

    /* renamed from: b, reason: collision with root package name */
    public volatile e f4870b;
    public volatile l c;

    public interface i<V> extends ListenableFuture<V> {
    }

    @Beta
    @ForOverride
    public void afterDone() {
    }

    public void interruptTask() {
    }

    public static final class c {
        public static final c c;
        public static final c d;

        /* renamed from: a, reason: collision with root package name */
        public final boolean f4871a;

        /* renamed from: b, reason: collision with root package name */
        public final RuntimeException f4872b;

        static {
            if (AbstractFuture.d) {
                d = null;
                c = null;
            } else {
                d = new c(false, null);
                c = new c(true, null);
            }
        }

        public c(boolean z, RuntimeException runtimeException) {
            this.f4871a = z;
            this.f4872b = runtimeException;
        }
    }

    static {
        Throwable th;
        b hVar;
        int i2 = 0;
        Throwable th2 = null;
        try {
            hVar = new k(i2);
            th = null;
        } catch (Throwable th3) {
            th = th3;
            try {
                hVar = new f(AtomicReferenceFieldUpdater.newUpdater(l.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(l.class, l.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, l.class, "c"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(AbstractFuture.class, Object.class, "a"));
            } catch (Throwable th4) {
                th2 = th4;
                hVar = new h(i2);
            }
        }
        f = hVar;
        if (th2 != null) {
            Logger logger = e;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th2);
        }
        f4868g = new Object();
    }

    public static abstract class j<V> extends AbstractFuture<V> implements i<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        @CanIgnoreReturnValue
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }
    }

    public static final class l {
        public static final l c = new l();

        /* renamed from: a, reason: collision with root package name */
        public volatile Thread f4883a;

        /* renamed from: b, reason: collision with root package name */
        public volatile l f4884b;

        public l() {
            AbstractFuture.f.e(this, Thread.currentThread());
        }
    }

    public final void i(l lVar) {
        lVar.f4883a = null;
        while (true) {
            l lVar2 = this.c;
            if (lVar2 == l.c) {
                return;
            }
            l lVar3 = null;
            while (lVar2 != null) {
                l lVar4 = lVar2.f4884b;
                if (lVar2.f4883a != null) {
                    lVar3 = lVar2;
                } else if (lVar3 != null) {
                    lVar3.f4884b = lVar4;
                    if (lVar3.f4883a == null) {
                        break;
                    }
                } else if (!f.c(this, lVar2, lVar4)) {
                    break;
                }
                lVar2 = lVar4;
            }
            return;
        }
    }

    public static final class e {
        public static final e d = new e(null, null);

        /* renamed from: a, reason: collision with root package name */
        public final Runnable f4875a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f4876b;
        public e c;

        public e(Runnable runnable, Executor executor) {
            this.f4875a = runnable;
            this.f4876b = executor;
        }
    }

    public static final class d {

        /* renamed from: b, reason: collision with root package name */
        public static final d f4873b = new d(new a("Failure occurred while trying to finish a future."));

        /* renamed from: a, reason: collision with root package name */
        public final Throwable f4874a;

        public static class a extends Throwable {
            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        public d(Throwable th) {
            this.f4874a = (Throwable) Preconditions.checkNotNull(th);
        }
    }

    public static final class g<V> implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final AbstractFuture f4879a;

        /* renamed from: b, reason: collision with root package name */
        public final ListenableFuture f4880b;

        public g(AbstractFuture abstractFuture, ListenableFuture listenableFuture) {
            this.f4879a = abstractFuture;
            this.f4880b = listenableFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f4879a.f4869a != this) {
                return;
            }
            if (AbstractFuture.f.b(this.f4879a, this, AbstractFuture.f(this.f4880b))) {
                AbstractFuture.c(this.f4879a);
            }
        }
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        long nanos = timeUnit.toNanos(j2);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f4869a;
        if ((obj != null) && (!(obj instanceof g))) {
            return (V) e(obj);
        }
        long jNanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            l lVar = this.c;
            l lVar2 = l.c;
            if (lVar != lVar2) {
                l lVar3 = new l();
                do {
                    b bVar = f;
                    bVar.d(lVar3, lVar);
                    if (bVar.c(this, lVar, lVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                i(lVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f4869a;
                            if ((obj2 != null) && (!(obj2 instanceof g))) {
                                return (V) e(obj2);
                            }
                            nanos = jNanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        i(lVar3);
                    } else {
                        lVar = this.c;
                    }
                } while (lVar != lVar2);
            }
            return (V) e(this.f4869a);
        }
        while (nanos > 0) {
            Object obj3 = this.f4869a;
            if ((obj3 != null) && (!(obj3 instanceof g))) {
                return (V) e(obj3);
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
        String strZ = "Waited " + j2 + " " + timeUnit.toString().toLowerCase(locale);
        if (nanos + 1000 < 0) {
            String strZ2 = _COROUTINE.a.z(strZ, " (plus ");
            long j3 = -nanos;
            long jConvert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
            long nanos2 = j3 - timeUnit.toNanos(jConvert);
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
    @CanIgnoreReturnValue
    public V get() throws ExecutionException, InterruptedException {
        Object obj;
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj2 = this.f4869a;
        if ((obj2 != null) & (!(obj2 instanceof g))) {
            return (V) e(obj2);
        }
        l lVar = this.c;
        l lVar2 = l.c;
        if (lVar != lVar2) {
            l lVar3 = new l();
            do {
                b bVar = f;
                bVar.d(lVar3, lVar);
                if (bVar.c(this, lVar, lVar3)) {
                    do {
                        LockSupport.park(this);
                        if (Thread.interrupted()) {
                            i(lVar3);
                            throw new InterruptedException();
                        }
                        obj = this.f4869a;
                    } while (!((obj != null) & (!(obj instanceof g))));
                    return (V) e(obj);
                }
                lVar = this.c;
            } while (lVar != lVar2);
        }
        return (V) e(this.f4869a);
    }

    public static Object e(Object obj) throws ExecutionException {
        if (obj instanceof c) {
            RuntimeException runtimeException = ((c) obj).f4872b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(runtimeException);
            throw cancellationException;
        }
        if (obj instanceof d) {
            throw new ExecutionException(((d) obj).f4874a);
        }
        if (obj == f4868g) {
            return null;
        }
        return obj;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return (!(r0 instanceof g)) & (this.f4869a != null);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f4869a instanceof c;
    }

    @Override // java.util.concurrent.Future
    @CanIgnoreReturnValue
    public boolean cancel(boolean z) {
        Object obj = this.f4869a;
        if (!(obj == null) && !(obj instanceof g)) {
            return false;
        }
        c cVar = d ? new c(z, new CancellationException("Future.cancel() was called.")) : z ? c.c : c.d;
        boolean z2 = false;
        AbstractFuture<V> abstractFuture = this;
        while (true) {
            if (f.b(abstractFuture, obj, cVar)) {
                if (z) {
                    abstractFuture.interruptTask();
                }
                c(abstractFuture);
                if (!(obj instanceof g)) {
                    break;
                }
                ListenableFuture listenableFuture = ((g) obj).f4880b;
                if (listenableFuture instanceof i) {
                    abstractFuture = (AbstractFuture) listenableFuture;
                    obj = abstractFuture.f4869a;
                    if (!(obj == null) && !(obj instanceof g)) {
                        break;
                    }
                    z2 = true;
                } else {
                    listenableFuture.cancel(z);
                    break;
                }
            } else {
                obj = abstractFuture.f4869a;
                if (!(obj instanceof g)) {
                    return z2;
                }
            }
        }
        return true;
    }

    public final boolean wasInterrupted() {
        Object obj = this.f4869a;
        return (obj instanceof c) && ((c) obj).f4871a;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        e eVar;
        e eVar2;
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        if (!isDone() && (eVar = this.f4870b) != (eVar2 = e.d)) {
            e eVar3 = new e(runnable, executor);
            do {
                eVar3.c = eVar;
                if (f.a(this, eVar, eVar3)) {
                    return;
                } else {
                    eVar = this.f4870b;
                }
            } while (eVar != eVar2);
        }
        d(runnable, executor);
    }

    @CanIgnoreReturnValue
    public boolean set(@NullableDecl V v) {
        if (v == null) {
            v = (V) f4868g;
        }
        if (!f.b(this, null, v)) {
            return false;
        }
        c(this);
        return true;
    }

    @CanIgnoreReturnValue
    public boolean setException(Throwable th) {
        if (!f.b(this, null, new d((Throwable) Preconditions.checkNotNull(th)))) {
            return false;
        }
        c(this);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0048  */
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean setFuture(com.google.common.util.concurrent.ListenableFuture<? extends V> r6) {
        /*
            r5 = this;
            com.google.common.base.Preconditions.checkNotNull(r6)
            java.lang.Object r0 = r5.f4869a
            r1 = 0
            if (r0 != 0) goto L44
            boolean r0 = r6.isDone()
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L20
            java.lang.Object r6 = f(r6)
            com.google.common.util.concurrent.AbstractFuture$b r0 = com.google.common.util.concurrent.AbstractFuture.f
            boolean r6 = r0.b(r5, r3, r6)
            if (r6 == 0) goto L4f
            c(r5)
            return r2
        L20:
            com.google.common.util.concurrent.AbstractFuture$g r0 = new com.google.common.util.concurrent.AbstractFuture$g
            r0.<init>(r5, r6)
            com.google.common.util.concurrent.AbstractFuture$b r4 = com.google.common.util.concurrent.AbstractFuture.f
            boolean r3 = r4.b(r5, r3, r0)
            if (r3 == 0) goto L42
            com.google.common.util.concurrent.p r1 = com.google.common.util.concurrent.p.f5048a     // Catch: java.lang.Throwable -> L33
            r6.addListener(r0, r1)     // Catch: java.lang.Throwable -> L33
            return r2
        L33:
            r6 = move-exception
            com.google.common.util.concurrent.AbstractFuture$d r1 = new com.google.common.util.concurrent.AbstractFuture$d     // Catch: java.lang.Throwable -> L3a
            r1.<init>(r6)     // Catch: java.lang.Throwable -> L3a
            goto L3c
        L3a:
            com.google.common.util.concurrent.AbstractFuture$d r1 = com.google.common.util.concurrent.AbstractFuture.d.f4873b
        L3c:
            com.google.common.util.concurrent.AbstractFuture$b r6 = com.google.common.util.concurrent.AbstractFuture.f
            r6.b(r5, r0, r1)
            return r2
        L42:
            java.lang.Object r0 = r5.f4869a
        L44:
            boolean r2 = r0 instanceof com.google.common.util.concurrent.AbstractFuture.c
            if (r2 == 0) goto L4f
            com.google.common.util.concurrent.AbstractFuture$c r0 = (com.google.common.util.concurrent.AbstractFuture.c) r0
            boolean r0 = r0.f4871a
            r6.cancel(r0)
        L4f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.AbstractFuture.setFuture(com.google.common.util.concurrent.ListenableFuture):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(ListenableFuture listenableFuture) {
        Throwable thTryInternalFastPathGetFailure;
        if (listenableFuture instanceof i) {
            Object obj = ((AbstractFuture) listenableFuture).f4869a;
            if (!(obj instanceof c)) {
                return obj;
            }
            c cVar = (c) obj;
            return cVar.f4871a ? cVar.f4872b != null ? new c(false, cVar.f4872b) : c.d : obj;
        }
        if ((listenableFuture instanceof InternalFutureFailureAccess) && (thTryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((InternalFutureFailureAccess) listenableFuture)) != null) {
            return new d(thTryInternalFastPathGetFailure);
        }
        boolean zIsCancelled = listenableFuture.isCancelled();
        if ((!d) & zIsCancelled) {
            return c.d;
        }
        try {
            Object objG = g(listenableFuture);
            if (!zIsCancelled) {
                return objG == null ? f4868g : objG;
            }
            return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture));
        } catch (CancellationException e2) {
            if (!zIsCancelled) {
                return new d(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + listenableFuture, e2));
            }
            return new c(false, e2);
        } catch (ExecutionException e3) {
            if (zIsCancelled) {
                return new c(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + listenableFuture, e3));
            }
            return new d(e3.getCause());
        } catch (Throwable th) {
            return new d(th);
        }
    }

    public static Object g(ListenableFuture listenableFuture) {
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

    @Override // com.google.common.util.concurrent.internal.InternalFutureFailureAccess
    @NullableDecl
    public final Throwable tryInternalFastPathGetFailure() {
        if (!(this instanceof i)) {
            return null;
        }
        Object obj = this.f4869a;
        if (obj instanceof d) {
            return ((d) obj).f4874a;
        }
        return null;
    }

    public final void h(Future future) {
        if ((future != null) && isCancelled()) {
            future.cancel(wasInterrupted());
        }
    }

    public static void c(AbstractFuture abstractFuture) {
        e eVar;
        e eVar2;
        e eVar3 = null;
        while (true) {
            l lVar = abstractFuture.c;
            if (f.c(abstractFuture, lVar, l.c)) {
                while (lVar != null) {
                    Thread thread = lVar.f4883a;
                    if (thread != null) {
                        lVar.f4883a = null;
                        LockSupport.unpark(thread);
                    }
                    lVar = lVar.f4884b;
                }
                abstractFuture.afterDone();
                do {
                    eVar = abstractFuture.f4870b;
                } while (!f.a(abstractFuture, eVar, e.d));
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
                    Runnable runnable = eVar2.f4875a;
                    if (runnable instanceof g) {
                        g gVar = (g) runnable;
                        abstractFuture = gVar.f4879a;
                        if (abstractFuture.f4869a == gVar) {
                            if (f.b(abstractFuture, gVar, f(gVar.f4880b))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        d(runnable, eVar2.f4876b);
                    }
                    eVar2 = eVar3;
                }
                return;
            }
        }
    }

    public String toString() {
        String strEmptyToNull;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f4869a;
            if (obj instanceof g) {
                sb.append(", setFuture=[");
                b(((g) obj).f4880b, sb);
                sb.append("]");
            } else {
                try {
                    strEmptyToNull = Strings.emptyToNull(pendingToString());
                } catch (RuntimeException | StackOverflowError e2) {
                    strEmptyToNull = "Exception thrown from implementation: " + e2.getClass();
                }
                if (strEmptyToNull != null) {
                    sb.append(", info=[");
                    sb.append(strEmptyToNull);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                a(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NullableDecl
    public String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public final void a(StringBuilder sb) {
        try {
            Object objG = g(this);
            sb.append("SUCCESS, result=[");
            b(objG, sb);
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

    public final void b(Object obj, StringBuilder sb) {
        try {
            if (obj == this) {
                sb.append("this future");
            } else {
                sb.append(obj);
            }
        } catch (RuntimeException e2) {
            e = e2;
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        } catch (StackOverflowError e3) {
            e = e3;
            sb.append("Exception thrown from implementation: ");
            sb.append(e.getClass());
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            e.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    public static abstract class b {
        public abstract boolean a(AbstractFuture abstractFuture, e eVar, e eVar2);

        public abstract boolean b(AbstractFuture abstractFuture, Object obj, Object obj2);

        public abstract boolean c(AbstractFuture abstractFuture, l lVar, l lVar2);

        public abstract void d(l lVar, l lVar2);

        public abstract void e(l lVar, Thread thread);

        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }
    }

    public static final class k extends b {

        /* renamed from: a, reason: collision with root package name */
        public static final Unsafe f4881a;

        /* renamed from: b, reason: collision with root package name */
        public static final long f4882b;
        public static final long c;
        public static final long d;
        public static final long e;
        public static final long f;

        private k() {
            super(0);
        }

        public /* synthetic */ k(int i) {
            this();
        }

        static {
            Unsafe unsafe;
            try {
                try {
                    unsafe = Unsafe.getUnsafe();
                } catch (PrivilegedActionException e2) {
                    throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
                }
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new a());
            }
            try {
                c = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("c"));
                f4882b = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("b"));
                d = unsafe.objectFieldOffset(AbstractFuture.class.getDeclaredField("a"));
                e = unsafe.objectFieldOffset(l.class.getDeclaredField("a"));
                f = unsafe.objectFieldOffset(l.class.getDeclaredField("b"));
                f4881a = unsafe;
            } catch (Exception e3) {
                Throwables.throwIfUnchecked(e3);
                throw new RuntimeException(e3);
            }
        }

        public static class a implements PrivilegedExceptionAction<Unsafe> {
            @Override // java.security.PrivilegedExceptionAction
            public Unsafe run() throws Exception {
                for (Field field : Unsafe.class.getDeclaredFields()) {
                    field.setAccessible(true);
                    Object obj = field.get(null);
                    if (Unsafe.class.isInstance(obj)) {
                        return (Unsafe) Unsafe.class.cast(obj);
                    }
                }
                throw new NoSuchFieldError("the Unsafe");
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final void e(l lVar, Thread thread) {
            f4881a.putObject(lVar, e, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final void d(l lVar, l lVar2) {
            f4881a.putObject(lVar, f, lVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean c(AbstractFuture abstractFuture, l lVar, l lVar2) {
            return com.google.common.util.concurrent.b.a(f4881a, abstractFuture, c, lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean a(AbstractFuture abstractFuture, e eVar, e eVar2) {
            return com.google.common.util.concurrent.b.a(f4881a, abstractFuture, f4882b, eVar, eVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            return com.google.common.util.concurrent.b.a(f4881a, abstractFuture, d, obj, obj2);
        }
    }

    public static final class f extends b {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f4877a;

        /* renamed from: b, reason: collision with root package name */
        public final AtomicReferenceFieldUpdater f4878b;
        public final AtomicReferenceFieldUpdater c;
        public final AtomicReferenceFieldUpdater d;
        public final AtomicReferenceFieldUpdater e;

        public f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super(0);
            this.f4877a = atomicReferenceFieldUpdater;
            this.f4878b = atomicReferenceFieldUpdater2;
            this.c = atomicReferenceFieldUpdater3;
            this.d = atomicReferenceFieldUpdater4;
            this.e = atomicReferenceFieldUpdater5;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final void e(l lVar, Thread thread) {
            this.f4877a.lazySet(lVar, thread);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final void d(l lVar, l lVar2) {
            this.f4878b.lazySet(lVar, lVar2);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean c(AbstractFuture abstractFuture, l lVar, l lVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.c;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, lVar, lVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == lVar);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean a(AbstractFuture abstractFuture, e eVar, e eVar2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.d;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, eVar, eVar2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == eVar);
            return false;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
            do {
                atomicReferenceFieldUpdater = this.e;
                if (atomicReferenceFieldUpdater.compareAndSet(abstractFuture, obj, obj2)) {
                    return true;
                }
            } while (atomicReferenceFieldUpdater.get(abstractFuture) == obj);
            return false;
        }
    }

    public static final class h extends b {
        private h() {
            super(0);
        }

        public /* synthetic */ h(int i) {
            this();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final void e(l lVar, Thread thread) {
            lVar.f4883a = thread;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final void d(l lVar, l lVar2) {
            lVar.f4884b = lVar2;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean c(AbstractFuture abstractFuture, l lVar, l lVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.c != lVar) {
                        return false;
                    }
                    abstractFuture.c = lVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean a(AbstractFuture abstractFuture, e eVar, e eVar2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f4870b != eVar) {
                        return false;
                    }
                    abstractFuture.f4870b = eVar2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // com.google.common.util.concurrent.AbstractFuture.b
        public final boolean b(AbstractFuture abstractFuture, Object obj, Object obj2) {
            synchronized (abstractFuture) {
                try {
                    if (abstractFuture.f4869a != obj) {
                        return false;
                    }
                    abstractFuture.f4869a = obj2;
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
