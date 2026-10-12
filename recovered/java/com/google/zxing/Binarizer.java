package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

/* loaded from: classes.dex */
public abstract class Binarizer {

    /* renamed from: a, reason: collision with root package name */
    public final LuminanceSource f5069a;

    public abstract Binarizer createBinarizer(LuminanceSource luminanceSource);

    public abstract BitMatrix getBlackMatrix() throws NotFoundException;

    public abstract BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException;

    public Binarizer(LuminanceSource luminanceSource) {
        this.f5069a = luminanceSource;
    }

    public final LuminanceSource getLuminanceSource() {
        return this.f5069a;
    }

    public final int getWidth() {
        return this.f5069a.getWidth();
    }

    public final int getHeight() {
        return this.f5069a.getHeight();
    }
}
