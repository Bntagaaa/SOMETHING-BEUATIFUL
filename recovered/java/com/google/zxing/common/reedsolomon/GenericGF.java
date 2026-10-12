package com.google.zxing.common.reedsolomon;

import com.google.appinventor.components.runtime.util.ErrorMessages;

/* loaded from: classes.dex */
public final class GenericGF {
    public static final GenericGF AZTEC_DATA_6;
    public static final GenericGF AZTEC_DATA_8;
    public static final GenericGF AZTEC_PARAM;
    public static final GenericGF DATA_MATRIX_FIELD_256;
    public static final GenericGF MAXICODE_FIELD_64;
    public static final GenericGF QR_CODE_FIELD_256;

    /* renamed from: a, reason: collision with root package name */
    public int[] f5185a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f5186b;
    public a c;
    public a d;
    public final int e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5187g = false;
    public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096);
    public static final GenericGF AZTEC_DATA_10 = new GenericGF(1033, 1024);

    static {
        GenericGF genericGF = new GenericGF(67, 64);
        AZTEC_DATA_6 = genericGF;
        AZTEC_PARAM = new GenericGF(19, 16);
        QR_CODE_FIELD_256 = new GenericGF(285, 256);
        GenericGF genericGF2 = new GenericGF(ErrorMessages.ERROR_TWITTER_UNSUPPORTED_LOGIN_FUNCTION, 256);
        DATA_MATRIX_FIELD_256 = genericGF2;
        AZTEC_DATA_8 = genericGF2;
        MAXICODE_FIELD_64 = genericGF;
    }

    public GenericGF(int i, int i2) {
        this.f = i;
        this.e = i2;
        if (i2 <= 0) {
            c();
        }
    }

    public final void c() {
        int i = this.e;
        this.f5185a = new int[i];
        this.f5186b = new int[i];
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            this.f5185a[i3] = i2;
            i2 <<= 1;
            if (i2 >= i) {
                i2 = (i2 ^ this.f) & (i - 1);
            }
        }
        for (int i4 = 0; i4 < i - 1; i4++) {
            this.f5186b[this.f5185a[i4]] = i4;
        }
        this.c = new a(this, new int[]{0});
        this.d = new a(this, new int[]{1});
        this.f5187g = true;
    }

    public final void b() {
        if (this.f5187g) {
            return;
        }
        c();
    }

    public final a a(int i, int i2) {
        b();
        if (i < 0) {
            throw new IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.c;
        }
        int[] iArr = new int[i + 1];
        iArr[0] = i2;
        return new a(this, iArr);
    }

    public final int d(int i) {
        b();
        if (i == 0) {
            throw new ArithmeticException();
        }
        return this.f5185a[(this.e - this.f5186b[i]) - 1];
    }

    public final int e(int i, int i2) {
        b();
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int[] iArr = this.f5185a;
        int[] iArr2 = this.f5186b;
        return iArr[(iArr2[i] + iArr2[i2]) % (this.e - 1)];
    }

    public int getSize() {
        return this.e;
    }
}
