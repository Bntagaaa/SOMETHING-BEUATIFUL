package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.math.LongMath;
import com.google.common.util.concurrent.RateLimiter;
import java.util.concurrent.TimeUnit;

@GwtIncompatible
/* loaded from: classes.dex */
abstract class m0 extends RateLimiter {
    public double c;
    public double d;
    public double e;
    public long f;

    public abstract double f();

    public abstract void g(double d, double d2);

    public abstract long i(double d, double d2);

    public static final class c extends m0 {

        /* renamed from: g, reason: collision with root package name */
        public final long f5042g;
        public double h;
        public double i;
        public final double j;

        public c(RateLimiter.a aVar, long j, TimeUnit timeUnit) {
            super(aVar);
            this.f5042g = timeUnit.toMicros(j);
            this.j = 3.0d;
        }

        @Override // com.google.common.util.concurrent.m0
        public final void g(double d, double d2) {
            double d3 = this.d;
            double d4 = this.j * d2;
            long j = this.f5042g;
            double d5 = (j * 0.5d) / d2;
            this.i = d5;
            double d6 = ((j * 2.0d) / (d2 + d4)) + d5;
            this.d = d6;
            this.h = (d4 - d2) / (d6 - d5);
            if (d3 == Double.POSITIVE_INFINITY) {
                this.c = 0.0d;
                return;
            }
            if (d3 != 0.0d) {
                d6 = (this.c * d6) / d3;
            }
            this.c = d6;
        }

        @Override // com.google.common.util.concurrent.m0
        public final long i(double d, double d2) {
            long j;
            double d3 = d - this.i;
            if (d3 > 0.0d) {
                double dMin = Math.min(d3, d2);
                double d4 = this.e;
                double d5 = this.h;
                j = (long) ((((((d3 - dMin) * d5) + d4) + ((d3 * d5) + d4)) * dMin) / 2.0d);
                d2 -= dMin;
            } else {
                j = 0;
            }
            return j + ((long) (this.e * d2));
        }

        @Override // com.google.common.util.concurrent.m0
        public final double f() {
            return this.f5042g / this.d;
        }
    }

    public static final class b extends m0 {

        /* renamed from: g, reason: collision with root package name */
        public final double f5041g;

        @Override // com.google.common.util.concurrent.m0
        public final long i(double d, double d2) {
            return 0L;
        }

        public b(RateLimiter.a aVar) {
            super(aVar);
            this.f5041g = 1.0d;
        }

        @Override // com.google.common.util.concurrent.m0
        public final void g(double d, double d2) {
            double d3 = this.d;
            double d4 = this.f5041g * d;
            this.d = d4;
            if (d3 == Double.POSITIVE_INFINITY) {
                this.c = d4;
            } else {
                this.c = d3 != 0.0d ? (this.c * d4) / d3 : 0.0d;
            }
        }

        @Override // com.google.common.util.concurrent.m0
        public final double f() {
            return this.e;
        }
    }

    public m0(RateLimiter.a aVar) {
        super(aVar);
        this.f = 0L;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final void b(long j, double d) {
        h(j);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d;
        this.e = micros;
        g(d, micros);
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final double a() {
        return TimeUnit.SECONDS.toMicros(1L) / this.e;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final long d() {
        return this.f;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    public final long e(int i, long j) {
        h(j);
        long j2 = this.f;
        double d = i;
        double dMin = Math.min(d, this.c);
        this.f = LongMath.saturatedAdd(this.f, i(this.c, dMin) + ((long) ((d - dMin) * this.e)));
        this.c -= dMin;
        return j2;
    }

    public final void h(long j) {
        if (j > this.f) {
            this.c = Math.min(this.d, this.c + ((j - r0) / f()));
            this.f = j;
        }
    }
}
