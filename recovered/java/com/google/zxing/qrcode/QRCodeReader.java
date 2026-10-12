package com.google.zxing.qrcode;

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
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class QRCodeReader implements Reader {

    /* renamed from: b, reason: collision with root package name */
    public static final ResultPoint[] f5310b = new ResultPoint[0];

    /* renamed from: a, reason: collision with root package name */
    public final Decoder f5311a = new Decoder();

    @Override // com.google.zxing.Reader
    public void reset() {
    }

    public Decoder getDecoder() {
        return this.f5311a;
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    @Override // com.google.zxing.Reader
    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        ResultPoint[] points;
        DecoderResult decoderResultDecode;
        Decoder decoder = this.f5311a;
        if (map != null && map.containsKey(DecodeHintType.PURE_BARCODE)) {
            BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
            int[] topLeftOnBit = blackMatrix.getTopLeftOnBit();
            int[] bottomRightOnBit = blackMatrix.getBottomRightOnBit();
            if (topLeftOnBit == null || bottomRightOnBit == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            int height = blackMatrix.getHeight();
            int width = blackMatrix.getWidth();
            int i = topLeftOnBit[0];
            int i2 = topLeftOnBit[1];
            boolean z = true;
            int i3 = 0;
            while (i < width && i2 < height) {
                if (z != blackMatrix.get(i, i2)) {
                    i3++;
                    if (i3 == 5) {
                        break;
                    }
                    z = !z;
                }
                i++;
                i2++;
            }
            if (i == width || i2 == height) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i4 = topLeftOnBit[0];
            float f = (i - i4) / 7.0f;
            int i5 = topLeftOnBit[1];
            int i6 = bottomRightOnBit[1];
            int i7 = bottomRightOnBit[0];
            int i8 = i6 - i5;
            if (i8 != i7 - i4) {
                i7 = i4 + i8;
            }
            int iRound = Math.round(((i7 - i4) + 1) / f);
            int iRound2 = Math.round((i8 + 1) / f);
            if (iRound <= 0 || iRound2 <= 0) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (iRound2 != iRound) {
                throw NotFoundException.getNotFoundInstance();
            }
            int i9 = (int) (f / 2.0f);
            int i10 = i5 + i9;
            int i11 = i4 + i9;
            BitMatrix bitMatrix = new BitMatrix(iRound, iRound2);
            for (int i12 = 0; i12 < iRound2; i12++) {
                int i13 = ((int) (i12 * f)) + i10;
                for (int i14 = 0; i14 < iRound; i14++) {
                    if (blackMatrix.get(((int) (i14 * f)) + i11, i13)) {
                        bitMatrix.set(i14, i12);
                    }
                }
            }
            decoderResultDecode = decoder.decode(bitMatrix, map);
            points = f5310b;
        } else {
            DetectorResult detectorResultDetect = new Detector(binaryBitmap.getBlackMatrix()).detect(map);
            DecoderResult decoderResultDecode2 = decoder.decode(detectorResultDetect.getBits(), map);
            points = detectorResultDetect.getPoints();
            decoderResultDecode = decoderResultDecode2;
        }
        Result result = new Result(decoderResultDecode.getText(), decoderResultDecode.getRawBytes(), points, BarcodeFormat.QR_CODE);
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
