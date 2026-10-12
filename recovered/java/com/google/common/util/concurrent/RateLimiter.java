package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.util.concurrent.m0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public abstract class RateLimiter {

    /* renamed from: a, reason: collision with root package name */
    public final a f4976a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f4977b;

    public abstract double a();

    public abstract void b(long j, double d);

    public abstract long d();

    public abstract long e(int i, long j);

    public static RateLimiter create(double d) {
        m0.b bVar = new m0.b(a.createFromSystemTimer());
        bVar.setRate(d);
        return bVar;
    }

    public static RateLimiter create(double d, long j, TimeUnit timeUnit) {
        Preconditions.checkArgument(j >= 0, "warmupPeriod must not be negative: %s", j);
        m0.c cVar = new m0.c(a.createFromSystemTimer(), j, timeUnit);
        cVar.setRate(d);
        return cVar;
    }

    public final Object c() {
        Object obj;
        Object obj2 = this.f4977b;
        if (obj2 != null) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f4977b;
                if (obj == null) {
                    obj = new Object();
                    this.f4977b = obj;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    public RateLimiter(a aVar) {
        this.f4976a = (a) Preconditions.checkNotNull(aVar);
    }

    public final void setRate(double d) {
        Preconditions.checkArgument(d > 0.0d && !Double.isNaN(d), "rate must be positive");
        synchronized (c()) {
            b(this.f4976a.readMicros(), d);
        }
    }

    public final double getRate() {
        double dA;
        synchronized (c()) {
            dA = a();
        }
        return dA;
    }

    @CanIgnoreReturnValue
    public double acquire() {
        return acquire(1);
    }

    public boolean tryAcquire(long j, TimeUnit timeUnit) {
        return tryAcquire(1, j, timeUnit);
    }

    public boolean tryAcquire(int i) {
        return tryAcquire(i, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire() {
        return tryAcquire(1, 0L, TimeUnit.MICROSECONDS);
    }

    public boolean tryAcquire(int i, long j, TimeUnit timeUnit) {
        long jMax = Math.max(timeUnit.toMicros(j), 0L);
        Preconditions.checkArgument(i > 0, "Requested permits (%s) must be positive", i);
        synchronized (c()) {
            long micros = this.f4976a.readMicros();
            if (d() - jMax > micros) {
                return false;
            }
            this.f4976a.sleepMicrosUninterruptibly(Math.max(e(i, micros) - micros, 0L));
            return true;
        }
    }

    public String toString() {
        return String.format(Locale.ROOT, "RateLimiter[stableRate=%3.1fqps]", Double.valueOf(getRate()));
    }

    public static abstract class a {
        public abstract long readMicros();

        public abstract void sleepMicrosUninterruptibly(long j);

        public static a createFromSystemTimer() {
            return new C0144a();
        }

        /* renamed from: com.google.common.util.concurrent.RateLimiter$a$a, reason: collision with other inner class name */
        public static class C0144a extends a {

            /* renamed from: a, reason: collision with root package name */
            public final Stopwatch f4978a = Stopwatch.createStarted();

            @Override // com.google.common.util.concurrent.RateLimiter.a
            public long readMicros() {
                return this.f4978a.elapsed(TimeUnit.MICROSECONDS);
            }

            @Override // com.google.common.util.concurrent.RateLimiter.a
            public void sleepMicrosUninterruptibly(long j) {
                if (j > 0) {
                    Uninterruptibles.sleepUninterruptibly(j, TimeUnit.MICROSECONDS);
                }
            }
        }
    }

    @CanIgnoreReturnValue
    public double acquire(int i) {
        long jMax;
        Preconditions.checkArgument(i > 0, "Requested permits (%s) must be positive", i);
        synchronized (c()) {
            long micros = this.f4976a.readMicros();
            jMax = Math.max(e(i, micros) - micros, 0L);
        }
        this.f4976a.sleepMicrosUninterruptibly(jMax);
        return (jMax * 1.0d) / TimeUnit.SECONDS.toMicros(1L);
    }
}
