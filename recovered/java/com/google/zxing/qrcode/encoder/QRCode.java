package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.Version;

/* loaded from: classes2.dex */
public final class QRCode {
    public static final int NUM_MASK_PATTERNS = 8;

    /* renamed from: a, reason: collision with root package name */
    public Mode f5346a;

    /* renamed from: b, reason: collision with root package name */
    public ErrorCorrectionLevel f5347b;
    public Version c;
    public int d = -1;
    public ByteMatrix e;

    public static boolean isValidMaskPattern(int i) {
        return i >= 0 && i < 8;
    }

    public Mode getMode() {
        return this.f5346a;
    }

    public ErrorCorrectionLevel getECLevel() {
        return this.f5347b;
    }

    public Version getVersion() {
        return this.c;
    }

    public int getMaskPattern() {
        return this.d;
    }

    public ByteMatrix getMatrix() {
        return this.e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n mode: ");
        sb.append(this.f5346a);
        sb.append("\n ecLevel: ");
        sb.append(this.f5347b);
        sb.append("\n version: ");
        sb.append(this.c);
        sb.append("\n maskPattern: ");
        sb.append(this.d);
        if (this.e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.e.toString());
        }
        sb.append(">>\n");
        return sb.toString();
    }

    public void setMode(Mode mode) {
        this.f5346a = mode;
    }

    public void setECLevel(ErrorCorrectionLevel errorCorrectionLevel) {
        this.f5347b = errorCorrectionLevel;
    }

    public void setVersion(Version version) {
        this.c = version;
    }

    public void setMaskPattern(int i) {
        this.d = i;
    }

    public void setMatrix(ByteMatrix byteMatrix) {
        this.e = byteMatrix;
    }
}
