package com.google.zxing.pdf417.encoder;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.lang.reflect.Array;
import java.util.EnumMap;

/* loaded from: classes2.dex */
public final class PDF417Writer implements Writer {
    /* JADX WARN: Removed duplicated region for block: B:136:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0439  */
    @Override // com.google.zxing.Writer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.BitMatrix encode(java.lang.String r25, com.google.zxing.BarcodeFormat r26, int r27, int r28, java.util.Map<com.google.zxing.EncodeHintType, ?> r29) throws com.google.zxing.WriterException {
        /*
            Method dump skipped, instructions count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.encoder.PDF417Writer.encode(java.lang.String, com.google.zxing.BarcodeFormat, int, int, java.util.Map):com.google.zxing.common.BitMatrix");
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Deprecated
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, boolean z, int i, int i2, int i3, int i4, int i5, int i6, Compaction compaction) throws WriterException {
        EnumMap enumMap = new EnumMap(EncodeHintType.class);
        enumMap.put((EnumMap) EncodeHintType.PDF417_COMPACT, (EncodeHintType) Boolean.valueOf(z));
        enumMap.put((EnumMap) EncodeHintType.PDF417_COMPACTION, (EncodeHintType) compaction);
        enumMap.put((EnumMap) EncodeHintType.PDF417_DIMENSIONS, (EncodeHintType) new Dimensions(i3, i4, i5, i6));
        return encode(str, barcodeFormat, i, i2, enumMap);
    }

    public static BitMatrix a(byte[][] bArr) {
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + 60, bArr.length + 60);
        bitMatrix.clear();
        int height = bitMatrix.getHeight() - 30;
        int i = 0;
        while (i < bArr.length) {
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                if (bArr[i][i2] == 1) {
                    bitMatrix.set(i2 + 30, height);
                }
            }
            i++;
            height--;
        }
        return bitMatrix;
    }

    public static byte[][] b(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }
}
