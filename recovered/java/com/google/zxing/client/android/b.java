package com.google.zxing.client.android;

import com.google.zxing.BarcodeFormat;
import java.util.EnumSet;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class b {

    /* renamed from: b, reason: collision with root package name */
    public static final EnumSet f5117b;
    public static final EnumSet c;

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f5116a = Pattern.compile(",");
    public static final EnumSet d = EnumSet.of(BarcodeFormat.QR_CODE);
    public static final EnumSet e = EnumSet.of(BarcodeFormat.DATA_MATRIX);

    static {
        EnumSet enumSetOf = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14);
        f5117b = enumSetOf;
        EnumSet enumSetOf2 = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);
        c = enumSetOf2;
        enumSetOf2.addAll(enumSetOf);
    }

    private b() {
    }
}
