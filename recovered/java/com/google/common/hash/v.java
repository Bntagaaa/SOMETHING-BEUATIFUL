package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
/* loaded from: classes.dex */
final class v extends d implements Serializable {
    public static final HashFunction e = new v(506097522914230528L, 1084818905618843912L);

    /* renamed from: a, reason: collision with root package name */
    public final int f4600a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4601b;
    public final long c;
    public final long d;

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    public v(long j, long j2) {
        Preconditions.checkArgument(true, "The number of SipRound iterations (c=%s) during Compression must be positive.", 2);
        Preconditions.checkArgument(true, "The number of SipRound iterations (d=%s) during Finalization must be positive.", 4);
        this.f4600a = 2;
        this.f4601b = 4;
        this.c = j;
        this.d = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new a(this.f4600a, this.f4601b, this.c, this.d);
    }

    public String toString() {
        return "Hashing.sipHash" + this.f4600a + "" + this.f4601b + "(" + this.c + ", " + this.d + ")";
    }

    public boolean equals(@NullableDecl Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f4600a == vVar.f4600a && this.f4601b == vVar.f4601b && this.c == vVar.c && this.d == vVar.d;
    }

    public int hashCode() {
        return (int) ((((v.class.hashCode() ^ this.f4600a) ^ this.f4601b) ^ this.c) ^ this.d);
    }

    public static final class a extends g {
        public final int d;
        public final int e;
        public long f;

        /* renamed from: g, reason: collision with root package name */
        public long f4602g;
        public long h;
        public long i;
        public long j;
        public long k;

        public a(int i, int i2, long j, long j2) {
            super(8);
            this.j = 0L;
            this.k = 0L;
            this.d = i;
            this.e = i2;
            this.f = 8317987319222330741L ^ j;
            this.f4602g = 7237128888997146477L ^ j2;
            this.h = 7816392313619706465L ^ j;
            this.i = 8387220255154660723L ^ j2;
        }

        @Override // com.google.common.hash.g
        public void process(ByteBuffer byteBuffer) {
            this.j += 8;
            long j = byteBuffer.getLong();
            this.i ^= j;
            d(this.d);
            this.f = j ^ this.f;
        }

        @Override // com.google.common.hash.g
        public void processRemaining(ByteBuffer byteBuffer) {
            this.j += byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.k ^= (byteBuffer.get() & 255) << i;
                i += 8;
            }
        }

        @Override // com.google.common.hash.g
        public HashCode makeHash() {
            long j = this.k ^ (this.j << 56);
            this.k = j;
            this.i ^= j;
            d(this.d);
            this.f = j ^ this.f;
            this.h ^= 255;
            d(this.e);
            return HashCode.fromLong(((this.f ^ this.f4602g) ^ this.h) ^ this.i);
        }

        public final void d(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.f;
                long j2 = this.f4602g;
                this.f = j + j2;
                this.h += this.i;
                this.f4602g = Long.rotateLeft(j2, 13);
                long jRotateLeft = Long.rotateLeft(this.i, 16);
                long j3 = this.f4602g;
                long j4 = this.f;
                this.f4602g = j3 ^ j4;
                this.i = jRotateLeft ^ this.h;
                long jRotateLeft2 = Long.rotateLeft(j4, 32);
                long j5 = this.h;
                long j6 = this.f4602g;
                this.h = j5 + j6;
                this.f = jRotateLeft2 + this.i;
                this.f4602g = Long.rotateLeft(j6, 17);
                long jRotateLeft3 = Long.rotateLeft(this.i, 21);
                long j7 = this.f4602g;
                long j8 = this.h;
                this.f4602g = j7 ^ j8;
                this.i = jRotateLeft3 ^ this.f;
                this.h = Long.rotateLeft(j8, 32);
            }
        }
    }
}
