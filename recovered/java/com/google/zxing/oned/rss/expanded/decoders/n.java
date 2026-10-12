package com.google.zxing.oned.rss.expanded.decoders;

/* loaded from: classes2.dex */
final class n extends p {

    /* renamed from: b, reason: collision with root package name */
    public final String f5271b;
    public final int c;
    public final boolean d;

    public n(int i, String str) {
        super(i);
        this.f5271b = str;
        this.d = false;
        this.c = 0;
    }

    public n(int i, int i2, String str) {
        super(i);
        this.d = true;
        this.c = i2;
        this.f5271b = str;
    }
}
