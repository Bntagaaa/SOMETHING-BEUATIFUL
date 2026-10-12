package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;

@GwtCompatible
/* loaded from: classes.dex */
public abstract class DiscreteDomain<C extends Comparable> {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3857a;

    public abstract long distance(C c2, C c3);

    public abstract C next(C c2);

    public abstract C previous(C c2);

    public static final class b extends DiscreteDomain<BigInteger> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final b f3858b = new b();
        public static final BigInteger c = BigInteger.valueOf(Long.MIN_VALUE);
        public static final BigInteger d = BigInteger.valueOf(Long.MAX_VALUE);

        public b() {
            super(true);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public final Comparable a(Comparable comparable, long j) {
            g0.c(j);
            return ((BigInteger) comparable).add(BigInteger.valueOf(j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(c).min(d).longValue();
        }

        public String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    public static final class c extends DiscreteDomain<Integer> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final c f3859b = new c();

        public c() {
            super(true);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public final Comparable a(Comparable comparable, long j) {
            g0.c(j);
            return Integer.valueOf(Ints.checkedCast(((Integer) comparable).longValue() + j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer next(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer previous(Integer num) {
            int iIntValue = num.intValue();
            if (iIntValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(iIntValue - 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }

        public String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    public static final class d extends DiscreteDomain<Long> implements Serializable {

        /* renamed from: b, reason: collision with root package name */
        public static final d f3860b = new d();

        public d() {
            super(true);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public final Comparable a(Comparable comparable, long j) {
            Long l = (Long) comparable;
            g0.c(j);
            long jLongValue = l.longValue() + j;
            if (jLongValue < 0) {
                Preconditions.checkArgument(l.longValue() < 0, "overflow");
            }
            return Long.valueOf(jLongValue);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long next(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long previous(Long l) {
            long jLongValue = l.longValue();
            if (jLongValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(jLongValue - 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Long l, Long l2) {
            long jLongValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && jLongValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || jLongValue <= 0) {
                return jLongValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        public String toString() {
            return "DiscreteDomain.longs()";
        }
    }

    public static DiscreteDomain<Integer> integers() {
        return c.f3859b;
    }

    public static DiscreteDomain<Long> longs() {
        return d.f3860b;
    }

    public static DiscreteDomain<BigInteger> bigIntegers() {
        return b.f3858b;
    }

    public DiscreteDomain() {
        this(false);
    }

    public DiscreteDomain(boolean z) {
        this.f3857a = z;
    }

    public Comparable a(Comparable comparable, long j) {
        g0.c(j);
        for (long j2 = 0; j2 < j; j2++) {
            comparable = next(comparable);
        }
        return comparable;
    }

    @CanIgnoreReturnValue
    public C minValue() {
        throw new NoSuchElementException();
    }

    @CanIgnoreReturnValue
    public C maxValue() {
        throw new NoSuchElementException();
    }
}
