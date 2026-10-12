package com.google.zxing;

/* loaded from: classes.dex */
public abstract class LuminanceSource {

    /* renamed from: a, reason: collision with root package name */
    public final int f5076a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5077b;

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i, byte[] bArr);

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource(int i, int i2) {
        this.f5076a = i;
        this.f5077b = i2;
    }

    public final int getWidth() {
        return this.f5076a;
    }

    public final int getHeight() {
        return this.f5077b;
    }

    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException("This luminance source does not support cropping.");
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
    }

    public LuminanceSource rotateCounterClockwise45() {
        throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
    }

    public final String toString() {
        int i = this.f5076a;
        byte[] row = new byte[i];
        int i2 = this.f5077b;
        StringBuilder sb = new StringBuilder((i + 1) * i2);
        for (int i3 = 0; i3 < i2; i3++) {
            row = getRow(i3, row);
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = row[i4] & 255;
                sb.append(i5 < 64 ? '#' : i5 < 128 ? '+' : i5 < 192 ? '.' : ' ');
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
