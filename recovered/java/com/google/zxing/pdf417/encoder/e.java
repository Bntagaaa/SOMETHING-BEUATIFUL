package com.google.zxing.pdf417.encoder;

import com.google.appinventor.components.runtime.util.Ev3Constants;
import java.math.BigInteger;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class e {
    public static final byte[] c;

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5308a = {Ev3Constants.Opcode.MOVE8_8, Ev3Constants.Opcode.MOVE8_16, Ev3Constants.Opcode.MOVE8_32, Ev3Constants.Opcode.MOVE8_F, Ev3Constants.Opcode.MOVE16_8, Ev3Constants.Opcode.MOVE16_16, Ev3Constants.Opcode.MOVE16_32, Ev3Constants.Opcode.MOVE16_F, Ev3Constants.Opcode.MOVE32_8, Ev3Constants.Opcode.MOVE32_16, Ev3Constants.Opcode.AND32, 13, 9, Ev3Constants.Opcode.RL8, Ev3Constants.Opcode.MOVE32_32, 35, Ev3Constants.Opcode.RL16, Ev3Constants.Opcode.RL32, Ev3Constants.Opcode.AND8, Ev3Constants.Opcode.INIT_BYTES, 43, Ev3Constants.Opcode.AND16, Ev3Constants.Opcode.XOR32, 61, Ev3Constants.Opcode.SELECT32, 0, 32, 0, 0, 0};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f5309b = {Ev3Constants.Opcode.MOVE32_F, Ev3Constants.Opcode.MOVEF_8, Ev3Constants.Opcode.MOVEF_32, 64, Ev3Constants.Opcode.CP_GTEQF, Ev3Constants.Opcode.SELECT8, Ev3Constants.Opcode.SELECT16, Ev3Constants.Opcode.SELECTF, Ev3Constants.Opcode.SYSTEM, Ev3Constants.Opcode.MEMORY_WRITE, Ev3Constants.Opcode.OR16, 13, 9, Ev3Constants.Opcode.RL8, Ev3Constants.Opcode.MOVE32_32, 10, Ev3Constants.Opcode.RL16, Ev3Constants.Opcode.RL32, Ev3Constants.Opcode.AND8, Ev3Constants.Opcode.INIT_BYTES, Ev3Constants.Opcode.OR32, Ev3Constants.Opcode.INFO, Ev3Constants.Opcode.XOR32, Ev3Constants.Opcode.XOR8, Ev3Constants.Opcode.XOR16, 63, Ev3Constants.Opcode.JR_GTEQF, Ev3Constants.Opcode.STRINGS, 39, 0};
    public static final byte[] d = new byte[128];

    public static boolean d(char c2) {
        if (c2 != ' ') {
            return c2 >= 'a' && c2 <= 'z';
        }
        return true;
    }

    public static boolean e(char c2) {
        if (c2 != ' ') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }

    static {
        byte b2 = 0;
        byte[] bArr = new byte[128];
        c = bArr;
        Arrays.fill(bArr, (byte) -1);
        byte b3 = 0;
        while (true) {
            byte[] bArr2 = f5308a;
            if (b3 >= bArr2.length) {
                break;
            }
            byte b4 = bArr2[b3];
            if (b4 > 0) {
                c[b4] = b3;
            }
            b3 = (byte) (b3 + 1);
        }
        Arrays.fill(d, (byte) -1);
        while (true) {
            byte[] bArr3 = f5309b;
            if (b2 >= bArr3.length) {
                return;
            }
            byte b5 = bArr3[b2];
            if (b5 > 0) {
                d[b5] = b2;
            }
            b2 = (byte) (b2 + 1);
        }
    }

    private e() {
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00e4 A[EDGE_INSN: B:76:0x00e4->B:57:0x00e4 BREAK  A[LOOP:0: B:3:0x000e->B:93:0x000e], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x000e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(java.lang.String r17, int r18, int r19, java.lang.StringBuilder r20, int r21) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.e.c(java.lang.String, int, int, java.lang.StringBuilder, int):int");
    }

    public static void a(byte[] bArr, int i, int i2, int i3, StringBuilder sb) {
        int i4;
        if (i2 == 1 && i3 == 0) {
            sb.append((char) 913);
        }
        if (i2 >= 6) {
            sb.append((char) 924);
            char[] cArr = new char[5];
            i4 = i;
            while ((i + i2) - i4 >= 6) {
                long j = 0;
                for (int i5 = 0; i5 < 6; i5++) {
                    j = (j << 8) + (bArr[i4 + i5] & 255);
                }
                for (int i6 = 0; i6 < 5; i6++) {
                    cArr[i6] = (char) (j % 900);
                    j /= 900;
                }
                for (int i7 = 4; i7 >= 0; i7--) {
                    sb.append(cArr[i7]);
                }
                i4 += 6;
            }
        } else {
            i4 = i;
        }
        int i8 = i + i2;
        if (i4 < i8) {
            sb.append((char) 901);
        }
        while (i4 < i8) {
            sb.append((char) (bArr[i4] & 255));
            i4++;
        }
    }

    public static void b(int i, int i2, String str, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder((i2 / 3) + 1);
        BigInteger bigIntegerValueOf = BigInteger.valueOf(900L);
        BigInteger bigIntegerValueOf2 = BigInteger.valueOf(0L);
        int i3 = 0;
        while (i3 < i2 - 1) {
            sb2.setLength(0);
            int iMin = Math.min(44, i2 - i3);
            StringBuilder sb3 = new StringBuilder("1");
            int i4 = i + i3;
            sb3.append(str.substring(i4, i4 + iMin));
            BigInteger bigInteger = new BigInteger(sb3.toString());
            do {
                sb2.append((char) bigInteger.mod(bigIntegerValueOf).intValue());
                bigInteger = bigInteger.divide(bigIntegerValueOf);
            } while (!bigInteger.equals(bigIntegerValueOf2));
            for (int length = sb2.length() - 1; length >= 0; length--) {
                sb.append(sb2.charAt(length));
            }
            i3 += iMin;
        }
    }
}
