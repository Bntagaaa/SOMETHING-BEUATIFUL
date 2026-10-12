package com.google.zxing.oned.rss;

import com.google.zxing.ResultPoint;

/* loaded from: classes2.dex */
public final class FinderPattern {

    /* renamed from: a, reason: collision with root package name */
    public final int f5256a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5257b;
    public final ResultPoint[] c;

    public FinderPattern(int i, int[] iArr, int i2, int i3, int i4) {
        this.f5256a = i;
        this.f5257b = iArr;
        float f = i2;
        float f2 = i4;
        this.c = new ResultPoint[]{new ResultPoint(f, f2), new ResultPoint(i3, f2)};
    }

    public int getValue() {
        return this.f5256a;
    }

    public int[] getStartEnd() {
        return this.f5257b;
    }

    public ResultPoint[] getResultPoints() {
        return this.c;
    }
}
