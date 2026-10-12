package com.google.zxing.qrcode.detector;

/* loaded from: classes2.dex */
public final class FinderPatternInfo {

    /* renamed from: a, reason: collision with root package name */
    public final FinderPattern f5337a;

    /* renamed from: b, reason: collision with root package name */
    public final FinderPattern f5338b;
    public final FinderPattern c;

    public FinderPatternInfo(FinderPattern[] finderPatternArr) {
        this.f5337a = finderPatternArr[0];
        this.f5338b = finderPatternArr[1];
        this.c = finderPatternArr[2];
    }

    public FinderPattern getBottomLeft() {
        return this.f5337a;
    }

    public FinderPattern getTopLeft() {
        return this.f5338b;
    }

    public FinderPattern getTopRight() {
        return this.c;
    }
}
