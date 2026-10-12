package com.google.common.util.concurrent;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class AtomicDouble extends Number implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final transient AtomicLong f4913a;

    public AtomicDouble(double d) {
        this.f4913a = new AtomicLong(Double.doubleToRawLongBits(d));
    }

    public AtomicDouble() {
        this(0.0d);
    }

    public final double get() {
        return Double.longBitsToDouble(this.f4913a.get());
    }

    public final void set(double d) {
        this.f4913a.set(Double.doubleToRawLongBits(d));
    }

    public final void lazySet(double d) {
        this.f4913a.lazySet(Double.doubleToRawLongBits(d));
    }

    public final double getAndSet(double d) {
        return Double.longBitsToDouble(this.f4913a.getAndSet(Double.doubleToRawLongBits(d)));
    }

    public final boolean compareAndSet(double d, double d2) {
        return this.f4913a.compareAndSet(Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSet(double d, double d2) {
        return this.f4913a.weakCompareAndSet(Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(double d) {
        AtomicLong atomicLong;
        long j;
        double dLongBitsToDouble;
        do {
            atomicLong = this.f4913a;
            j = atomicLong.get();
            dLongBitsToDouble = Double.longBitsToDouble(j);
        } while (!atomicLong.compareAndSet(j, Double.doubleToRawLongBits(dLongBitsToDouble + d)));
        return dLongBitsToDouble;
    }

    @CanIgnoreReturnValue
    public final double addAndGet(double d) {
        AtomicLong atomicLong;
        long j;
        double dLongBitsToDouble;
        do {
            atomicLong = this.f4913a;
            j = atomicLong.get();
            dLongBitsToDouble = Double.longBitsToDouble(j) + d;
        } while (!atomicLong.compareAndSet(j, Double.doubleToRawLongBits(dLongBitsToDouble)));
        return dLongBitsToDouble;
    }

    public String toString() {
        return Double.toString(get());
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }
}
