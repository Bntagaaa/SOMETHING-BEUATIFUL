package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.pdf417.decoder.Decoder;
import com.google.zxing.pdf417.detector.Detector;
import java.util.Map;

/* loaded from: classes2.dex */
public final class PDF417Reader implements Reader {

    /* renamed from: b, reason: collision with root package name */
    public static final ResultPoint[] f5278b = new ResultPoint[0];

    /* renamed from: a, reason: collision with root package name */
    public final Decoder f5279a = new Decoder();

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResultDecode;
        int i;
        Decoder decoder = this.f5279a;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
            int[] topLeftOnBit = blackMatrix.getTopLeftOnBit();
            int[] bottomRightOnBit = blackMatrix.getBottomRightOnBit();
            if (topLeftOnBit == null || bottomRightOnBit == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i2 = topLeftOnBit[0];
            int i3 = topLeftOnBit[1];
            int width = blackMatrix.getWidth();
            while (i2 < width && blackMatrix.get(i2, i3)) {
                i2++;
            }
            if (i2 == width) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i4 = topLeftOnBit[0];
            int i5 = (i2 - i4) >>> 3;
            if (i5 != 0) {
                int i6 = topLeftOnBit[1];
                int i7 = bottomRightOnBit[1];
                int width2 = blackMatrix.getWidth();
                int i8 = 0;
                boolean z = true;
                while (true) {
                    i = width2 - 1;
                    if (i4 >= i || i8 >= 8) {
                        break;
                    }
                    i4++;
                    boolean z2 = blackMatrix.get(i4, i6);
                    if (z != z2) {
                        i8++;
                    }
                    z = z2;
                }
                if (i4 != i) {
                    int i9 = topLeftOnBit[0];
                    int width3 = blackMatrix.getWidth() - 1;
                    while (width3 > i9 && !blackMatrix.get(width3, i6)) {
                        width3--;
                    }
                    int i10 = 0;
                    boolean z3 = true;
                    while (width3 > i9 && i10 < 9) {
                        width3--;
                        boolean z4 = blackMatrix.get(width3, i6);
                        if (z3 != z4) {
                            i10++;
                        }
                        z3 = z4;
                    }
                    if (width3 != i9) {
                        int i11 = ((width3 - i4) + 1) / i5;
                        int i12 = ((i7 - i6) + 1) / i5;
                        if (i11 <= 0 || i12 <= 0) {
                            throw NotFoundException.getNotFoundInstance();
                        }
                        int i13 = i5 >> 1;
                        int i14 = i6 + i13;
                        int i15 = i4 + i13;
                        BitMatrix bitMatrix = new BitMatrix(i11, i12);
                        for (int i16 = 0; i16 < i12; i16++) {
                            int i17 = (i16 * i5) + i14;
                            for (int i18 = 0; i18 < i11; i18++) {
                                if (blackMatrix.get((i18 * i5) + i15, i17)) {
                                    bitMatrix.set(i18, i16);
                                }
                            }
                        }
                        decoderResultDecode = decoder.decode(bitMatrix);
                        points = f5278b;
                    } else {
                        throw NotFoundException.getNotFoundInstance();
                    }
                } else {
                    throw NotFoundException.getNotFoundInstance();
                }
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        } else {
            DetectorResult detectorResultDetect = new Detector(binaryBitmap).detect();
            DecoderResult decoderResultDecode2 = decoder.decode(detectorResultDetect.getBits());
            points = detectorResultDetect.getPoints();
            decoderResultDecode = decoderResultDecode2;
        }
        return new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.PDF_417);
    }
}
