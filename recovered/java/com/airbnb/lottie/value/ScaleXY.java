package com.airbnb.lottie.value;

/* loaded from: classes.dex */
public class ScaleXY {

    /* renamed from: a, reason: collision with root package name */
    public float f2734a;

    /* renamed from: b, reason: collision with root package name */
    public float f2735b;

    public ScaleXY(float f, float f2) {
        this.f2734a = f;
        this.f2735b = f2;
    }

    public ScaleXY() {
        this(1.0f, 1.0f);
    }

    public float getScaleX() {
        return this.f2734a;
    }

    public float getScaleY() {
        return this.f2735b;
    }

    public void set(float f, float f2) {
        this.f2734a = f;
        this.f2735b = f2;
    }

    public boolean equals(float f, float f2) {
        return this.f2734a == f && this.f2735b == f2;
    }

    public String toString() {
        return getScaleX() + "x" + getScaleY();
    }
}
