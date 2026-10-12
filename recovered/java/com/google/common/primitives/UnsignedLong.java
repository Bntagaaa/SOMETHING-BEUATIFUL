package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.math.BigInteger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@GwtCompatible(serializable = true)
/* loaded from: classes.dex */
public final class UnsignedLong extends Number implements Comparable<UnsignedLong>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final long f4800a;
    public static final UnsignedLong ZERO = new UnsignedLong(0);
    public static final UnsignedLong ONE = new UnsignedLong(1);
    public static final UnsignedLong MAX_VALUE = new UnsignedLong(-1);

    public UnsignedLong(long j) {
        this.f4800a = j;
    }

    public static UnsignedLong fromLongBits(long j) {
        return new UnsignedLong(j);
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(long j) {
        Preconditions.checkArgument(j >= 0, "value (%s) is outside the range for an unsigned long value", j);
        return fromLongBits(j);
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        Preconditions.checkArgument(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 64, "value (%s) is outside the range for an unsigned long value", bigInteger);
        return fromLongBits(bigInteger.longValue());
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(String str) {
        return valueOf(str, 10);
    }

    @CanIgnoreReturnValue
    public static UnsignedLong valueOf(String str, int i) {
        return fromLongBits(UnsignedLongs.parseUnsignedLong(str, i));
    }

    public UnsignedLong plus(UnsignedLong unsignedLong) {
        return fromLongBits(this.f4800a + ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).f4800a);
    }

    public UnsignedLong minus(UnsignedLong unsignedLong) {
        return fromLongBits(this.f4800a - ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).f4800a);
    }

    public UnsignedLong times(UnsignedLong unsignedLong) {
        return fromLongBits(this.f4800a * ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).f4800a);
    }

    public UnsignedLong dividedBy(UnsignedLong unsignedLong) {
        return fromLongBits(UnsignedLongs.divide(this.f4800a, ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).f4800a));
    }

    public UnsignedLong mod(UnsignedLong unsignedLong) {
        return fromLongBits(UnsignedLongs.remainder(this.f4800a, ((UnsignedLong) Preconditions.checkNotNull(unsignedLong)).f4800a));
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.f4800a;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.f4800a;
    }

    @Override // java.lang.Number
    public float floatValue() {
        long j = this.f4800a;
        float f = Long.MAX_VALUE & j;
        return j < 0 ? f + 9.223372E18f : f;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        long j = this.f4800a;
        double d = Long.MAX_VALUE & j;
        return j < 0 ? d + 9.223372036854776E18d : d;
    }

    public BigInteger bigIntegerValue() {
        long j = this.f4800a;
        BigInteger bigIntegerValueOf = BigInteger.valueOf(Long.MAX_VALUE & j);
        return j < 0 ? bigIntegerValueOf.setBit(63) : bigIntegerValueOf;
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedLong unsignedLong) {
        Preconditions.checkNotNull(unsignedLong);
        return UnsignedLongs.compare(this.f4800a, unsignedLong.f4800a);
    }

    public int hashCode() {
        return Longs.hashCode(this.f4800a);
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof UnsignedLong) && this.f4800a == ((UnsignedLong) obj).f4800a;
    }

    public String toString() {
        return UnsignedLongs.toString(this.f4800a);
    }

    public String toString(int i) {
        return UnsignedLongs.toString(this.f4800a, i);
    }
}
