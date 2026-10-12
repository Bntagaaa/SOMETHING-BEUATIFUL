package com.google.zxing;

import com.google.zxing.common.BitMatrix;
import com.google.zxing.oned.CodaBarWriter;
import com.google.zxing.oned.Code128Writer;
import com.google.zxing.oned.Code39Writer;
import com.google.zxing.oned.EAN13Writer;
import com.google.zxing.oned.EAN8Writer;
import com.google.zxing.oned.ITFWriter;
import com.google.zxing.oned.UPCAWriter;
import com.google.zxing.pdf417.encoder.PDF417Writer;
import com.google.zxing.qrcode.QRCodeWriter;
import java.util.Map;

/* loaded from: classes.dex */
public final class MultiFormatWriter implements Writer {
    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5080a;

        static {
            int[] iArr = new int[BarcodeFormat.values().length];
            f5080a = iArr;
            try {
                iArr[BarcodeFormat.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5080a[BarcodeFormat.EAN_13.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5080a[BarcodeFormat.UPC_A.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5080a[BarcodeFormat.QR_CODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5080a[BarcodeFormat.CODE_39.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5080a[BarcodeFormat.CODE_128.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5080a[BarcodeFormat.ITF.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5080a[BarcodeFormat.PDF_417.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5080a[BarcodeFormat.CODABAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        Writer eAN8Writer;
        switch (a.f5080a[barcodeFormat.ordinal()]) {
            case 1:
                eAN8Writer = new EAN8Writer();
                break;
            case 2:
                eAN8Writer = new EAN13Writer();
                break;
            case 3:
                eAN8Writer = new UPCAWriter();
                break;
            case 4:
                eAN8Writer = new QRCodeWriter();
                break;
            case 5:
                eAN8Writer = new Code39Writer();
                break;
            case 6:
                eAN8Writer = new Code128Writer();
                break;
            case 7:
                eAN8Writer = new ITFWriter();
                break;
            case 8:
                eAN8Writer = new PDF417Writer();
                break;
            case 9:
                eAN8Writer = new CodaBarWriter();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format " + barcodeFormat);
        }
        return eAN8Writer.encode(str, barcodeFormat, i, i2, map);
    }
}
