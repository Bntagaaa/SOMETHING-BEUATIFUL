package com.google.zxing.qrcode.decoder;

/* loaded from: classes2.dex */
public enum ErrorCorrectionLevel {
    L(1),
    M(0),
    Q(3),
    H(2);


    /* renamed from: b, reason: collision with root package name */
    public static final ErrorCorrectionLevel[] f5313b;

    /* renamed from: a, reason: collision with root package name */
    public final int f5314a;

    static {
        ErrorCorrectionLevel errorCorrectionLevel = L;
        ErrorCorrectionLevel errorCorrectionLevel2 = M;
        ErrorCorrectionLevel errorCorrectionLevel3 = Q;
        f5313b = new ErrorCorrectionLevel[]{errorCorrectionLevel2, errorCorrectionLevel, H, errorCorrectionLevel3};
    }

    ErrorCorrectionLevel(int i) {
        this.f5314a = i;
    }

    public int getBits() {
        return this.f5314a;
    }

    public static ErrorCorrectionLevel forBits(int i) {
        if (i < 0 || i >= 4) {
            throw new IllegalArgumentException();
        }
        return f5313b[i];
    }
}
