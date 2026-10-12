package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes2.dex */
public final class UPCAWriter implements Writer {

    /* renamed from: a, reason: collision with root package name */
    public final EAN13Writer f5240a = new EAN13Writer();

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat != BarcodeFormat.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
        }
        int length = str.length();
        if (length == 11) {
            int iCharAt = 0;
            for (int i3 = 0; i3 < 11; i3++) {
                iCharAt += (str.charAt(i3) - '0') * (i3 % 2 == 0 ? 3 : 1);
            }
            StringBuilder sbP = _COROUTINE.a.p(str);
            sbP.append((1000 - iCharAt) % 10);
            str = sbP.toString();
        } else if (length != 12) {
            throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + str.length());
        }
        return this.f5240a.encode(_COROUTINE.a.i("0", str), BarcodeFormat.EAN_13, i, i2, map);
    }
}
