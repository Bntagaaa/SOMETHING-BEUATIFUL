package com.google.zxing.qrcode.encoder;

/* loaded from: classes2.dex */
final class b {
    private b() {
    }

    public static int a(ByteMatrix byteMatrix, boolean z) {
        int height = z ? byteMatrix.getHeight() : byteMatrix.getWidth();
        int width = z ? byteMatrix.getWidth() : byteMatrix.getHeight();
        byte[][] array = byteMatrix.getArray();
        int i = 0;
        for (int i2 = 0; i2 < height; i2++) {
            byte b2 = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < width; i4++) {
                byte b3 = z ? array[i2][i4] : array[i4][i2];
                if (b3 == b2) {
                    i3++;
                } else {
                    if (i3 >= 5) {
                        i += i3 - 2;
                    }
                    b2 = b3;
                    i3 = 1;
                }
            }
            if (i3 > 5) {
                i = (i3 - 2) + i;
            }
        }
        return i;
    }
}
