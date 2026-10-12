package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class Font {

    /* renamed from: a, reason: collision with root package name */
    public final String f2579a;

    /* renamed from: b, reason: collision with root package name */
    public final String f2580b;
    public final String c;

    public Font(String str, String str2, String str3, float f) {
        this.f2579a = str;
        this.f2580b = str2;
        this.c = str3;
    }

    public String getFamily() {
        return this.f2579a;
    }

    public String getName() {
        return this.f2580b;
    }

    public String getStyle() {
        return this.c;
    }
}
