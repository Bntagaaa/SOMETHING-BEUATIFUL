package com.google.zxing.qrcode.decoder;

import com.google.appinventor.components.runtime.util.ErrorMessages;

/* loaded from: classes2.dex */
final class e {
    public static final int[][] c = {new int[]{21522, 0}, new int[]{20773, 1}, new int[]{24188, 2}, new int[]{23371, 3}, new int[]{17913, 4}, new int[]{16590, 5}, new int[]{20375, 6}, new int[]{19104, 7}, new int[]{30660, 8}, new int[]{29427, 9}, new int[]{32170, 10}, new int[]{30877, 11}, new int[]{26159, 12}, new int[]{25368, 13}, new int[]{27713, 14}, new int[]{26998, 15}, new int[]{5769, 16}, new int[]{5054, 17}, new int[]{7399, 18}, new int[]{6608, 19}, new int[]{1890, 20}, new int[]{597, 21}, new int[]{3340, 22}, new int[]{ErrorMessages.ERROR_CANNOT_DELETE_FILE, 23}, new int[]{13663, 24}, new int[]{12392, 25}, new int[]{16177, 26}, new int[]{14854, 27}, new int[]{9396, 28}, new int[]{8579, 29}, new int[]{11994, 30}, new int[]{11245, 31}};
    public static final int[] d = {0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4};

    /* renamed from: a, reason: collision with root package name */
    public final ErrorCorrectionLevel f5329a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f5330b;

    public e(int i) {
        this.f5329a = ErrorCorrectionLevel.forBits((i >> 3) & 3);
        this.f5330b = (byte) (i & 7);
    }

    public static int b(int i, int i2) {
        int i3 = i ^ i2;
        int[] iArr = d;
        return iArr[i3 & 15] + iArr[(i3 >>> 4) & 15] + iArr[(i3 >>> 8) & 15] + iArr[(i3 >>> 12) & 15] + iArr[(i3 >>> 16) & 15] + iArr[(i3 >>> 20) & 15] + iArr[(i3 >>> 24) & 15] + iArr[(i3 >>> 28) & 15];
    }

    public static e a(int i, int i2) {
        int iB;
        int[][] iArr = c;
        int i3 = Integer.MAX_VALUE;
        int i4 = 0;
        for (int i5 = 0; i5 < 32; i5++) {
            int[] iArr2 = iArr[i5];
            int i6 = iArr2[0];
            if (i6 == i || i6 == i2) {
                return new e(iArr2[1]);
            }
            int iB2 = b(i, i6);
            if (iB2 < i3) {
                i4 = iArr2[1];
                i3 = iB2;
            }
            if (i != i2 && (iB = b(i2, i6)) < i3) {
                i4 = iArr2[1];
                i3 = iB;
            }
        }
        if (i3 <= 3) {
            return new e(i4);
        }
        return null;
    }

    public int hashCode() {
        return (this.f5329a.ordinal() << 3) | this.f5330b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f5329a == eVar.f5329a && this.f5330b == eVar.f5330b;
    }
}
