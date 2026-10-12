package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.hash.h;
import com.google.common.math.DoubleMath;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.concurrent.atomic.AtomicLongArray;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Beta
/* loaded from: classes.dex */
public final class BloomFilter<T> implements Predicate<T>, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final h.c f4541a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4542b;
    public final Funnel c;
    public final c d;

    public static class b<T> implements Serializable {
    }

    public interface c extends Serializable {
        <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, h.c cVar);

        int ordinal();

        <T> boolean put(T t, Funnel<? super T> funnel, int i, h.c cVar);
    }

    public BloomFilter(h.c cVar, int i, Funnel funnel, c cVar2) {
        Preconditions.checkArgument(i > 0, "numHashFunctions (%s) must be > 0", i);
        Preconditions.checkArgument(i <= 255, "numHashFunctions (%s) must be <= 255", i);
        this.f4541a = (h.c) Preconditions.checkNotNull(cVar);
        this.f4542b = i;
        this.c = (Funnel) Preconditions.checkNotNull(funnel);
        this.d = (c) Preconditions.checkNotNull(cVar2);
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(new h.c(h.c.toPlainArray(this.f4541a.f4575a)), this.f4542b, this.c, this.d);
    }

    public boolean mightContain(T t) {
        return this.d.mightContain(t, this.c, this.f4542b, this.f4541a);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(T t) {
        return mightContain(t);
    }

    @CanIgnoreReturnValue
    public boolean put(T t) {
        return this.d.put(t, this.c, this.f4542b, this.f4541a);
    }

    public long approximateElementCount() {
        h.c cVar = this.f4541a;
        long jA = cVar.a();
        double dSum = cVar.f4576b.sum();
        double d = jA;
        return DoubleMath.roundToLong(((-Math.log1p(-(dSum / d))) * d) / this.f4542b, RoundingMode.HALF_UP);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        if (this != bloomFilter) {
            return this.f4542b == bloomFilter.f4542b && this.f4541a.a() == bloomFilter.f4541a.a() && this.d.equals(bloomFilter.d) && this.c.equals(bloomFilter.c);
        }
        return false;
    }

    public double expectedFpp() {
        h.c cVar = this.f4541a;
        return Math.pow(cVar.f4576b.sum() / cVar.a(), this.f4542b);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        Preconditions.checkArgument(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i = bloomFilter.f4542b;
        int i2 = this.f4542b;
        Preconditions.checkArgument(i2 == i, "BloomFilters must have the same number of hash functions (%s != %s)", i2, i);
        h.c cVar = this.f4541a;
        long jA = cVar.a();
        h.c cVar2 = bloomFilter.f4541a;
        Preconditions.checkArgument(jA == cVar2.a(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", cVar.a(), cVar2.a());
        c cVar3 = this.d;
        c cVar4 = bloomFilter.d;
        Preconditions.checkArgument(cVar3.equals(cVar4), "BloomFilters must have equal strategies (%s != %s)", cVar3, cVar4);
        Funnel funnel = this.c;
        Funnel funnel2 = bloomFilter.c;
        Preconditions.checkArgument(funnel.equals(funnel2), "BloomFilters must have equal funnels (%s != %s)", funnel, funnel2);
        AtomicLongArray atomicLongArray = cVar.f4575a;
        boolean z = atomicLongArray.length() == cVar2.f4575a.length();
        int length = atomicLongArray.length();
        AtomicLongArray atomicLongArray2 = cVar2.f4575a;
        Preconditions.checkArgument(z, "BitArrays must be of equal length (%s != %s)", length, atomicLongArray2.length());
        for (int i3 = 0; i3 < atomicLongArray.length(); i3++) {
            long j = atomicLongArray2.get(i3);
            while (true) {
                long j2 = atomicLongArray.get(i3);
                long j3 = j2 | j;
                if (j2 != j3) {
                    if (cVar.f4575a.compareAndSet(i3, j2, j3)) {
                        cVar.f4576b.add(Long.bitCount(j3) - Long.bitCount(j2));
                        break;
                    }
                }
            }
        }
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BloomFilter) {
            BloomFilter bloomFilter = (BloomFilter) obj;
            if (this.f4542b == bloomFilter.f4542b && this.c.equals(bloomFilter.c) && this.f4541a.equals(bloomFilter.f4541a) && this.d.equals(bloomFilter.d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f4542b), this.c, this.d, this.f4541a);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        h.b bVar = h.f4573a;
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(j >= 0, "Expected insertions (%s) must be >= 0", j);
        Preconditions.checkArgument(d > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d));
        Preconditions.checkArgument(d < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d));
        Preconditions.checkNotNull(bVar);
        if (j == 0) {
            j = 1;
        }
        if (d == 0.0d) {
            d = Double.MIN_VALUE;
        }
        long jLog = (long) ((Math.log(d) * (-j)) / (Math.log(2.0d) * Math.log(2.0d)));
        try {
            return new BloomFilter<>(new h.c(jLog), Math.max(1, (int) Math.round(Math.log(2.0d) * (jLog / j))), funnel, bVar);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + jLog + " bits", e);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.checkedCast(this.d.ordinal()));
        dataOutputStream.writeByte(UnsignedBytes.checkedCast(this.f4542b));
        h.c cVar = this.f4541a;
        dataOutputStream.writeInt(cVar.f4575a.length());
        for (int i = 0; i < cVar.f4575a.length(); i++) {
            dataOutputStream.writeLong(cVar.f4575a.get(i));
        }
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        int i;
        int i2;
        Preconditions.checkNotNull(inputStream, "InputStream");
        Preconditions.checkNotNull(funnel, "Funnel");
        byte b2 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte b3 = dataInputStream.readByte();
            try {
                i2 = UnsignedBytes.toInt(dataInputStream.readByte());
            } catch (RuntimeException e) {
                e = e;
                i2 = -1;
            }
            try {
                int i3 = dataInputStream.readInt();
                try {
                    h hVar = h.values()[b3];
                    long[] jArr = new long[i3];
                    for (int i4 = 0; i4 < i3; i4++) {
                        jArr[i4] = dataInputStream.readLong();
                    }
                    return new BloomFilter<>(new h.c(jArr), i2, funnel, hVar);
                } catch (RuntimeException e2) {
                    e = e2;
                    b2 = b3;
                    i = i3;
                    StringBuilder sbN = _COROUTINE.a.n(b2, i2, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ", " numHashFunctions: ", " dataLength: ");
                    sbN.append(i);
                    throw new IOException(sbN.toString(), e);
                }
            } catch (RuntimeException e3) {
                e = e3;
                b2 = b3;
                i = -1;
                StringBuilder sbN2 = _COROUTINE.a.n(b2, i2, "Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ", " numHashFunctions: ", " dataLength: ");
                sbN2.append(i);
                throw new IOException(sbN2.toString(), e);
            }
        } catch (RuntimeException e4) {
            e = e4;
            i = -1;
            i2 = -1;
        }
    }
}
