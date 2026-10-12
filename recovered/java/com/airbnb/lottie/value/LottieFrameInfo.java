package com.airbnb.lottie.value;

import androidx.annotation.RestrictTo;

/* loaded from: classes.dex */
public class LottieFrameInfo<T> {

    /* renamed from: a, reason: collision with root package name */
    public float f2729a;

    /* renamed from: b, reason: collision with root package name */
    public float f2730b;
    public Object c;
    public Object d;
    public float e;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f2731g;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public LottieFrameInfo<T> set(float f, float f2, T t, T t2, float f3, float f4, float f5) {
        this.f2729a = f;
        this.f2730b = f2;
        this.c = t;
        this.d = t2;
        this.e = f3;
        this.f = f4;
        this.f2731g = f5;
        return this;
    }

    public float getStartFrame() {
        return this.f2729a;
    }

    public float getEndFrame() {
        return this.f2730b;
    }

    public T getStartValue() {
        return (T) this.c;
    }

    public T getEndValue() {
        return (T) this.d;
    }

    public float getLinearKeyframeProgress() {
        return this.e;
    }

    public float getInterpolatedKeyframeProgress() {
        return this.f;
    }

    public float getOverallProgress() {
        return this.f2731g;
    }
}
