package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.LongMath;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible
/* loaded from: classes.dex */
public final class CacheStats {

    /* renamed from: a, reason: collision with root package name */
    public final long f3769a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3770b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public CacheStats(long j, long j2, long j3, long j4, long j5, long j6) {
        Preconditions.checkArgument(j >= 0);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        Preconditions.checkArgument(j4 >= 0);
        Preconditions.checkArgument(j5 >= 0);
        Preconditions.checkArgument(j6 >= 0);
        this.f3769a = j;
        this.f3770b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
    }

    public long requestCount() {
        return LongMath.saturatedAdd(this.f3769a, this.f3770b);
    }

    public long hitCount() {
        return this.f3769a;
    }

    public double hitRate() {
        long jRequestCount = requestCount();
        if (jRequestCount == 0) {
            return 1.0d;
        }
        return this.f3769a / jRequestCount;
    }

    public long missCount() {
        return this.f3770b;
    }

    public double missRate() {
        long jRequestCount = requestCount();
        if (jRequestCount == 0) {
            return 0.0d;
        }
        return this.f3770b / jRequestCount;
    }

    public long loadCount() {
        return LongMath.saturatedAdd(this.c, this.d);
    }

    public long loadSuccessCount() {
        return this.c;
    }

    public long loadExceptionCount() {
        return this.d;
    }

    public double loadExceptionRate() {
        long j = this.c;
        long j2 = this.d;
        long jSaturatedAdd = LongMath.saturatedAdd(j, j2);
        if (jSaturatedAdd == 0) {
            return 0.0d;
        }
        return j2 / jSaturatedAdd;
    }

    public long totalLoadTime() {
        return this.e;
    }

    public double averageLoadPenalty() {
        long jSaturatedAdd = LongMath.saturatedAdd(this.c, this.d);
        if (jSaturatedAdd == 0) {
            return 0.0d;
        }
        return this.e / jSaturatedAdd;
    }

    public long evictionCount() {
        return this.f;
    }

    public CacheStats minus(CacheStats cacheStats) {
        return new CacheStats(Math.max(0L, LongMath.saturatedSubtract(this.f3769a, cacheStats.f3769a)), Math.max(0L, LongMath.saturatedSubtract(this.f3770b, cacheStats.f3770b)), Math.max(0L, LongMath.saturatedSubtract(this.c, cacheStats.c)), Math.max(0L, LongMath.saturatedSubtract(this.d, cacheStats.d)), Math.max(0L, LongMath.saturatedSubtract(this.e, cacheStats.e)), Math.max(0L, LongMath.saturatedSubtract(this.f, cacheStats.f)));
    }

    public CacheStats plus(CacheStats cacheStats) {
        return new CacheStats(LongMath.saturatedAdd(this.f3769a, cacheStats.f3769a), LongMath.saturatedAdd(this.f3770b, cacheStats.f3770b), LongMath.saturatedAdd(this.c, cacheStats.c), LongMath.saturatedAdd(this.d, cacheStats.d), LongMath.saturatedAdd(this.e, cacheStats.e), LongMath.saturatedAdd(this.f, cacheStats.f));
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f3769a), Long.valueOf(this.f3770b), Long.valueOf(this.c), Long.valueOf(this.d), Long.valueOf(this.e), Long.valueOf(this.f));
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof CacheStats) {
            CacheStats cacheStats = (CacheStats) obj;
            if (this.f3769a == cacheStats.f3769a && this.f3770b == cacheStats.f3770b && this.c == cacheStats.c && this.d == cacheStats.d && this.e == cacheStats.e && this.f == cacheStats.f) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("hitCount", this.f3769a).add("missCount", this.f3770b).add("loadSuccessCount", this.c).add("loadExceptionCount", this.d).add("totalLoadTime", this.e).add("evictionCount", this.f).toString();
    }
}
