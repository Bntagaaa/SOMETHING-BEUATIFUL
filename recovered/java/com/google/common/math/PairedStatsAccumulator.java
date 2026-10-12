package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class PairedStatsAccumulator {

    /* renamed from: a, reason: collision with root package name */
    public final StatsAccumulator f4715a = new StatsAccumulator();

    /* renamed from: b, reason: collision with root package name */
    public final StatsAccumulator f4716b = new StatsAccumulator();
    public double c = 0.0d;

    public void add(double d, double d2) {
        StatsAccumulator statsAccumulator = this.f4715a;
        statsAccumulator.add(d);
        boolean zIsFinite = Doubles.isFinite(d);
        StatsAccumulator statsAccumulator2 = this.f4716b;
        if (!zIsFinite || !Doubles.isFinite(d2)) {
            this.c = Double.NaN;
        } else if (statsAccumulator.count() > 1) {
            this.c = ((d2 - statsAccumulator2.mean()) * (d - statsAccumulator.mean())) + this.c;
        }
        statsAccumulator2.add(d2);
    }

    public void addAll(PairedStats pairedStats) {
        if (pairedStats.count() == 0) {
            return;
        }
        Stats statsXStats = pairedStats.xStats();
        StatsAccumulator statsAccumulator = this.f4715a;
        statsAccumulator.addAll(statsXStats);
        StatsAccumulator statsAccumulator2 = this.f4716b;
        long jCount = statsAccumulator2.count();
        double d = pairedStats.c;
        if (jCount == 0) {
            this.c = d;
        } else {
            this.c = ((pairedStats.yStats().mean() - statsAccumulator2.mean()) * (pairedStats.xStats().mean() - statsAccumulator.mean()) * pairedStats.count()) + d + this.c;
        }
        statsAccumulator2.addAll(pairedStats.yStats());
    }

    public PairedStats snapshot() {
        return new PairedStats(this.f4715a.snapshot(), this.f4716b.snapshot(), this.c);
    }

    public long count() {
        return this.f4715a.count();
    }

    public Stats xStats() {
        return this.f4715a.snapshot();
    }

    public Stats yStats() {
        return this.f4716b.snapshot();
    }

    public double populationCovariance() {
        Preconditions.checkState(count() != 0);
        return this.c / count();
    }

    public final double sampleCovariance() {
        Preconditions.checkState(count() > 1);
        return this.c / (count() - 1);
    }

    public final double pearsonsCorrelationCoefficient() {
        Preconditions.checkState(count() > 1);
        if (Double.isNaN(this.c)) {
            return Double.NaN;
        }
        double d = this.f4715a.c;
        double d2 = this.f4716b.c;
        Preconditions.checkState(d > 0.0d);
        Preconditions.checkState(d2 > 0.0d);
        double d3 = d * d2;
        if (d3 <= 0.0d) {
            d3 = Double.MIN_VALUE;
        }
        return Doubles.constrainToRange(this.c / Math.sqrt(d3), -1.0d, 1.0d);
    }

    public final LinearTransformation leastSquaresFit() {
        Preconditions.checkState(count() > 1);
        if (Double.isNaN(this.c)) {
            return LinearTransformation.forNaN();
        }
        StatsAccumulator statsAccumulator = this.f4715a;
        double d = statsAccumulator.c;
        StatsAccumulator statsAccumulator2 = this.f4716b;
        if (d <= 0.0d) {
            Preconditions.checkState(statsAccumulator2.c > 0.0d);
            return LinearTransformation.vertical(statsAccumulator.mean());
        }
        if (statsAccumulator2.c > 0.0d) {
            return LinearTransformation.mapping(statsAccumulator.mean(), statsAccumulator2.mean()).withSlope(this.c / d);
        }
        return LinearTransformation.horizontal(statsAccumulator2.mean());
    }
}
