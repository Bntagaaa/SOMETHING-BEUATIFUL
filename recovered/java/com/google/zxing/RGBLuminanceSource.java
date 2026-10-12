package com.google.zxing;

import _COROUTINE.a;

/* loaded from: classes.dex */
public final class RGBLuminanceSource extends LuminanceSource {
    public final byte[] c;
    public final int d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5083g;

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    public RGBLuminanceSource(int i, int i2, int[] iArr) {
        super(i, i2);
        this.d = i;
        this.e = i2;
        this.f = 0;
        this.f5083g = 0;
        this.c = new byte[i * i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * i;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i4 + i5;
                int i7 = iArr[i6];
                int i8 = (i7 >> 16) & 255;
                int i9 = (i7 >> 8) & 255;
                int i10 = i7 & 255;
                if (i8 == i9 && i9 == i10) {
                    this.c[i6] = (byte) i8;
                } else {
                    this.c[i6] = (byte) ((((i8 + i9) + i9) + i10) >> 2);
                }
            }
        }
    }

    public RGBLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6) {
        super(i5, i6);
        if (i5 + i3 > i || i6 + i4 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.c = bArr;
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.f5083g = i4;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getRow(int i, byte[] bArr) {
        if (i < 0 || i >= getHeight()) {
            throw new IllegalArgumentException(a.d(i, "Requested row is outside the image: "));
        }
        int width = getWidth();
        if (bArr == null || bArr.length < width) {
            bArr = new byte[width];
        }
        System.arraycopy(this.c, ((i + this.f5083g) * this.d) + this.f, bArr, 0, width);
        return bArr;
    }

    @Override // com.google.zxing.LuminanceSource
    public byte[] getMatrix() {
        int width = getWidth();
        int height = getHeight();
        byte[] bArr = this.c;
        int i = this.d;
        if (width == i && height == this.e) {
            return bArr;
        }
        int i2 = width * height;
        byte[] bArr2 = new byte[i2];
        int i3 = (this.f5083g * i) + this.f;
        if (width == i) {
            System.arraycopy(bArr, i3, bArr2, 0, i2);
            return bArr2;
        }
        for (int i4 = 0; i4 < height; i4++) {
            System.arraycopy(bArr, i3, bArr2, i4 * width, width);
            i3 += i;
        }
        return bArr2;
    }

    @Override // com.google.zxing.LuminanceSource
    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        int i5 = this.f + i;
        int i6 = this.f5083g + i2;
        return new RGBLuminanceSource(this.c, this.d, this.e, i5, i6, i3, i4);
    }
}
