package com.google.zxing.qrcode.encoder;

/* loaded from: classes2.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5348a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f5349b;

    public a(byte[] bArr, byte[] bArr2) {
        this.f5348a = bArr;
        this.f5349b = bArr2;
    }

    public byte[] getDataBytes() {
        return this.f5348a;
    }

    public byte[] getErrorCorrectionBytes() {
        return this.f5349b;
    }
}
