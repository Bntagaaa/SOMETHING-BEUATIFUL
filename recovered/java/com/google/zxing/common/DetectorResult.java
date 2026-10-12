package com.google.zxing.common;

import com.google.zxing.ResultPoint;

/* loaded from: classes.dex */
public class DetectorResult {

    /* renamed from: a, reason: collision with root package name */
    public final BitMatrix f5172a;

    /* renamed from: b, reason: collision with root package name */
    public final ResultPoint[] f5173b;

    public DetectorResult(BitMatrix bitMatrix, ResultPoint[] resultPointArr) {
        this.f5172a = bitMatrix;
        this.f5173b = resultPointArr;
    }

    public final BitMatrix getBits() {
        return this.f5172a;
    }

    public final ResultPoint[] getPoints() {
        return this.f5173b;
    }
}
