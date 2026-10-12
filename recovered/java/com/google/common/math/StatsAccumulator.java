package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import java.util.Iterator;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class StatsAccumulator {

    /* renamed from: a, reason: collision with root package name */
    public long f4724a = 0;

    /* renamed from: b, reason: collision with root package name */
    public double f4725b = 0.0d;
    public double c = 0.0d;
    public double d = Double.NaN;
    public double e = Double.NaN;

    public void add(double d) {
        long j = this.f4724a;
        if (j == 0) {
            this.f4724a = 1L;
            this.f4725b = d;
            this.d = d;
            this.e = d;
            if (Doubles.isFinite(d)) {
                return;
            }
            this.c = Double.NaN;
            return;
        }
        this.f4724a = j + 1;
        if (Doubles.isFinite(d) && Doubles.isFinite(this.f4725b)) {
            double d2 = this.f4725b;
            double d3 = d - d2;
            double d4 = (d3 / this.f4724a) + d2;
            this.f4725b = d4;
            this.c = ((d - d4) * d3) + this.c;
        } else {
            this.f4725b = a(this.f4725b, d);
            this.c = Double.NaN;
        }
        this.d = Math.min(this.d, d);
        this.e = Math.max(this.e, d);
    }

    public void addAll(Iterable<? extends Number> iterable) {
        Iterator<? extends Number> it = iterable.iterator();
        while (it.hasNext()) {
            add(it.next().doubleValue());
        }
    }

    public void addAll(Iterator<? extends Number> it) {
        while (it.hasNext()) {
            add(it.next().doubleValue());
        }
    }

    public void addAll(double... dArr) {
        for (double d : dArr) {
            add(d);
        }
    }

    public void addAll(int... iArr) {
        for (int i : iArr) {
            add(i);
        }
    }

    public void addAll(long... jArr) {
        for (long j : jArr) {
            add(j);
        }
    }

    public void addAll(Stats stats) {
        if (stats.count() == 0) {
            return;
        }
        b(stats.count(), stats.mean(), stats.c, stats.min(), stats.max());
    }

    public void addAll(StatsAccumulator statsAccumulator) {
        if (statsAccumulator.count() == 0) {
            return;
        }
        b(statsAccumulator.count(), statsAccumulator.mean(), statsAccumulator.c, statsAccumulator.min(), statsAccumulator.max());
    }

    public final void b(long j, double d, double d2, double d3, double d4) {
        long j2 = this.f4724a;
        if (j2 == 0) {
            this.f4724a = j;
            this.f4725b = d;
            this.c = d2;
            this.d = d3;
            this.e = d4;
            return;
        }
        this.f4724a = j2 + j;
        if (Doubles.isFinite(this.f4725b) && Doubles.isFinite(d)) {
            double d5 = this.f4725b;
            double d6 = d - d5;
            double d7 = j;
            double d8 = ((d6 * d7) / this.f4724a) + d5;
            this.f4725b = d8;
            this.c = ((d - d8) * d6 * d7) + d2 + this.c;
        } else {
            this.f4725b = a(this.f4725b, d);
            this.c = Double.NaN;
        }
        this.d = Math.min(this.d, d3);
        this.e = Math.max(this.e, d4);
    }

    public Stats snapshot() {
        return new Stats(this.f4724a, this.f4725b, this.c, this.d, this.e);
    }

    public long count() {
        return this.f4724a;
    }

    public double mean() {
        Preconditions.checkState(this.f4724a != 0);
        return this.f4725b;
    }

    public final double sum() {
        return this.f4725b * this.f4724a;
    }

    public final double populationVariance() {
        Preconditions.checkState(this.f4724a != 0);
        if (Double.isNaN(this.c)) {
            return Double.NaN;
        }
        if (this.f4724a == 1) {
            return 0.0d;
        }
        return a.a(this.c) / this.f4724a;
    }

    public final double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public final double sampleVariance() {
        Preconditions.checkState(this.f4724a > 1);
        if (Double.isNaN(this.c)) {
            return Double.NaN;
        }
        return a.a(this.c) / (this.f4724a - 1);
    }

    public final double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double min() {
        Preconditions.checkState(this.f4724a != 0);
        return this.d;
    }

    public double max() {
        Preconditions.checkState(this.f4724a != 0);
        return this.e;
    }

    public static double a(double d, double d2) {
        if (Doubles.isFinite(d)) {
            return d2;
        }
        if (Doubles.isFinite(d2) || d == d2) {
            return d;
        }
        return Double.NaN;
    }
}
