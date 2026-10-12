package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

/* loaded from: classes.dex */
public class GlobalHistogramBinarizer extends Binarizer {
    public static final byte[] d = new byte[0];

    /* renamed from: b, reason: collision with root package name */
    public byte[] f5174b;
    public final int[] c;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
        this.f5174b = d;
        this.c = new int[32];
    }

    @Override // com.google.zxing.Binarizer
    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        int[] iArr;
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        if (this.f5174b.length < width) {
            this.f5174b = new byte[width];
        }
        int i2 = 0;
        while (true) {
            iArr = this.c;
            if (i2 >= 32) {
                break;
            }
            iArr[i2] = 0;
            i2++;
        }
        byte[] row = luminanceSource.getRow(i, this.f5174b);
        for (int i3 = 0; i3 < width; i3++) {
            int i4 = (row[i3] & 255) >> 3;
            iArr[i4] = iArr[i4] + 1;
        }
        int iA = a(iArr);
        int i5 = row[0] & 255;
        int i6 = row[1] & 255;
        int i7 = 1;
        while (i7 < width - 1) {
            int i8 = i7 + 1;
            int i9 = row[i8] & 255;
            if (((((i6 << 2) - i5) - i9) >> 1) < iA) {
                bitArray.set(i7);
            }
            i5 = i6;
            i7 = i8;
            i6 = i9;
        }
        return bitArray;
    }

    @Override // com.google.zxing.Binarizer
    public BitMatrix getBlackMatrix() throws NotFoundException {
        int[] iArr;
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        if (this.f5174b.length < width) {
            this.f5174b = new byte[width];
        }
        int i = 0;
        while (true) {
            iArr = this.c;
            if (i >= 32) {
                break;
            }
            iArr[i] = 0;
            i++;
        }
        for (int i2 = 1; i2 < 5; i2++) {
            byte[] row = luminanceSource.getRow((height * i2) / 5, this.f5174b);
            int i3 = (width << 2) / 5;
            for (int i4 = width / 5; i4 < i3; i4++) {
                int i5 = (row[i4] & 255) >> 3;
                iArr[i5] = iArr[i5] + 1;
            }
        }
        int iA = a(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i6 = 0; i6 < height; i6++) {
            int i7 = i6 * width;
            for (int i8 = 0; i8 < width; i8++) {
                if ((matrix[i7 + i8] & 255) < iA) {
                    bitMatrix.set(i8, i6);
                }
            }
        }
        return bitMatrix;
    }

    @Override // com.google.zxing.Binarizer
    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    public static int a(int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            if (i5 > i) {
                i3 = i4;
                i = i5;
            }
            if (i5 > i2) {
                i2 = i5;
            }
        }
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < length; i8++) {
            int i9 = i8 - i3;
            int i10 = iArr[i8] * i9 * i9;
            if (i10 > i7) {
                i6 = i8;
                i7 = i10;
            }
        }
        if (i3 <= i6) {
            int i11 = i3;
            i3 = i6;
            i6 = i11;
        }
        if (i3 - i6 <= (length >> 4)) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = i3 - 1;
        int i13 = i12;
        int i14 = -1;
        while (i12 > i6) {
            int i15 = i12 - i6;
            int i16 = (i2 - iArr[i12]) * (i3 - i12) * i15 * i15;
            if (i16 > i14) {
                i13 = i12;
                i14 = i16;
            }
            i12--;
        }
        return i13 << 3;
    }
}
