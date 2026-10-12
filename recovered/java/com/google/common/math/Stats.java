package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class Stats implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final long f4722a;

    /* renamed from: b, reason: collision with root package name */
    public final double f4723b;
    public final double c;
    public final double d;
    public final double e;

    public Stats(long j, double d, double d2, double d3, double d4) {
        this.f4722a = j;
        this.f4723b = d;
        this.c = d2;
        this.d = d3;
        this.e = d4;
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iterable);
        return statsAccumulator.snapshot();
    }

    public static Stats of(Iterator<? extends Number> it) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(it);
        return statsAccumulator.snapshot();
    }

    public static Stats of(double... dArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(dArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(int... iArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(long... jArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(jArr);
        return statsAccumulator.snapshot();
    }

    public long count() {
        return this.f4722a;
    }

    public double mean() {
        Preconditions.checkState(this.f4722a != 0);
        return this.f4723b;
    }

    public double sum() {
        return this.f4723b * this.f4722a;
    }

    public double populationVariance() {
        long j = this.f4722a;
        Preconditions.checkState(j > 0);
        double d = this.c;
        if (Double.isNaN(d)) {
            return Double.NaN;
        }
        if (j == 1) {
            return 0.0d;
        }
        return a.a(d) / count();
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double sampleVariance() {
        Preconditions.checkState(this.f4722a > 1);
        double d = this.c;
        if (Double.isNaN(d)) {
            return Double.NaN;
        }
        return a.a(d) / (r0 - 1);
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double min() {
        Preconditions.checkState(this.f4722a != 0);
        return this.d;
    }

    public double max() {
        Preconditions.checkState(this.f4722a != 0);
        return this.e;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        Stats stats = (Stats) obj;
        return this.f4722a == stats.f4722a && Double.doubleToLongBits(this.f4723b) == Double.doubleToLongBits(stats.f4723b) && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(stats.c) && Double.doubleToLongBits(this.d) == Double.doubleToLongBits(stats.d) && Double.doubleToLongBits(this.e) == Double.doubleToLongBits(stats.e);
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f4722a), Double.valueOf(this.f4723b), Double.valueOf(this.c), Double.valueOf(this.d), Double.valueOf(this.e));
    }

    public String toString() {
        long jCount = count();
        long j = this.f4722a;
        if (jCount > 0) {
            return MoreObjects.toStringHelper(this).add("count", j).add("mean", this.f4723b).add("populationStandardDeviation", populationStandardDeviation()).add("min", this.d).add("max", this.e).toString();
        }
        return MoreObjects.toStringHelper(this).add("count", j).toString();
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static double meanOf(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext());
        double dDoubleValue = it.next().doubleValue();
        long j = 1;
        while (it.hasNext()) {
            double dDoubleValue2 = it.next().doubleValue();
            j++;
            dDoubleValue = (Doubles.isFinite(dDoubleValue2) && Doubles.isFinite(dDoubleValue)) ? ((dDoubleValue2 - dDoubleValue) / j) + dDoubleValue : StatsAccumulator.a(dDoubleValue, dDoubleValue2);
        }
        return dDoubleValue;
    }

    public static double meanOf(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dA = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d = dArr[i];
            dA = (Doubles.isFinite(d) && Doubles.isFinite(dA)) ? ((d - dA) / (i + 1)) + dA : StatsAccumulator.a(dA, d);
        }
        return dA;
    }

    public static double meanOf(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        double dA = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d = iArr[i];
            dA = (Doubles.isFinite(d) && Doubles.isFinite(dA)) ? ((d - dA) / (i + 1)) + dA : StatsAccumulator.a(dA, d);
        }
        return dA;
    }

    public static double meanOf(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        double dA = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d = jArr[i];
            dA = (Doubles.isFinite(d) && Doubles.isFinite(dA)) ? ((d - dA) / (i + 1)) + dA : StatsAccumulator.a(dA, d);
        }
        return dA;
    }

    public byte[] toByteArray() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        b(byteBufferOrder);
        return byteBufferOrder.array();
    }

    public final void b(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.f4722a).putDouble(this.f4723b).putDouble(this.c).putDouble(this.d).putDouble(this.e);
    }

    public static Stats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return a(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static Stats a(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }
}
