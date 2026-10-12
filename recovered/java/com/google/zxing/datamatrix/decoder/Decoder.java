package com.google.zxing.datamatrix.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;

/* loaded from: classes.dex */
public final class Decoder {

    /* renamed from: a, reason: collision with root package name */
    public final ReedSolomonDecoder f5195a = new ReedSolomonDecoder(GenericGF.DATA_MATRIX_FIELD_256);

    public DecoderResult decode(boolean[][] zArr) throws ChecksumException, FormatException {
        int length = zArr.length;
        BitMatrix bitMatrix = new BitMatrix(length);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                if (zArr[i][i2]) {
                    bitMatrix.set(i2, i);
                }
            }
        }
        return decode(bitMatrix);
    }

    /* JADX WARN: Code restructure failed: missing block: B:263:0x03ea, code lost:
    
        throw com.google.zxing.FormatException.getFormatInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x04c6, code lost:
    
        if (r1.available() > 0) goto L543;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.zxing.common.DecoderResult decode(com.google.zxing.common.BitMatrix r24) throws com.google.zxing.ChecksumException, com.google.zxing.FormatException {
        /*
            Method dump skipped, instructions count: 1821
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.datamatrix.decoder.Decoder.decode(com.google.zxing.common.BitMatrix):com.google.zxing.common.DecoderResult");
    }
}
