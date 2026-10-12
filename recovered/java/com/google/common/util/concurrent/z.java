package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.j2objc.annotations.ReflectionSupport;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

@ReflectionSupport(ReflectionSupport.Level.FULL)
@GwtCompatible(emulated = true)
/* loaded from: classes.dex */
abstract class z<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public static final Runnable f5059a;

    /* renamed from: b, reason: collision with root package name */
    public static final Runnable f5060b;
    public static final Runnable c;

    public abstract void a(Object obj, Throwable th);

    public abstract boolean c();

    public abstract Object d();

    public abstract String e();

    public static final class b implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
        }

        private b() {
        }

        public /* synthetic */ b(int i) {
            this();
        }
    }

    static {
        int i = 0;
        f5059a = new b(i);
        f5060b = new b(i);
        c = new b(i);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objD;
        Thread threadCurrentThread = Thread.currentThread();
        if (compareAndSet(null, threadCurrentThread)) {
            boolean zC = c();
            Runnable runnable = f5060b;
            Runnable runnable2 = f5059a;
            Runnable runnable3 = c;
            if (zC) {
                objD = null;
            } else {
                try {
                    objD = d();
                } catch (Throwable th) {
                    if (!compareAndSet(threadCurrentThread, runnable2)) {
                        Runnable runnable4 = get();
                        boolean z = false;
                        int i = 0;
                        while (true) {
                            if (runnable4 != runnable && runnable4 != runnable3) {
                                break;
                            }
                            i++;
                            if (i > 1000) {
                                if (runnable4 == runnable3 || compareAndSet(runnable, runnable3)) {
                                    z = Thread.interrupted() || z;
                                    LockSupport.park(this);
                                }
                            } else {
                                Thread.yield();
                            }
                            runnable4 = get();
                        }
                        if (z) {
                            threadCurrentThread.interrupt();
                        }
                    }
                    if (zC) {
                        return;
                    }
                    a(null, th);
                    return;
                }
            }
            if (!compareAndSet(threadCurrentThread, runnable2)) {
                Runnable runnable5 = get();
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (runnable5 != runnable && runnable5 != runnable3) {
                        break;
                    }
                    i2++;
                    if (i2 > 1000) {
                        if (runnable5 == runnable3 || compareAndSet(runnable, runnable3)) {
                            z2 = Thread.interrupted() || z2;
                            LockSupport.park(this);
                        }
                    } else {
                        Thread.yield();
                    }
                    runnable5 = get();
                }
                if (z2) {
                    threadCurrentThread.interrupt();
                }
            }
            if (zC) {
                return;
            }
            a(objD, null);
        }
    }

    public final void b() {
        Runnable runnable = c;
        Runnable runnable2 = f5059a;
        Runnable runnable3 = get();
        if ((runnable3 instanceof Thread) && compareAndSet(runnable3, f5060b)) {
            try {
                ((Thread) runnable3).interrupt();
            } finally {
                if (getAndSet(runnable2) == runnable) {
                    LockSupport.unpark((Thread) runnable3);
                }
            }
        }
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f5059a) {
            str = "running=[DONE]";
        } else if (runnable == f5060b) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        StringBuilder sbQ = _COROUTINE.a.q(str, ", ");
        sbQ.append(e());
        return sbQ.toString();
    }
}
