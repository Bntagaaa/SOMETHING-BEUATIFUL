package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilter;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
abstract class h implements BloomFilter.c {

    /* renamed from: a, reason: collision with root package name */
    public static final b f4573a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ h[] f4574b;

    /* JADX INFO: Fake field, exist only in values array */
    h EF0;

    public enum b extends h {
        public b() {
            super("MURMUR128_MITZ_64", 1);
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean put(T t, Funnel<? super T> funnel, int i, c cVar) {
            long jA = cVar.a();
            byte[] bArrC = Hashing.murmur3_128().hashObject(t, funnel).c();
            long jA2 = a(bArrC);
            long jB = b(bArrC);
            boolean zC = false;
            for (int i2 = 0; i2 < i; i2++) {
                zC |= cVar.c((Long.MAX_VALUE & jA2) % jA);
                jA2 += jB;
            }
            return zC;
        }

        @Override // com.google.common.hash.BloomFilter.c
        public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, c cVar) {
            long jA = cVar.a();
            byte[] bArrC = Hashing.murmur3_128().hashObject(t, funnel).c();
            long jA2 = a(bArrC);
            long jB = b(bArrC);
            for (int i2 = 0; i2 < i; i2++) {
                if (!cVar.b((Long.MAX_VALUE & jA2) % jA)) {
                    return false;
                }
                jA2 += jB;
            }
            return true;
        }

        public static long a(byte[] bArr) {
            return Longs.fromBytes(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        public static long b(byte[] bArr) {
            return Longs.fromBytes(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }
    }

    public static h[] values() {
        return (h[]) f4574b.clone();
    }

    static {
        h hVar = new h() { // from class: com.google.common.hash.h.a
            @Override // com.google.common.hash.BloomFilter.c
            public <T> boolean put(T t, Funnel<? super T> funnel, int i, c cVar) {
                long jA = cVar.a();
                long jAsLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
                int i2 = (int) jAsLong;
                int i3 = (int) (jAsLong >>> 32);
                boolean zC = false;
                for (int i4 = 1; i4 <= i; i4++) {
                    int i5 = (i4 * i3) + i2;
                    if (i5 < 0) {
                        i5 = ~i5;
                    }
                    zC |= cVar.c(i5 % jA);
                }
                return zC;
            }

            @Override // com.google.common.hash.BloomFilter.c
            public <T> boolean mightContain(T t, Funnel<? super T> funnel, int i, c cVar) {
                long jA = cVar.a();
                long jAsLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
                int i2 = (int) jAsLong;
                int i3 = (int) (jAsLong >>> 32);
                for (int i4 = 1; i4 <= i; i4++) {
                    int i5 = (i4 * i3) + i2;
                    if (i5 < 0) {
                        i5 = ~i5;
                    }
                    if (!cVar.b(i5 % jA)) {
                        return false;
                    }
                }
                return true;
            }
        };
        b bVar = new b();
        f4573a = bVar;
        f4574b = new h[]{hVar, bVar};
    }

    public static final class c {

        /* renamed from: a, reason: collision with root package name */
        public final AtomicLongArray f4575a;

        /* renamed from: b, reason: collision with root package name */
        public final o f4576b;

        public c(long j) {
            Preconditions.checkArgument(j > 0, "data length is zero!");
            this.f4575a = new AtomicLongArray(Ints.checkedCast(LongMath.divide(j, 64L, RoundingMode.CEILING)));
            this.f4576b = p.create();
        }

        public c(long[] jArr) {
            Preconditions.checkArgument(jArr.length > 0, "data length is zero!");
            this.f4575a = new AtomicLongArray(jArr);
            this.f4576b = p.create();
            long jBitCount = 0;
            for (long j : jArr) {
                jBitCount += Long.bitCount(j);
            }
            this.f4576b.add(jBitCount);
        }

        public final boolean c(long j) {
            long j2;
            long j3;
            if (b(j)) {
                return false;
            }
            int i = (int) (j >>> 6);
            long j4 = 1 << ((int) j);
            do {
                j2 = this.f4575a.get(i);
                j3 = j2 | j4;
                if (j2 == j3) {
                    return false;
                }
            } while (!this.f4575a.compareAndSet(i, j2, j3));
            this.f4576b.increment();
            return true;
        }

        public final boolean b(long j) {
            return ((1 << ((int) j)) & this.f4575a.get((int) (j >>> 6))) != 0;
        }

        public static long[] toPlainArray(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        public final long a() {
            return this.f4575a.length() * 64;
        }

        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                return Arrays.equals(toPlainArray(this.f4575a), toPlainArray(((c) obj).f4575a));
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(toPlainArray(this.f4575a));
        }
    }
}
