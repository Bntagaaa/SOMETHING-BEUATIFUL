package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.datamatrix.decoder.Decoder;
import com.google.zxing.datamatrix.detector.Detector;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class DataMatrixReader implements Reader {

    /* renamed from: b, reason: collision with root package name */
    public static final ResultPoint[] f5193b = new ResultPoint[0];

    /* renamed from: a, reason: collision with root package name */
    public final Decoder f5194a = new Decoder();

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
        Decoder decoder = this.f5194a;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
            int[] topLeftOnBit = blackMatrix.getTopLeftOnBit();
            int[] bottomRightOnBit = blackMatrix.getBottomRightOnBit();
            if (topLeftOnBit == null || bottomRightOnBit == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            int width = blackMatrix.getWidth();
            int i = topLeftOnBit[0];
            int i2 = topLeftOnBit[1];
            while (i < width && blackMatrix.get(i, i2)) {
                i++;
            }
            if (i == width) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i3 = topLeftOnBit[0];
            int i4 = i - i3;
            if (i4 != 0) {
                int i5 = topLeftOnBit[1];
                int i6 = bottomRightOnBit[1];
                int i7 = ((bottomRightOnBit[0] - i3) + 1) / i4;
                int i8 = ((i6 - i5) + 1) / i4;
                if (i7 <= 0 || i8 <= 0) {
                    throw NotFoundException.getNotFoundInstance();
                }
                int i9 = i4 >> 1;
                int i10 = i5 + i9;
                int i11 = i3 + i9;
                BitMatrix bitMatrix = new BitMatrix(i7, i8);
                for (int i12 = 0; i12 < i8; i12++) {
                    int i13 = (i12 * i4) + i10;
                    for (int i14 = 0; i14 < i7; i14++) {
                        if (blackMatrix.get((i14 * i4) + i11, i13)) {
                            bitMatrix.set(i14, i12);
                        }
                    }
                }
                decoderResultDecode = decoder.decode(bitMatrix);
                points = f5193b;
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        } else {
            DetectorResult detectorResultDetect = new Detector(binaryBitmap.getBlackMatrix()).detect();
            DecoderResult decoderResultDecode2 = decoder.decode(detectorResultDetect.getBits());
            points = detectorResultDetect.getPoints();
            decoderResultDecode = decoderResultDecode2;
        }
        Result result = new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.DATA_MATRIX);
        List<byte[]> byteSegments = decoderResultDecode.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decoderResultDecode.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        return result;
    }
}
