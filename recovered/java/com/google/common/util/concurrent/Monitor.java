package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class Monitor {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f4967a;

    /* renamed from: b, reason: collision with root package name */
    public final ReentrantLock f4968b;
    public Guard c;

    @Beta
    public static abstract class Guard {

        /* renamed from: a, reason: collision with root package name */
        public final Monitor f4969a;

        /* renamed from: b, reason: collision with root package name */
        public final Condition f4970b;
        public int c = 0;
        public Guard d;

        public abstract boolean isSatisfied();

        public Guard(Monitor monitor) {
            this.f4969a = (Monitor) Preconditions.checkNotNull(monitor, "monitor");
            this.f4970b = monitor.f4968b.newCondition();
        }
    }

    public Monitor() {
        this(false);
    }

    public Monitor(boolean z) {
        this.c = null;
        this.f4967a = z;
        this.f4968b = new ReentrantLock(z);
    }

    public void enter() {
        this.f4968b.lock();
    }

    public boolean enter(long j, TimeUnit timeUnit) throws Throwable {
        boolean zTryLock;
        long jI = i(j, timeUnit);
        ReentrantLock reentrantLock = this.f4968b;
        boolean z = true;
        if (!this.f4967a && reentrantLock.tryLock()) {
            return true;
        }
        boolean zInterrupted = Thread.interrupted();
        try {
            long jNanoTime = System.nanoTime();
            long jG = jI;
            while (true) {
                try {
                    try {
                        zTryLock = reentrantLock.tryLock(jG, TimeUnit.NANOSECONDS);
                        break;
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    jG = g(jNanoTime, jI);
                    zInterrupted = true;
                }
            }
            if (zInterrupted) {
                Thread.currentThread().interrupt();
            }
            return zTryLock;
        } catch (Throwable th2) {
            th = th2;
            z = zInterrupted;
        }
    }

    public void enterInterruptibly() throws InterruptedException {
        this.f4968b.lockInterruptibly();
    }

    public boolean enterInterruptibly(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f4968b.tryLock(j, timeUnit);
    }

    public boolean tryEnter() {
        return this.f4968b.tryLock();
    }

    public void enterWhen(Guard guard) throws InterruptedException {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lockInterruptibly();
        try {
            if (guard.isSatisfied()) {
                return;
            }
            a(guard, zIsHeldByCurrentThread);
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhen(com.google.common.util.concurrent.Monitor.Guard r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.InterruptedException {
        /*
            r10 = this;
            long r0 = i(r12, r14)
            com.google.common.util.concurrent.Monitor r2 = r11.f4969a
            if (r2 != r10) goto L62
            java.util.concurrent.locks.ReentrantLock r2 = r10.f4968b
            boolean r3 = r2.isHeldByCurrentThread()
            boolean r4 = r10.f4967a
            r5 = 0
            r6 = 0
            if (r4 != 0) goto L29
            boolean r4 = java.lang.Thread.interrupted()
            if (r4 != 0) goto L23
            boolean r4 = r2.tryLock()
            if (r4 == 0) goto L29
            r8 = r6
            goto L34
        L23:
            java.lang.InterruptedException r11 = new java.lang.InterruptedException
            r11.<init>()
            throw r11
        L29:
            long r8 = f(r0)
            boolean r12 = r2.tryLock(r12, r14)
            if (r12 != 0) goto L34
            return r5
        L34:
            boolean r12 = r11.isSatisfied()     // Catch: java.lang.Throwable -> L4a
            if (r12 != 0) goto L4c
            int r12 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r12 != 0) goto L3f
            goto L43
        L3f:
            long r0 = g(r8, r0)     // Catch: java.lang.Throwable -> L4a
        L43:
            boolean r11 = r10.b(r11, r0, r3)     // Catch: java.lang.Throwable -> L4a
            if (r11 == 0) goto L4d
            goto L4c
        L4a:
            r11 = move-exception
            goto L53
        L4c:
            r5 = 1
        L4d:
            if (r5 != 0) goto L52
            r2.unlock()
        L52:
            return r5
        L53:
            if (r3 != 0) goto L5e
            r10.h()     // Catch: java.lang.Throwable -> L59
            goto L5e
        L59:
            r11 = move-exception
            r2.unlock()
            throw r11
        L5e:
            r2.unlock()
            throw r11
        L62:
            java.lang.IllegalMonitorStateException r11 = new java.lang.IllegalMonitorStateException
            r11.<init>()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhen(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void enterWhenUninterruptibly(Guard guard) {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lock();
        try {
            if (guard.isSatisfied()) {
                return;
            }
            c(guard, zIsHeldByCurrentThread);
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    public boolean enterWhenUninterruptibly(Guard guard, long j, TimeUnit timeUnit) throws Throwable {
        long jF;
        long jG;
        long jI = i(j, timeUnit);
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        boolean zIsHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        boolean zInterrupted = Thread.interrupted();
        try {
            boolean zB = true;
            if (this.f4967a || !reentrantLock.tryLock()) {
                jF = f(jI);
                long jG2 = jI;
                while (true) {
                    try {
                        try {
                            break;
                        } catch (Throwable th) {
                            th = th;
                            zInterrupted = true;
                            if (zInterrupted) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    } catch (InterruptedException unused) {
                        jG2 = g(jF, jI);
                        zInterrupted = true;
                    }
                }
                if (!reentrantLock.tryLock(jG2, TimeUnit.NANOSECONDS)) {
                    if (zInterrupted) {
                        Thread.currentThread().interrupt();
                    }
                    return false;
                }
            } else {
                jF = 0;
            }
            while (!guard.isSatisfied()) {
                try {
                    if (jF == 0) {
                        jF = f(jI);
                        jG = jI;
                    } else {
                        jG = g(jF, jI);
                    }
                    zB = b(guard, jG, zIsHeldByCurrentThread);
                } catch (InterruptedException unused2) {
                    zIsHeldByCurrentThread = false;
                    zInterrupted = true;
                } catch (Throwable th2) {
                    reentrantLock.unlock();
                    throw th2;
                }
            }
            if (!zB) {
                reentrantLock.unlock();
            }
            if (zInterrupted) {
                Thread.currentThread().interrupt();
            }
            return zB;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public boolean enterIf(Guard guard) {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        reentrantLock.lock();
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIf(Guard guard, long j, TimeUnit timeUnit) {
        ReentrantLock reentrantLock = this.f4968b;
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        if (!enter(j, timeUnit)) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard) throws InterruptedException {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        reentrantLock.lockInterruptibly();
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        if (!reentrantLock.tryLock(j, timeUnit)) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean tryEnterIf(Guard guard) {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean zIsSatisfied = guard.isSatisfied();
            if (!zIsSatisfied) {
            }
            return zIsSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void waitFor(Guard guard) throws InterruptedException {
        if (!((guard.f4969a == this) & this.f4968b.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return;
        }
        a(guard, true);
    }

    public boolean waitFor(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        long jI = i(j, timeUnit);
        if (!((guard.f4969a == this) & this.f4968b.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return true;
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return b(guard, jI, true);
    }

    public void waitForUninterruptibly(Guard guard) {
        if (!((guard.f4969a == this) & this.f4968b.isHeldByCurrentThread())) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return;
        }
        c(guard, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean waitForUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r8, long r9, java.util.concurrent.TimeUnit r11) throws java.lang.Throwable {
        /*
            r7 = this;
            long r9 = i(r9, r11)
            com.google.common.util.concurrent.Monitor r11 = r8.f4969a
            r0 = 0
            r1 = 1
            if (r11 != r7) goto Lc
            r11 = 1
            goto Ld
        Lc:
            r11 = 0
        Ld:
            java.util.concurrent.locks.ReentrantLock r2 = r7.f4968b
            boolean r2 = r2.isHeldByCurrentThread()
            r11 = r11 & r2
            if (r11 == 0) goto L58
            boolean r11 = r8.isSatisfied()
            if (r11 == 0) goto L1d
            return r1
        L1d:
            long r2 = f(r9)
            boolean r11 = java.lang.Thread.interrupted()
            r4 = r9
            r6 = 1
        L27:
            boolean r8 = r7.b(r8, r4, r6)     // Catch: java.lang.Throwable -> L35 java.lang.InterruptedException -> L38
            if (r11 == 0) goto L34
            java.lang.Thread r9 = java.lang.Thread.currentThread()
            r9.interrupt()
        L34:
            return r8
        L35:
            r8 = move-exception
            r1 = r11
            goto L4e
        L38:
            boolean r11 = r8.isSatisfied()     // Catch: java.lang.Throwable -> L4d
            if (r11 == 0) goto L46
            java.lang.Thread r8 = java.lang.Thread.currentThread()
            r8.interrupt()
            return r1
        L46:
            long r4 = g(r2, r9)     // Catch: java.lang.Throwable -> L4d
            r11 = 1
            r6 = 0
            goto L27
        L4d:
            r8 = move-exception
        L4e:
            if (r1 == 0) goto L57
            java.lang.Thread r9 = java.lang.Thread.currentThread()
            r9.interrupt()
        L57:
            throw r8
        L58:
            java.lang.IllegalMonitorStateException r8 = new java.lang.IllegalMonitorStateException
            r8.<init>()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.waitForUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void leave() {
        ReentrantLock reentrantLock = this.f4968b;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                h();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean isFair() {
        return this.f4967a;
    }

    public boolean isOccupied() {
        return this.f4968b.isLocked();
    }

    public boolean isOccupiedByCurrentThread() {
        return this.f4968b.isHeldByCurrentThread();
    }

    public int getOccupiedDepth() {
        return this.f4968b.getHoldCount();
    }

    public int getQueueLength() {
        return this.f4968b.getQueueLength();
    }

    public boolean hasQueuedThreads() {
        return this.f4968b.hasQueuedThreads();
    }

    public boolean hasQueuedThread(Thread thread) {
        return this.f4968b.hasQueuedThread(thread);
    }

    public boolean hasWaiters(Guard guard) {
        return getWaitQueueLength(guard) > 0;
    }

    public int getWaitQueueLength(Guard guard) {
        if (guard.f4969a != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.f4968b;
        reentrantLock.lock();
        try {
            return guard.c;
        } finally {
            reentrantLock.unlock();
        }
    }

    public static long i(long j, TimeUnit timeUnit) {
        return Longs.constrainToRange(timeUnit.toNanos(j), 0L, 6917529027641081853L);
    }

    public static long f(long j) {
        if (j <= 0) {
            return 0L;
        }
        long jNanoTime = System.nanoTime();
        if (jNanoTime == 0) {
            return 1L;
        }
        return jNanoTime;
    }

    public static long g(long j, long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 - (System.nanoTime() - j);
    }

    public final void h() {
        for (Guard guard = this.c; guard != null; guard = guard.d) {
            try {
                if (guard.isSatisfied()) {
                    guard.f4970b.signal();
                    return;
                }
            } catch (Throwable th) {
                for (Guard guard2 = this.c; guard2 != null; guard2 = guard2.d) {
                    guard2.f4970b.signalAll();
                }
                throw th;
            }
        }
    }

    public final void d(Guard guard) {
        int i = guard.c;
        guard.c = i + 1;
        if (i == 0) {
            guard.d = this.c;
            this.c = guard;
        }
    }

    public final void e(Guard guard) {
        int i = guard.c - 1;
        guard.c = i;
        if (i == 0) {
            Guard guard2 = this.c;
            Guard guard3 = null;
            while (guard2 != guard) {
                guard3 = guard2;
                guard2 = guard2.d;
            }
            if (guard3 == null) {
                this.c = guard2.d;
            } else {
                guard3.d = guard2.d;
            }
            guard2.d = null;
        }
    }

    public final void a(Guard guard, boolean z) {
        if (z) {
            h();
        }
        d(guard);
        do {
            try {
                guard.f4970b.await();
            } finally {
                e(guard);
            }
        } while (!guard.isSatisfied());
    }

    public final void c(Guard guard, boolean z) {
        if (z) {
            h();
        }
        d(guard);
        do {
            try {
                guard.f4970b.awaitUninterruptibly();
            } finally {
                e(guard);
            }
        } while (!guard.isSatisfied());
    }

    public final boolean b(Guard guard, long j, boolean z) {
        boolean z2 = true;
        while (j > 0) {
            if (z2) {
                if (z) {
                    try {
                        h();
                    } catch (Throwable th) {
                        if (!z2) {
                            e(guard);
                        }
                        throw th;
                    }
                }
                d(guard);
                z2 = false;
            }
            j = guard.f4970b.awaitNanos(j);
            if (guard.isSatisfied()) {
                if (!z2) {
                    e(guard);
                }
                return true;
            }
        }
        if (!z2) {
            e(guard);
        }
        return false;
    }
}
