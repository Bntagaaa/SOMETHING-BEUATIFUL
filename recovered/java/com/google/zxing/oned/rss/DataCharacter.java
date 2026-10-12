package com.google.zxing.oned.rss;

/* loaded from: classes2.dex */
public class DataCharacter {

    /* renamed from: a, reason: collision with root package name */
    public final int f5254a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5255b;

    public DataCharacter(int i, int i2) {
        this.f5254a = i;
        this.f5255b = i2;
    }

    public final int getValue() {
        return this.f5254a;
    }

    public final int getChecksumPortion() {
        return this.f5255b;
    }
}
