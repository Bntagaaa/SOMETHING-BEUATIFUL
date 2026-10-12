package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes2.dex */
final class o extends p {

    /* renamed from: b, reason: collision with root package name */
    public final int f5272b;
    public final int c;

    public o(int i, int i2, int i3) {
        super(i);
        this.f5272b = i2;
        this.c = i3;
        if (i2 < 0 || i2 > 10) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i2, "Invalid firstDigit: "));
        }
        if (i3 < 0 || i3 > 10) {
            throw new IllegalArgumentException(_COROUTINE.a.d(i3, "Invalid secondDigit: "));
        }
    }
}
