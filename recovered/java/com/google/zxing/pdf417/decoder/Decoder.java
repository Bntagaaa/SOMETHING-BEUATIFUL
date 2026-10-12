package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;

/* loaded from: classes2.dex */
public final class Decoder {

    /* renamed from: a, reason: collision with root package name */
    public final ErrorCorrection f5280a = new ErrorCorrection();

    public DecoderResult decode(boolean[][] zArr) throws ChecksumException, FormatException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i2][i]) {
                    bitMatrix.set(i2, i);
                }
            }
        }
        return decode(bitMatrix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:119:0x01b5, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x017d A[LOOP:6: B:111:0x017b->B:112:0x017d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x01b0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.DecoderResult decode(com.google.zxing.common.BitMatrix r22) throws com.google.zxing.ChecksumException, com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.Decoder.decode(com.google.zxing.common.BitMatrix):com.google.zxing.common.DecoderResult");
    }
}
