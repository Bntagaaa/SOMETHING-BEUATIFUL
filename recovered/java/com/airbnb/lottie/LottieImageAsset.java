package com.airbnb.lottie;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public class LottieImageAsset {

    /* renamed from: a, reason: collision with root package name */
    public final int f2497a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2498b;
    public final String c;
    public final String d;
    public final String e;
    public Bitmap f;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public LottieImageAsset(int i, int i2, String str, String str2, String str3) {
        this.f2497a = i;
        this.f2498b = i2;
        this.c = str;
        this.d = str2;
        this.e = str3;
    }

    public int getWidth() {
        return this.f2497a;
    }

    public int getHeight() {
        return this.f2498b;
    }

    public String getId() {
        return this.c;
    }

    public String getFileName() {
        return this.d;
    }

    public String getDirName() {
        return this.e;
    }

    @Nullable
    public Bitmap getBitmap() {
        return this.f;
    }

    public void setBitmap(@Nullable Bitmap bitmap) {
        this.f = bitmap;
    }

    public boolean hasBitmap() {
        if (this.f != null) {
            return true;
        }
        String str = this.d;
        return str.startsWith("data:") && str.indexOf("base64,") > 0;
    }
}
