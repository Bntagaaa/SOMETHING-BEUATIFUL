package com.google.common.hash;

import com.google.common.base.Preconditions;

/* loaded from: classes.dex */
final class k extends f {

    /* renamed from: a, reason: collision with root package name */
    public static final HashFunction f4582a = new k();

    public static long a(long j, long j2, long j3) {
        long j4 = (j ^ j2) * j3;
        long j5 = ((j4 ^ (j4 >>> 47)) ^ j2) * j3;
        return (j5 ^ (j5 >>> 47)) * j3;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.hash.m$c, java.lang.Enum] */
    public static void b(byte[] bArr, int i, long j, long j2, long[] jArr) {
        ?? r0 = m.f4583a;
        long longLittleEndian = r0.getLongLittleEndian(bArr, i);
        long longLittleEndian2 = r0.getLongLittleEndian(bArr, i + 8);
        long longLittleEndian3 = r0.getLongLittleEndian(bArr, i + 16);
        long longLittleEndian4 = r0.getLongLittleEndian(bArr, i + 24);
        long j3 = j + longLittleEndian;
        long j4 = longLittleEndian2 + j3 + longLittleEndian3;
        long jRotateRight = Long.rotateRight(j4, 44) + Long.rotateRight(j2 + j3 + longLittleEndian4, 21);
        jArr[0] = j4 + longLittleEndian4;
        jArr[1] = jRotateRight + j3;
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.common.hash.m$c, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.google.common.hash.m$c, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v21, types: [com.google.common.hash.m$c, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v25, types: [com.google.common.hash.m$c, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.hash.m$c, java.lang.Enum] */
    @Override // com.google.common.hash.f, com.google.common.hash.d, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        long j;
        ?? r11;
        long j2;
        long j3;
        long jRotateRight;
        int i3;
        long[] jArr;
        byte[] bArr2 = bArr;
        int i4 = i;
        int i5 = i4 + i2;
        Preconditions.checkPositionIndexes(i4, i5, bArr2.length);
        long j4 = -5435081209227447693L;
        long j5 = -4348849565147123417L;
        long jA = -7286425919675154353L;
        if (i2 <= 32) {
            if (i2 > 16) {
                long j6 = (i2 * 2) - 7286425919675154353L;
                ?? r2 = m.f4583a;
                long longLittleEndian = r2.getLongLittleEndian(bArr2, i4) * (-5435081209227447693L);
                long longLittleEndian2 = r2.getLongLittleEndian(bArr2, i4 + 8);
                long longLittleEndian3 = r2.getLongLittleEndian(bArr2, i5 - 8) * j6;
                jA = a(Long.rotateRight(longLittleEndian3, 30) + Long.rotateRight(longLittleEndian + longLittleEndian2, 43) + (r2.getLongLittleEndian(bArr2, i5 - 16) * (-7286425919675154353L)), Long.rotateRight(longLittleEndian2 - 7286425919675154353L, 18) + longLittleEndian + longLittleEndian3, j6);
            } else if (i2 >= 8) {
                long j7 = (i2 * 2) - 7286425919675154353L;
                ?? r22 = m.f4583a;
                long longLittleEndian4 = r22.getLongLittleEndian(bArr2, i4) - 7286425919675154353L;
                long longLittleEndian5 = r22.getLongLittleEndian(bArr2, i5 - 8);
                jA = a((Long.rotateRight(longLittleEndian5, 37) * j7) + longLittleEndian4, (Long.rotateRight(longLittleEndian4, 25) + longLittleEndian5) * j7, j7);
            } else if (i2 >= 4) {
                jA = a(i2 + ((m.a(i4, bArr2) & 4294967295L) << 3), m.a(i5 - 4, bArr2) & 4294967295L, (i2 * 2) - 7286425919675154353L);
            } else if (i2 > 0) {
                long j8 = (((bArr2[i4] & 255) + ((bArr2[(i2 >> 1) + i4] & 255) << 8)) * (-7286425919675154353L)) ^ ((((bArr2[(i2 - 1) + i4] & 255) << 2) + i2) * (-4348849565147123417L));
                jA = (-7286425919675154353L) * (j8 ^ (j8 >>> 47));
            }
        } else if (i2 <= 64) {
            long j9 = (i2 * 2) - 7286425919675154353L;
            ?? r23 = m.f4583a;
            long longLittleEndian6 = r23.getLongLittleEndian(bArr2, i4) * (-7286425919675154353L);
            long longLittleEndian7 = r23.getLongLittleEndian(bArr2, i4 + 8);
            long longLittleEndian8 = r23.getLongLittleEndian(bArr2, i5 - 8) * j9;
            long jRotateRight2 = Long.rotateRight(longLittleEndian8, 30) + Long.rotateRight(longLittleEndian6 + longLittleEndian7, 43) + (r23.getLongLittleEndian(bArr2, i5 - 16) * (-7286425919675154353L));
            long jA2 = a(jRotateRight2, Long.rotateRight(longLittleEndian7 - 7286425919675154353L, 18) + longLittleEndian6 + longLittleEndian8, j9);
            long longLittleEndian9 = r23.getLongLittleEndian(bArr2, i4 + 16) * j9;
            long longLittleEndian10 = r23.getLongLittleEndian(bArr2, i4 + 24);
            long longLittleEndian11 = (jRotateRight2 + r23.getLongLittleEndian(bArr2, i5 - 32)) * j9;
            jA = a(Long.rotateRight(longLittleEndian11, 30) + Long.rotateRight(longLittleEndian9 + longLittleEndian10, 43) + ((jA2 + r23.getLongLittleEndian(bArr2, i5 - 24)) * j9), Long.rotateRight(longLittleEndian10 + longLittleEndian6, 18) + longLittleEndian9 + longLittleEndian11, j9);
        } else {
            long[] jArr2 = new long[2];
            long[] jArr3 = new long[2];
            long longLittleEndian12 = 95310865018149119L + m.f4583a.getLongLittleEndian(bArr2, i4);
            char c = 1;
            int i6 = i2 - 1;
            int i7 = ((i6 / 64) * 64) + i4;
            int i8 = i6 & 63;
            int i9 = i7 + i8;
            int i10 = i9 - 63;
            long j10 = 1390051526045402406L;
            long longLittleEndian13 = 2480279821605975764L;
            while (true) {
                long j11 = longLittleEndian12 + longLittleEndian13 + jArr2[0];
                j = j4;
                r11 = m.f4583a;
                long jRotateRight3 = Long.rotateRight(j11 + r11.getLongLittleEndian(bArr2, i4 + 8), 37) * j;
                j2 = j5;
                long jRotateRight4 = Long.rotateRight(longLittleEndian13 + jArr2[c] + r11.getLongLittleEndian(bArr2, i4 + 48), 42) * j;
                j3 = jRotateRight3 ^ jArr3[c];
                longLittleEndian13 = jArr2[0] + r11.getLongLittleEndian(bArr2, i4 + 40) + jRotateRight4;
                jRotateRight = Long.rotateRight(j10 + jArr3[0], 33) * j;
                i3 = i8;
                int i11 = i7;
                b(bArr2, i4, jArr2[1] * j, j3 + jArr3[0], jArr2);
                int i12 = i4;
                jArr = jArr2;
                b(bArr2, i12 + 32, jRotateRight + jArr3[1], longLittleEndian13 + r11.getLongLittleEndian(bArr2, i12 + 16), jArr3);
                i4 = i12 + 64;
                if (i4 == i11) {
                    break;
                }
                bArr2 = bArr;
                j10 = j3;
                i7 = i11;
                i8 = i3;
                j4 = j;
                jArr2 = jArr;
                j5 = j2;
                longLittleEndian12 = jRotateRight;
                c = 1;
            }
            long j12 = ((255 & j3) << 1) + j;
            long j13 = jArr3[0] + i3;
            jArr3[0] = j13;
            long j14 = jArr[0] + j13;
            jArr[0] = j14;
            jArr3[0] = jArr3[0] + j14;
            long jRotateRight5 = Long.rotateRight(jRotateRight + longLittleEndian13 + jArr[0] + r11.getLongLittleEndian(bArr2, i9 - 55), 37) * j12;
            long jRotateRight6 = Long.rotateRight(longLittleEndian13 + jArr[1] + r11.getLongLittleEndian(bArr2, i9 - 15), 42) * j12;
            long j15 = jRotateRight5 ^ (jArr3[1] * 9);
            long longLittleEndian14 = (jArr[0] * 9) + r11.getLongLittleEndian(bArr2, i9 - 23) + jRotateRight6;
            long jRotateRight7 = Long.rotateRight(j3 + jArr3[0], 33) * j12;
            b(bArr2, i10, jArr[1] * j12, j15 + jArr3[0], jArr);
            b(bArr2, i9 - 31, jArr3[1] + jRotateRight7, r11.getLongLittleEndian(bArr2, i9 - 47) + longLittleEndian14, jArr3);
            long jA3 = a(jArr[0], jArr3[0], j12);
            long j16 = (longLittleEndian14 >>> 47) ^ longLittleEndian14;
            Long.signum(j16);
            jA = a((j16 * j2) + jA3 + j15, a(jArr[1], jArr3[1], j12) + jRotateRight7, j12);
        }
        return HashCode.fromLong(jA);
    }

    public String toString() {
        return "Hashing.farmHashFingerprint64()";
    }
}
