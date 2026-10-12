package com.google.zxing.qrcode.encoder;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class ByteMatrix {

    /* renamed from: a, reason: collision with root package name */
    public final byte[][] f5342a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5343b;
    public final int c;

    public ByteMatrix(int i, int i2) {
        this.f5342a = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i2, i);
        this.f5343b = i;
        this.c = i2;
    }

    public int getHeight() {
        return this.c;
    }

    public int getWidth() {
        return this.f5343b;
    }

    public byte get(int i, int i2) {
        return this.f5342a[i2][i];
    }

    public byte[][] getArray() {
        return this.f5342a;
    }

    public void set(int i, int i2, byte b2) {
        this.f5342a[i2][i] = b2;
    }

    public void set(int i, int i2, int i3) {
        this.f5342a[i2][i] = (byte) i3;
    }

    public void set(int i, int i2, boolean z) {
        this.f5342a[i2][i] = z ? (byte) 1 : (byte) 0;
    }

    public void clear(byte b2) {
        for (int i = 0; i < this.c; i++) {
            for (int i2 = 0; i2 < this.f5343b; i2++) {
                this.f5342a[i][i2] = b2;
            }
        }
    }

    public String toString() {
        int i = this.f5343b;
        int i2 = this.c;
        StringBuilder sb = new StringBuilder((i * 2 * i2) + 2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i; i4++) {
                byte b2 = this.f5342a[i3][i4];
                if (b2 == 0) {
                    sb.append(" 0");
                } else if (b2 == 1) {
                    sb.append(" 1");
                } else {
                    sb.append("  ");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
