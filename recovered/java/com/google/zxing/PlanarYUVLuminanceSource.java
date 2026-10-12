package com.google.zxing;

import _COROUTINE.a;

/* loaded from: classes.dex */
public final class PlanarYUVLuminanceSource extends LuminanceSource {
    public final byte[] c;
    public final int d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f5082g;

    @Override // com.google.zxing.LuminanceSource
    public boolean isCropSupported() {
        return true;
    }

    public PlanarYUVLuminanceSource(byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        super(i5, i6);
        if (i3 + i5 > i || i4 + i6 > i2) {
            throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
        }
        this.c = bArr;
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.f5082g = i4;
        if (z) {
            int i7 = (i4 * i) + i3;
            int i8 = 0;
            while (i8 < i6) {
                int i9 = (i5 / 2) + i7;
                int i10 = (i7 + i5) - 1;
                int i11 = i7;
                while (i11 < i9) {
                    byte[] bArr2 = this.c;
                    byte b2 = bArr2[i11];
                    bArr2[i11] = bArr2[i10];
                    bArr2[i10] = b2;
                    i11++;
                    i10--;
                }
                i8++;
                i7 += i;
            }
        }
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
        System.arraycopy(this.c, ((i + this.f5082g) * this.d) + this.f, bArr, 0, width);
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
        int i3 = (this.f5082g * i) + this.f;
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
        return new PlanarYUVLuminanceSource(this.c, this.d, this.e, this.f + i, this.f5082g + i2, i3, i4, false);
    }

    public int[] renderCroppedGreyscaleBitmap() {
        int width = getWidth();
        int height = getHeight();
        int[] iArr = new int[width * height];
        int i = this.f5082g;
        int i2 = this.d;
        int i3 = (i * i2) + this.f;
        for (int i4 = 0; i4 < height; i4++) {
            int i5 = i4 * width;
            for (int i6 = 0; i6 < width; i6++) {
                iArr[i5 + i6] = ((this.c[i3 + i6] & 255) * 65793) | (-16777216);
            }
            i3 += i2;
        }
        return iArr;
    }
}
