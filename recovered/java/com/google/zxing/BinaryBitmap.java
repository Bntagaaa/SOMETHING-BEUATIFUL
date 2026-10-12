package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
public final class BinaryBitmap {

    /* renamed from: a, reason: collision with root package name */
    public final Binarizer f5070a;

    /* renamed from: b, reason: collision with root package name */
    public BitMatrix f5071b;

    public BinaryBitmap(Binarizer binarizer) {
        if (binarizer == null) {
            throw new IllegalArgumentException("Binarizer must be non-null.");
        }
        this.f5070a = binarizer;
    }

    public int getWidth() {
        return this.f5070a.getWidth();
    }

    public int getHeight() {
        return this.f5070a.getHeight();
    }

    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        return this.f5070a.getBlackRow(i, bitArray);
    }

    public BitMatrix getBlackMatrix() throws NotFoundException {
        if (this.f5071b == null) {
            this.f5071b = this.f5070a.getBlackMatrix();
        }
        return this.f5071b;
    }

    public boolean isCropSupported() {
        return this.f5070a.getLuminanceSource().isCropSupported();
    }

    public BinaryBitmap crop(int i, int i2, int i3, int i4) {
        Binarizer binarizer = this.f5070a;
        return new BinaryBitmap(binarizer.createBinarizer(binarizer.getLuminanceSource().crop(i, i2, i3, i4)));
    }

    public boolean isRotateSupported() {
        return this.f5070a.getLuminanceSource().isRotateSupported();
    }

    public BinaryBitmap rotateCounterClockwise() {
        Binarizer binarizer = this.f5070a;
        return new BinaryBitmap(binarizer.createBinarizer(binarizer.getLuminanceSource().rotateCounterClockwise()));
    }

    public BinaryBitmap rotateCounterClockwise45() {
        Binarizer binarizer = this.f5070a;
        return new BinaryBitmap(binarizer.createBinarizer(binarizer.getLuminanceSource().rotateCounterClockwise45()));
    }
}
