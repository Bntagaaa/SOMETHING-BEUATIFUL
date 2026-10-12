package com.google.zxing.common;

/* loaded from: classes.dex */
public final class BitSource {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5166a;

    /* renamed from: b, reason: collision with root package name */
    public int f5167b;
    public int c;

    public BitSource(byte[] bArr) {
        this.f5166a = bArr;
    }

    public int getBitOffset() {
        return this.c;
    }

    public int getByteOffset() {
        return this.f5167b;
    }

    public int readBits(int i) {
        if (i < 1 || i > 32 || i > available()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        int i2 = this.c;
        int i3 = 0;
        byte[] bArr = this.f5166a;
        if (i2 > 0) {
            int i4 = 8 - i2;
            int i5 = i < i4 ? i : i4;
            int i6 = i4 - i5;
            int i7 = this.f5167b;
            int i8 = (((255 >> (8 - i5)) << i6) & bArr[i7]) >> i6;
            i -= i5;
            int i9 = i2 + i5;
            this.c = i9;
            if (i9 == 8) {
                this.c = 0;
                this.f5167b = i7 + 1;
            }
            i3 = i8;
        }
        if (i > 0) {
            while (i >= 8) {
                int i10 = i3 << 8;
                int i11 = this.f5167b;
                int i12 = i10 | (bArr[i11] & 255);
                this.f5167b = i11 + 1;
                i -= 8;
                i3 = i12;
            }
            if (i > 0) {
                int i13 = 8 - i;
                int i14 = ((((255 >> i13) << i13) & bArr[this.f5167b]) >> i13) | (i3 << i);
                this.c += i;
                return i14;
            }
        }
        return i3;
    }

    public int available() {
        return ((this.f5166a.length - this.f5167b) * 8) - this.c;
    }
}
