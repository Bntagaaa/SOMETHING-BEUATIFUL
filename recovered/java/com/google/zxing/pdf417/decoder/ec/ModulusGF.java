package com.google.zxing.pdf417.decoder.ec;

/* loaded from: classes2.dex */
public final class ModulusGF {
    public static final ModulusGF PDF417_GF = new ModulusGF(929, 3);

    /* renamed from: a, reason: collision with root package name */
    public final int[] f5291a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5292b;
    public final a c;
    public final a d;
    public final int e;

    public ModulusGF(int i, int i2) {
        this.e = i;
        this.f5291a = new int[i];
        this.f5292b = new int[i];
        int i3 = 1;
        for (int i4 = 0; i4 < i; i4++) {
            this.f5291a[i4] = i3;
            i3 = (i3 * i2) % i;
        }
        for (int i5 = 0; i5 < i - 1; i5++) {
            this.f5292b[this.f5291a[i5]] = i5;
        }
        this.c = new a(this, new int[]{0});
        this.d = new a(this, new int[]{1});
    }

    public final int a(int i) {
        if (i == 0) {
            throw new ArithmeticException();
        }
        return this.f5291a[(this.e - this.f5292b[i]) - 1];
    }

    public final int b(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f5292b;
        return this.f5291a[(iArr[i] + iArr[i2]) % (this.e - 1)];
    }
}
