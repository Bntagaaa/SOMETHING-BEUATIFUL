package com.google.common.hash;

import com.google.common.hash.HashCode;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@Immutable
/* loaded from: classes.dex */
final class t extends d implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final HashFunction f4594b = new t(0);
    public static final HashFunction c = new t(Hashing.f4554a);

    /* renamed from: a, reason: collision with root package name */
    public final int f4595a;

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 128;
    }

    public t(int i) {
        this.f4595a = i;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        int i = this.f4595a;
        a aVar = new a(16);
        long j = i;
        aVar.d = j;
        aVar.e = j;
        aVar.f = 0;
        return aVar;
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.f4595a + ")";
    }

    public boolean equals(@NullableDecl Object obj) {
        return (obj instanceof t) && this.f4595a == ((t) obj).f4595a;
    }

    public int hashCode() {
        return t.class.hashCode() ^ this.f4595a;
    }

    public static final class a extends g {
        public long d;
        public long e;
        public int f;

        @Override // com.google.common.hash.g
        public void process(ByteBuffer byteBuffer) {
            long j = byteBuffer.getLong();
            long j2 = byteBuffer.getLong();
            long jRotateLeft = (Long.rotateLeft(j * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
            this.d = jRotateLeft;
            long jRotateLeft2 = Long.rotateLeft(jRotateLeft, 27);
            long j3 = this.e;
            this.d = ((jRotateLeft2 + j3) * 5) + 1390208809;
            long jRotateLeft3 = (Long.rotateLeft(j2 * 5545529020109919103L, 33) * (-8663945395140668459L)) ^ j3;
            this.e = jRotateLeft3;
            this.e = ((Long.rotateLeft(jRotateLeft3, 31) + this.d) * 5) + 944331445;
            this.f += 16;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.common.hash.g
        public void processRemaining(ByteBuffer byteBuffer) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            long j6;
            long j7;
            this.f = byteBuffer.remaining() + this.f;
            long j8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j = 0;
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 2:
                    j2 = 0;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 3:
                    j3 = 0;
                    j2 = (UnsignedBytes.toInt(byteBuffer.get(2)) << 16) ^ j3;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 4:
                    j4 = 0;
                    j3 = (UnsignedBytes.toInt(byteBuffer.get(3)) << 24) ^ j4;
                    j2 = (UnsignedBytes.toInt(byteBuffer.get(2)) << 16) ^ j3;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 5:
                    j5 = 0;
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = (UnsignedBytes.toInt(byteBuffer.get(3)) << 24) ^ j4;
                    j2 = (UnsignedBytes.toInt(byteBuffer.get(2)) << 16) ^ j3;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 6:
                    j6 = 0;
                    j5 = (UnsignedBytes.toInt(byteBuffer.get(5)) << 40) ^ j6;
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = (UnsignedBytes.toInt(byteBuffer.get(3)) << 24) ^ j4;
                    j2 = (UnsignedBytes.toInt(byteBuffer.get(2)) << 16) ^ j3;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 7:
                    j6 = UnsignedBytes.toInt(byteBuffer.get(6)) << 48;
                    j5 = (UnsignedBytes.toInt(byteBuffer.get(5)) << 40) ^ j6;
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = (UnsignedBytes.toInt(byteBuffer.get(3)) << 24) ^ j4;
                    j2 = (UnsignedBytes.toInt(byteBuffer.get(2)) << 16) ^ j3;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 8:
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 9:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 10:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 11:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 12:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 13:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(12)) << 32;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 14:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(13)) << 40;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(12)) << 32;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                case 15:
                    j8 = UnsignedBytes.toInt(byteBuffer.get(14)) << 48;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(13)) << 40;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(12)) << 32;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.d = (Long.rotateLeft(j7 * (-8663945395140668459L), 31) * 5545529020109919103L) ^ this.d;
                    this.e ^= Long.rotateLeft(j8 * 5545529020109919103L, 33) * (-8663945395140668459L);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }

        @Override // com.google.common.hash.g
        public HashCode makeHash() {
            long j = this.d;
            long j2 = this.f;
            long j3 = j ^ j2;
            long j4 = j2 ^ this.e;
            long j5 = j3 + j4;
            long j6 = j4 + j5;
            long j7 = (j5 ^ (j5 >>> 33)) * (-49064778989728563L);
            long j8 = (j7 ^ (j7 >>> 33)) * (-4265267296055464877L);
            long j9 = (j6 ^ (j6 >>> 33)) * (-49064778989728563L);
            long j10 = (j9 ^ (j9 >>> 33)) * (-4265267296055464877L);
            long j11 = j10 ^ (j10 >>> 33);
            long j12 = (j8 ^ (j8 >>> 33)) + j11;
            this.d = j12;
            this.e = j11 + j12;
            byte[] bArrArray = ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.d).putLong(this.e).array();
            char[] cArr = HashCode.f4550a;
            return new HashCode.a(bArrArray);
        }
    }
}
