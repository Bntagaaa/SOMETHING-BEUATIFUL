package com.airbnb.lottie.utils;

/* loaded from: classes.dex */
public class MeanCalculator {

    /* renamed from: a, reason: collision with root package name */
    public float f2721a;

    /* renamed from: b, reason: collision with root package name */
    public int f2722b;

    public void add(float f) {
        float f2 = this.f2721a + f;
        this.f2721a = f2;
        int i = this.f2722b + 1;
        this.f2722b = i;
        if (i == Integer.MAX_VALUE) {
            this.f2721a = f2 / 2.0f;
            this.f2722b = i / 2;
        }
    }

    public float getMean() {
        int i = this.f2722b;
        if (i == 0) {
            return 0.0f;
        }
        return this.f2721a / i;
    }
}
