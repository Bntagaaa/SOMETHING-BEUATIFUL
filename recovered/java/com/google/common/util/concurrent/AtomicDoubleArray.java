package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;

@GwtIncompatible
/* loaded from: classes.dex */
public class AtomicDoubleArray implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final transient AtomicLongArray f4914a;

    public AtomicDoubleArray(int i) {
        this.f4914a = new AtomicLongArray(i);
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = Double.doubleToRawLongBits(dArr[i]);
        }
        this.f4914a = new AtomicLongArray(jArr);
    }

    public final int length() {
        return this.f4914a.length();
    }

    public final double get(int i) {
        return Double.longBitsToDouble(this.f4914a.get(i));
    }

    public final void set(int i, double d) {
        this.f4914a.set(i, Double.doubleToRawLongBits(d));
    }

    public final void lazySet(int i, double d) {
        this.f4914a.lazySet(i, Double.doubleToRawLongBits(d));
    }

    public final double getAndSet(int i, double d) {
        return Double.longBitsToDouble(this.f4914a.getAndSet(i, Double.doubleToRawLongBits(d)));
    }

    public final boolean compareAndSet(int i, double d, double d2) {
        return this.f4914a.compareAndSet(i, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    public final boolean weakCompareAndSet(int i, double d, double d2) {
        return this.f4914a.weakCompareAndSet(i, Double.doubleToRawLongBits(d), Double.doubleToRawLongBits(d2));
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(int i, double d) {
        while (true) {
            long j = this.f4914a.get(i);
            double dLongBitsToDouble = Double.longBitsToDouble(j);
            int i2 = i;
            if (this.f4914a.compareAndSet(i2, j, Double.doubleToRawLongBits(dLongBitsToDouble + d))) {
                return dLongBitsToDouble;
            }
            i = i2;
        }
    }

    @CanIgnoreReturnValue
    public double addAndGet(int i, double d) {
        while (true) {
            long j = this.f4914a.get(i);
            double dLongBitsToDouble = Double.longBitsToDouble(j) + d;
            int i2 = i;
            if (this.f4914a.compareAndSet(i2, j, Double.doubleToRawLongBits(dLongBitsToDouble))) {
                return dLongBitsToDouble;
            }
            i = i2;
        }
    }

    public String toString() {
        int length = length();
        int i = length - 1;
        if (i == -1) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(length * 19);
        sb.append('[');
        int i2 = 0;
        while (true) {
            sb.append(Double.longBitsToDouble(this.f4914a.get(i2)));
            if (i2 == i) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            i2++;
        }
    }
}
