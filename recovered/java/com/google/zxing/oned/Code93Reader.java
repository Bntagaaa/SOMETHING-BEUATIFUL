package com.google.zxing.oned;

import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.zxing.ChecksumException;
import me.aemo.specialkeyboard.addon.KeyboardChangeListener;

/* loaded from: classes2.dex */
public final class Code93Reader extends OneDReader {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f5232a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f5233b;
    public static final int c;

    static {
        int[] iArr = {276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, ErrorMessages.ERROR_NXT_INVALID_MOTOR_MODE, ErrorMessages.ERROR_NXT_CANNOT_DETECT_LIGHT, 404, ErrorMessages.ERROR_NXT_NOT_CONNECTED_TO_ROBOT, 394, 360, 356, 354, ErrorMessages.ERROR_TWITTER_REQUEST_FOLLOWERS_FAILED, 282, 344, 332, 326, KeyboardChangeListener.MIN_KEYBOARD_HEIGHT, 278, 436, 434, 428, ErrorMessages.ERROR_NXT_INVALID_SENSOR_TYPE, ErrorMessages.ERROR_NXT_INVALID_FILE_NAME, ErrorMessages.ERROR_NXT_MESSAGE_TOO_LONG, 364, 358, ErrorMessages.ERROR_TWITTER_DIRECT_MESSAGE_FAILED, ErrorMessages.ERROR_TWITTER_SEARCH_FAILED, ErrorMessages.ERROR_TWITTER_BLANK_CONSUMER_KEY_OR_SECRET, 468, 466, 458, 366, 374, 430, 294, 474, 470, ErrorMessages.ERROR_TWITTER_SET_STATUS_FAILED, 350};
        f5233b = iArr;
        c = iArr[47];
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005a, code lost:
    
        r11 = com.google.zxing.oned.Code93Reader.f5232a[r12];
        r8.append(r11);
        r13 = r5;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0063, code lost:
    
        if (r12 >= 6) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0065, code lost:
    
        r13 = r13 + r10[r12];
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
    
        r12 = r17.getNextSet(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0070, code lost:
    
        if (r11 != '*') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0072, code lost:
    
        r8.deleteCharAt(r8.length() - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007a, code lost:
    
        if (r12 == r7) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0080, code lost:
    
        if (r17.get(r12) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0086, code lost:
    
        if (r8.length() < 2) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0088, code lost:
    
        r0 = r8.length();
        b(r8, r0 - 2, 20);
        b(r8, r0 - 1, 15);
        r8.setLength(r8.length() - 2);
        r0 = r8.length();
        r6 = new java.lang.StringBuilder(r0);
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00a9, code lost:
    
        if (r7 >= r0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ab, code lost:
    
        r9 = r8.charAt(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
    
        if (r9 < 'a') goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b5, code lost:
    
        if (r9 > 'd') goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b9, code lost:
    
        if (r7 >= (r0 - 1)) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00bb, code lost:
    
        r7 = r7 + 1;
        r10 = r8.charAt(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c4, code lost:
    
        switch(r9) {
            case 97: goto L66;
            case 98: goto L55;
            case 99: goto L47;
            case 100: goto L41;
            default: goto L40;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00c7, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c9, code lost:
    
        if (r10 < 'A') goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00cb, code lost:
    
        if (r10 > 'Z') goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cd, code lost:
    
        r10 = r10 + ' ';
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cf, code lost:
    
        r9 = (char) r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d5, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d6, code lost:
    
        if (r10 < 'A') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00da, code lost:
    
        if (r10 > 'O') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dc, code lost:
    
        r10 = r10 - ' ';
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        if (r10 != 'Z') goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e1, code lost:
    
        r9 = ':';
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e8, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e9, code lost:
    
        if (r10 < 'A') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00ed, code lost:
    
        if (r10 > 'E') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ef, code lost:
    
        r10 = r10 - '&';
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f4, code lost:
    
        if (r10 < 'F') goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00f8, code lost:
    
        if (r10 > 'W') goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00fa, code lost:
    
        r10 = r10 - 11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0101, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0102, code lost:
    
        if (r10 < 'A') goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0104, code lost:
    
        if (r10 > 'Z') goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0106, code lost:
    
        r10 = r10 - '@';
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0109, code lost:
    
        r6.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0111, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0116, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0117, code lost:
    
        r6.append(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x011a, code lost:
    
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011c, code lost:
    
        r8 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0147, code lost:
    
        return new com.google.zxing.Result(r6.toString(), null, new com.google.zxing.ResultPoint[]{new com.google.zxing.ResultPoint((r4[1] + r4[0]) / 2.0f, r8), new com.google.zxing.ResultPoint((r12 + r5) / 2.0f, r8)}, com.google.zxing.BarcodeFormat.CODE_93);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x014c, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0151, code lost:
    
        throw com.google.zxing.NotFoundException.getNotFoundInstance();
     */
    @Override // com.google.zxing.oned.OneDReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.Result decodeRow(int r16, com.google.zxing.common.BitArray r17, java.util.Map<com.google.zxing.DecodeHintType, ?> r18) throws com.google.zxing.NotFoundException, com.google.zxing.ChecksumException, com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code93Reader.decodeRow(int, com.google.zxing.common.BitArray, java.util.Map):com.google.zxing.Result");
    }

    public static int c(int[] iArr) {
        int length = iArr.length;
        int i = 0;
        for (int i2 : iArr) {
            i += i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = ((iArr[i4] << 8) * 9) / i;
            int i6 = i5 >> 8;
            if ((i5 & 255) > 127) {
                i6++;
            }
            if (i6 < 1 || i6 > 4) {
                return -1;
            }
            if ((i4 & 1) == 0) {
                for (int i7 = 0; i7 < i6; i7++) {
                    i3 = (i3 << 1) | 1;
                }
            } else {
                i3 <<= i6;
            }
        }
        return i3;
    }

    public static void b(StringBuilder sb, int i, int i2) throws ChecksumException {
        int iIndexOf = 0;
        int i3 = 1;
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iIndexOf += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(sb.charAt(i4)) * i3;
            i3++;
            if (i3 > i2) {
                i3 = 1;
            }
        }
        if (sb.charAt(i) != f5232a[iIndexOf % 47]) {
            throw ChecksumException.getChecksumInstance();
        }
    }
}
