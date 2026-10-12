package com.google.android.material.color;

import androidx.annotation.ColorInt;

/* loaded from: classes.dex */
public final class ColorRoles {

    /* renamed from: a, reason: collision with root package name */
    public final int f2878a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2879b;
    public final int c;
    public final int d;

    public ColorRoles(int i, int i2, int i3, int i4) {
        this.f2878a = i;
        this.f2879b = i2;
        this.c = i3;
        this.d = i4;
    }

    @ColorInt
    public int getAccent() {
        return this.f2878a;
    }

    @ColorInt
    public int getOnAccent() {
        return this.f2879b;
    }

    @ColorInt
    public int getAccentContainer() {
        return this.c;
    }

    @ColorInt
    public int getOnAccentContainer() {
        return this.d;
    }
}
