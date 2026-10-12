package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class GenericMultipleBarcodeReader implements MultipleBarcodeReader {

    /* renamed from: a, reason: collision with root package name */
    public final Reader f5224a;

    public GenericMultipleBarcodeReader(Reader reader) {
        this.f5224a = reader;
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap) throws NotFoundException {
        return decodeMultiple(binaryBitmap, null);
    }

    @Override // com.google.zxing.multi.MultipleBarcodeReader
    public Result[] decodeMultiple(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException {
        ArrayList arrayList = new ArrayList();
        a(binaryBitmap, map, arrayList, 0, 0);
        if (arrayList.isEmpty()) {
            throw NotFoundException.getNotFoundInstance();
        }
        return (Result[]) arrayList.toArray(new Result[arrayList.size()]);
    }

    public final void a(BinaryBitmap binaryBitmap, Map map, ArrayList arrayList, int i, int i2) {
        Result result;
        try {
            Result resultDecode = this.f5224a.decode(binaryBitmap, map);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((Result) it.next()).getText().equals(resultDecode.getText())) {
                    return;
                }
            }
            ResultPoint[] resultPoints = resultDecode.getResultPoints();
            if (resultPoints == null) {
                result = resultDecode;
            } else {
                ResultPoint[] resultPointArr = new ResultPoint[resultPoints.length];
                for (int i3 = 0; i3 < resultPoints.length; i3++) {
                    ResultPoint resultPoint = resultPoints[i3];
                    resultPointArr[i3] = new ResultPoint(resultPoint.getX() + i, resultPoint.getY() + i2);
                }
                result = new Result(resultDecode.getText(), resultDecode.getRawBytes(), resultPointArr, resultDecode.getBarcodeFormat());
            }
            arrayList.add(result);
            ResultPoint[] resultPoints2 = resultDecode.getResultPoints();
            if (resultPoints2 == null || resultPoints2.length == 0) {
                return;
            }
            int width = binaryBitmap.getWidth();
            int height = binaryBitmap.getHeight();
            float f = width;
            float f2 = height;
            float f3 = 0.0f;
            float f4 = 0.0f;
            for (ResultPoint resultPoint2 : resultPoints2) {
                float x = resultPoint2.getX();
                float y = resultPoint2.getY();
                if (x < f) {
                    f = x;
                }
                if (y < f2) {
                    f2 = y;
                }
                if (x > f3) {
                    f3 = x;
                }
                if (y > f4) {
                    f4 = y;
                }
            }
            if (f > 100.0f) {
                a(binaryBitmap.crop(0, 0, (int) f, height), map, arrayList, i, i2);
            }
            if (f2 > 100.0f) {
                a(binaryBitmap.crop(0, 0, width, (int) f2), map, arrayList, i, i2);
            }
            if (f3 < width - 100) {
                int i4 = (int) f3;
                a(binaryBitmap.crop(i4, 0, width - i4, height), map, arrayList, i + i4, i2);
            }
            if (f4 < height - 100) {
                int i5 = (int) f4;
                a(binaryBitmap.crop(0, i5, width, height - i5), map, arrayList, i, i2 + i5);
            }
        } catch (ReaderException unused) {
        }
    }
}
