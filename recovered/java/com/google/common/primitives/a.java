package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;

@GwtCompatible
/* loaded from: classes.dex */
final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f4804a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4805b;

    public a(String str, int i) {
        this.f4804a = str;
        this.f4805b = i;
    }

    public static a a(String str) {
        if (str.length() == 0) {
            throw new NumberFormatException("empty string");
        }
        char cCharAt = str.charAt(0);
        int i = 16;
        if (str.startsWith("0x") || str.startsWith("0X")) {
            str = str.substring(2);
        } else if (cCharAt == '#') {
            str = str.substring(1);
        } else if (cCharAt != '0' || str.length() <= 1) {
            i = 10;
        } else {
            str = str.substring(1);
            i = 8;
        }
        return new a(str, i);
    }
}
