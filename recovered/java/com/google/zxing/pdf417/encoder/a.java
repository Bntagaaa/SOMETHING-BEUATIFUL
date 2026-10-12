package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final b[] f5300a;

    /* renamed from: b, reason: collision with root package name */
    public int f5301b;
    public final int c;
    public final int d;

    public a(int i, int i2) {
        int i3 = i + 2;
        this.f5300a = new b[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            this.f5300a[i4] = new b(((i2 + 4) * 17) + 1);
        }
        this.d = i2 * 17;
        this.c = i3;
        this.f5301b = 0;
    }

    public final b a() {
        return this.f5300a[this.f5301b];
    }

    public final byte[][] b(int i, int i2) {
        int i3 = this.c;
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i3 * i2, this.d * i);
        int i4 = i3 * i2;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = (i4 - i5) - 1;
            byte[] bArr2 = this.f5300a[i5 / i2].f5302a;
            int length = bArr2.length * i;
            byte[] bArr3 = new byte[length];
            for (int i7 = 0; i7 < length; i7++) {
                bArr3[i7] = bArr2[i7 / i];
            }
            bArr[i6] = bArr3;
        }
        return bArr;
    }
}
