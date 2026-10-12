package com.google.zxing.oned;

import gnu.bytecode.Access;

/* loaded from: classes2.dex */
public final class CodaBarReader extends OneDReader {
    public static final char[] d = "0123456789-$:/.+ABCD".toCharArray();
    public static final int[] e = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    public static final char[] f = {'A', 'B', Access.CLASS_CONTEXT, 'D'};

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f5225a = new StringBuilder(20);

    /* renamed from: b, reason: collision with root package name */
    public int[] f5226b = new int[80];
    public int c = 0;

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0185, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    @Override // com.google.zxing.oned.OneDReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.Result decodeRow(int r25, com.google.zxing.common.BitArray r26, java.util.Map<com.google.zxing.DecodeHintType, ?> r27) throws com.google.zxing.NotFoundException {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.CodaBarReader.decodeRow(int, com.google.zxing.common.BitArray, java.util.Map):com.google.zxing.Result");
    }

    public static boolean b(char[] cArr, char c) {
        if (cArr != null) {
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int c(int i) {
        int i2 = i + 7;
        if (i2 >= this.c) {
            return -1;
        }
        int[] iArr = new int[2];
        int i3 = 0;
        iArr[0] = 0;
        iArr[1] = 0;
        int[] iArr2 = new int[2];
        iArr2[0] = Integer.MAX_VALUE;
        iArr2[1] = Integer.MAX_VALUE;
        int[] iArr3 = new int[2];
        iArr3[0] = 0;
        iArr3[1] = 0;
        for (int i4 = 0; i4 < 2; i4++) {
            for (int i5 = i + i4; i5 < i2; i5 += 2) {
                int[] iArr4 = this.f5226b;
                int i6 = iArr4[i5];
                if (i6 < iArr2[i4]) {
                    iArr2[i4] = i6;
                }
                int i7 = iArr4[i5];
                if (i7 > iArr[i4]) {
                    iArr[i4] = i7;
                }
            }
            iArr3[i4] = (iArr2[i4] + iArr[i4]) / 2;
        }
        int i8 = 128;
        int i9 = 0;
        for (int i10 = 0; i10 < 7; i10++) {
            i8 >>= 1;
            if (this.f5226b[i + i10] > iArr3[i10 & 1]) {
                i9 |= i8;
            }
        }
        while (true) {
            int[] iArr5 = e;
            if (i3 >= iArr5.length) {
                return -1;
            }
            if (iArr5[i3] == i9) {
                return i3;
            }
            i3++;
        }
    }
}
