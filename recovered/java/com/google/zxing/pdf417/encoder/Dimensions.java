package com.google.zxing.pdf417.encoder;

/* loaded from: classes2.dex */
public final class Dimensions {

    /* renamed from: a, reason: collision with root package name */
    public final int f5298a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5299b;
    public final int c;
    public final int d;

    public Dimensions(int i, int i2, int i3, int i4) {
        this.f5298a = i;
        this.f5299b = i2;
        this.c = i3;
        this.d = i4;
    }

    public int getMinCols() {
        return this.f5298a;
    }

    public int getMaxCols() {
        return this.f5299b;
    }

    public int getMinRows() {
        return this.c;
    }

    public int getMaxRows() {
        return this.d;
    }
}
