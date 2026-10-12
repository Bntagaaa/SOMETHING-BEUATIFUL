package com.google.zxing.common;

/* loaded from: classes.dex */
public final class StringUtils {
    public static final String GB2312 = "GB2312";
    public static final String SHIFT_JIS = "SJIS";

    /* renamed from: a, reason: collision with root package name */
    public static final String f5179a;

    /* renamed from: b, reason: collision with root package name */
    public static final boolean f5180b;

    static {
        String property = System.getProperty("file.encoding");
        f5179a = property;
        f5180b = SHIFT_JIS.equalsIgnoreCase(property) || "EUC_JP".equalsIgnoreCase(property);
    }

    private StringUtils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String guessEncoding(byte[] r21, java.util.Map<com.google.zxing.DecodeHintType, ?> r22) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.StringUtils.guessEncoding(byte[], java.util.Map):java.lang.String");
    }
}
