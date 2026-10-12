package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
@GwtIncompatible
/* loaded from: classes.dex */
public final class PairedStats implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Stats f4713a;

    /* renamed from: b, reason: collision with root package name */
    public final Stats f4714b;
    public final double c;

    public PairedStats(Stats stats, Stats stats2, double d) {
        this.f4713a = stats;
        this.f4714b = stats2;
        this.c = d;
    }

    public long count() {
        return this.f4713a.count();
    }

    public Stats xStats() {
        return this.f4713a;
    }

    public Stats yStats() {
        return this.f4714b;
    }

    public double populationCovariance() {
        Preconditions.checkState(count() != 0);
        return this.c / count();
    }

    public double sampleCovariance() {
        Preconditions.checkState(count() > 1);
        return this.c / (count() - 1);
    }

    public double pearsonsCorrelationCoefficient() {
        Preconditions.checkState(count() > 1);
        double d = this.c;
        if (Double.isNaN(d)) {
            return Double.NaN;
        }
        double d2 = xStats().c;
        double d3 = yStats().c;
        Preconditions.checkState(d2 > 0.0d);
        Preconditions.checkState(d3 > 0.0d);
        double d4 = d2 * d3;
        if (d4 <= 0.0d) {
            d4 = Double.MIN_VALUE;
        }
        double dSqrt = d / Math.sqrt(d4);
        if (dSqrt >= 1.0d) {
            return 1.0d;
        }
        if (dSqrt <= -1.0d) {
            return -1.0d;
        }
        return dSqrt;
    }

    public LinearTransformation leastSquaresFit() {
        Preconditions.checkState(count() > 1);
        double d = this.c;
        if (Double.isNaN(d)) {
            return LinearTransformation.forNaN();
        }
        Stats stats = this.f4713a;
        double d2 = stats.c;
        Stats stats2 = this.f4714b;
        if (d2 <= 0.0d) {
            Preconditions.checkState(stats2.c > 0.0d);
            return LinearTransformation.vertical(stats.mean());
        }
        if (stats2.c > 0.0d) {
            return LinearTransformation.mapping(stats.mean(), stats2.mean()).withSlope(d / d2);
        }
        return LinearTransformation.horizontal(stats2.mean());
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == null || PairedStats.class != obj.getClass()) {
            return false;
        }
        PairedStats pairedStats = (PairedStats) obj;
        return this.f4713a.equals(pairedStats.f4713a) && this.f4714b.equals(pairedStats.f4714b) && Double.doubleToLongBits(this.c) == Double.doubleToLongBits(pairedStats.c);
    }

    public int hashCode() {
        return Objects.hashCode(this.f4713a, this.f4714b, Double.valueOf(this.c));
    }

    public String toString() {
        long jCount = count();
        Stats stats = this.f4714b;
        Stats stats2 = this.f4713a;
        if (jCount > 0) {
            return MoreObjects.toStringHelper(this).add("xStats", stats2).add("yStats", stats).add("populationCovariance", populationCovariance()).toString();
        }
        return MoreObjects.toStringHelper(this).add("xStats", stats2).add("yStats", stats).toString();
    }

    public byte[] toByteArray() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(88).order(ByteOrder.LITTLE_ENDIAN);
        this.f4713a.b(byteBufferOrder);
        this.f4714b.b(byteBufferOrder);
        byteBufferOrder.putDouble(this.c);
        return byteBufferOrder.array();
    }

    public static PairedStats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 88, "Expected PairedStats.BYTES = %s, got %s", 88, bArr.length);
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        return new PairedStats(Stats.a(byteBufferOrder), Stats.a(byteBufferOrder), byteBufferOrder.getDouble());
    }
}
