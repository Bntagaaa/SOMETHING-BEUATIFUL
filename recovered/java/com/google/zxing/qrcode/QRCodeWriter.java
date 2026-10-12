package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import java.util.Map;

/* loaded from: classes2.dex */
public final class QRCodeWriter implements Writer {
    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.length() == 0) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        ErrorCorrectionLevel errorCorrectionLevel = ErrorCorrectionLevel.L;
        int iIntValue = 4;
        if (map != null) {
            ErrorCorrectionLevel errorCorrectionLevel2 = (ErrorCorrectionLevel) map.get(EncodeHintType.ERROR_CORRECTION);
            if (errorCorrectionLevel2 != null) {
                errorCorrectionLevel = errorCorrectionLevel2;
            }
            Integer num = (Integer) map.get(EncodeHintType.MARGIN);
            if (num != null) {
                iIntValue = num.intValue();
            }
        }
        ByteMatrix matrix = Encoder.encode(str, errorCorrectionLevel, map).getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int i3 = iIntValue << 1;
        int i4 = width + i3;
        int i5 = i3 + height;
        int iMax = Math.max(i, i4);
        int iMax2 = Math.max(i2, i5);
        int iMin = Math.min(iMax / i4, iMax2 / i5);
        int i6 = (iMax - (width * iMin)) / 2;
        int i7 = (iMax2 - (height * iMin)) / 2;
        BitMatrix bitMatrix = new BitMatrix(iMax, iMax2);
        int i8 = 0;
        while (i8 < height) {
            int i9 = i6;
            int i10 = 0;
            while (i10 < width) {
                if (matrix.get(i10, i8) == 1) {
                    bitMatrix.setRegion(i9, i7, iMin, iMin);
                }
                i10++;
                i9 += iMin;
            }
            i8++;
            i7 += iMin;
        }
        return bitMatrix;
    }
}
