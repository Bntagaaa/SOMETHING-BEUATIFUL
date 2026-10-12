package com.google.zxing.oned;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.FullScreenVideoUtil;

/* loaded from: classes2.dex */
public final class Code39Reader extends OneDReader {
    public static final char[] c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
    public static final int[] d;
    public static final int e;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5230a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5231b;

    static {
        int[] iArr = {52, 289, 97, 352, 49, ErrorMessages.ERROR_TWITTER_UNABLE_TO_GET_ACCESS_TOKEN, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_STOP, 448, 145, 400, 208, 133, 388, FullScreenVideoUtil.FULLSCREEN_VIDEO_ACTION_DURATION, 148, 168, 162, 138, 42};
        d = iArr;
        e = iArr[39];
    }

    public Code39Reader() {
        this.f5230a = false;
        this.f5231b = false;
    }

    public Code39Reader(boolean z) {
        this.f5230a = z;
        this.f5231b = false;
    }

    public Code39Reader(boolean z, boolean z2) {
        this.f5230a = z;
        this.f5231b = z2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01a0, code lost:
    
        return new com.google.zxing.Result(r1, null, r4, com.google.zxing.BarcodeFormat.CODE_39);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01a5, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
    
        r11 = com.google.zxing.oned.Code39Reader.c;
        r12 = r11[r12];
        r10.append(r12);
        r14 = r8;
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0076, code lost:
    
        if (r13 >= 9) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0078, code lost:
    
        r14 = r14 + r6[r13];
        r13 = r13 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
    
        r13 = r19.getNextSet(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0083, code lost:
    
        if (r12 != '*') goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0085, code lost:
    
        r10.setLength(r10.length() - r4);
        r1 = 0;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008f, code lost:
    
        if (r1 >= 9) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0091, code lost:
    
        r12 = r12 + r6[r1];
        r1 = r1 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0096, code lost:
    
        r1 = (r13 - r8) - r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0099, code lost:
    
        if (r13 == r9) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x009c, code lost:
    
        if ((r1 >> r4) < r12) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a3, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a8, code lost:
    
        if (r17.f5230a == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00aa, code lost:
    
        r1 = r10.length() - r4;
        r6 = 0;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b1, code lost:
    
        if (r6 >= r1) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b3, code lost:
    
        r9 = r9 + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(r10.charAt(r6));
        r6 = r6 + r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c7, code lost:
    
        if (r10.charAt(r1) != r11[r9 % 43]) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c9, code lost:
    
        r10.setLength(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d1, code lost:
    
        throw com.google.zxing.ChecksumException.getChecksumInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d6, code lost:
    
        if (r10.length() == 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00da, code lost:
    
        if (r17.f5231b == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dc, code lost:
    
        r1 = r10.length();
        r6 = new java.lang.StringBuilder(r1);
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e6, code lost:
    
        if (r9 >= r1) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e8, code lost:
    
        r11 = r10.charAt(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f2, code lost:
    
        if (r11 == '+') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f4, code lost:
    
        if (r11 == '$') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f6, code lost:
    
        if (r11 == '%') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f8, code lost:
    
        if (r11 != '/') goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fb, code lost:
    
        r6.append(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0103, code lost:
    
        r9 = r9 + r4;
        r4 = r10.charAt(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0110, code lost:
    
        if (r11 == '$') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0112, code lost:
    
        if (r11 == '%') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0114, code lost:
    
        if (r11 == '+') goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0116, code lost:
    
        if (r11 == '/') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0118, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x011a, code lost:
    
        if (r4 < 'A') goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x011e, code lost:
    
        if (r4 > 'O') goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0120, code lost:
    
        r4 = r4 - ' ';
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0122, code lost:
    
        r2 = (char) r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0124, code lost:
    
        if (r4 != 'Z') goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0126, code lost:
    
        r2 = ':';
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x012d, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x012e, code lost:
    
        if (r4 < 'A') goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0130, code lost:
    
        if (r4 > 'Z') goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0132, code lost:
    
        r4 = r4 + ' ';
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0139, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x013a, code lost:
    
        if (r4 < 'A') goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x013e, code lost:
    
        if (r4 > 'E') goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0140, code lost:
    
        r4 = r4 - '&';
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0145, code lost:
    
        if (r4 < 'F') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0149, code lost:
    
        if (r4 > 'W') goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x014b, code lost:
    
        r4 = r4 - 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0152, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0153, code lost:
    
        if (r4 < 'A') goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0155, code lost:
    
        if (r4 > 'Z') goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0157, code lost:
    
        r4 = r4 - '@';
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x015a, code lost:
    
        r6.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x015d, code lost:
    
        r9 = r9 + 1;
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0166, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0167, code lost:
    
        r20 = 1;
        r16 = 0;
        r1 = r6.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0170, code lost:
    
        r20 = 1;
        r16 = 0;
        r1 = r10.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0178, code lost:
    
        r6 = r18;
        r5 = new com.google.zxing.ResultPoint((r7[r20] + r7[r16]) / 2.0f, r6);
        r2 = new com.google.zxing.ResultPoint((r13 + r8) / 2.0f, r6);
        r4 = new com.google.zxing.ResultPoint[2];
        r4[r16] = r5;
        r4[r20] = r2;
     */
    @Override // com.google.zxing.oned.OneDReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.Result decodeRow(int r18, com.google.zxing.common.BitArray r19, java.util.Map<com.google.zxing.DecodeHintType, ?> r20) throws com.google.zxing.NotFoundException, com.google.zxing.ChecksumException, com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 495
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code39Reader.decodeRow(int, com.google.zxing.common.BitArray, java.util.Map):com.google.zxing.Result");
    }

    public static int b(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        while (true) {
            int i2 = Integer.MAX_VALUE;
            for (int i3 : iArr) {
                if (i3 < i2 && i3 > i) {
                    i2 = i3;
                }
            }
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < length; i7++) {
                int i8 = iArr[i7];
                if (i8 > i2) {
                    i5 |= 1 << ((length - 1) - i7);
                    i4++;
                    i6 += i8;
                }
            }
            if (i4 == 3) {
                for (int i9 = 0; i9 < length && i4 > 0; i9++) {
                    int i10 = iArr[i9];
                    if (i10 > i2) {
                        i4--;
                        if ((i10 << 1) >= i6) {
                            return -1;
                        }
                    }
                }
                return i5;
            }
            if (i4 <= 3) {
                return -1;
            }
            i = i2;
        }
    }
}
