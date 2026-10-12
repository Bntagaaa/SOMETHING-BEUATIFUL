package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import gnu.bytecode.Access;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f5328a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', Access.CLASS_CONTEXT, 'D', 'E', Access.FIELD_CONTEXT, 'G', 'H', Access.INNERCLASS_CONTEXT, 'J', 'K', 'L', Access.METHOD_CONTEXT, 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', Typography.dollar, '%', '*', '+', '-', '.', '/', ':'};

    private d() {
    }

    public static char a(int i) throws FormatException {
        if (i >= 45) {
            throw FormatException.getFormatInstance();
        }
        return f5328a[i];
    }
}
