package com.google.android.material.color;

/* loaded from: classes.dex */
final class i {
    public static final i k;

    /* renamed from: a, reason: collision with root package name */
    public final float f2922a;

    /* renamed from: b, reason: collision with root package name */
    public final float f2923b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f2924g;
    public final float h;
    public final float i;
    public final float j;

    static {
        float fLerp;
        float[] fArrWhitePointD65 = e.whitePointD65();
        float fYFromLstar = (float) ((e.yFromLstar(50.0f) * 63.66197723675813d) / 100.0d);
        float[][] fArr = b.f2894g;
        float f = fArrWhitePointD65[0];
        float[] fArr2 = fArr[0];
        float f2 = fArr2[0] * f;
        float f3 = fArrWhitePointD65[1];
        float f4 = (fArr2[1] * f3) + f2;
        float f5 = fArrWhitePointD65[2];
        float f6 = (fArr2[2] * f5) + f4;
        float[] fArr3 = fArr[1];
        float f7 = (fArr3[2] * f5) + (fArr3[1] * f3) + (fArr3[0] * f);
        float[] fArr4 = fArr[2];
        float f8 = (f5 * fArr4[2]) + (f3 * fArr4[1]) + (f * fArr4[0]);
        if (1.0f >= 0.9d) {
            fLerp = g.lerp(0.59f, 0.69f, 1.0000002f);
        } else {
            fLerp = g.lerp(0.525f, 0.59f, 1.9999999f);
        }
        float f9 = fLerp;
        float fExp = (1.0f - (((float) Math.exp(((-fYFromLstar) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d = fExp;
        if (d > 1.0d) {
            fExp = 1.0f;
        } else if (d < 0.0d) {
            fExp = 0.0f;
        }
        float f10 = 1.0f / ((5.0f * fYFromLstar) + 1.0f);
        float f11 = f10 * f10 * f10 * f10;
        float f12 = 1.0f - f11;
        float fCbrt = (0.1f * f12 * f12 * ((float) Math.cbrt(fYFromLstar * 5.0d))) + (f11 * fYFromLstar);
        float fYFromLstar2 = e.yFromLstar(50.0f) / fArrWhitePointD65[1];
        double d2 = fYFromLstar2;
        float fSqrt = ((float) Math.sqrt(d2)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d2, 0.2d));
        float[] fArr5 = {(float) Math.pow(((r1[0] * fCbrt) * f6) / 100.0d, 0.42d), (float) Math.pow(((r1[1] * fCbrt) * f7) / 100.0d, 0.42d), (float) Math.pow(((r1[2] * fCbrt) * f8) / 100.0d, 0.42d)};
        float f13 = fArr5[0];
        float f14 = (f13 * 400.0f) / (f13 + 27.13f);
        float f15 = fArr5[1];
        float f16 = (f15 * 400.0f) / (f15 + 27.13f);
        float f17 = fArr5[2];
        float[] fArr6 = {f14, f16, (400.0f * f17) / (f17 + 27.13f)};
        k = new i(fYFromLstar2, ((fArr6[2] * 0.05f) + (fArr6[0] * 2.0f) + fArr6[1]) * fPow, fPow, fPow, f9, 1.0f, new float[]{(((100.0f / f6) * fExp) + 1.0f) - fExp, (((100.0f / f7) * fExp) + 1.0f) - fExp, (((100.0f / f8) * fExp) + 1.0f) - fExp}, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public float getAw() {
        return this.f2922a;
    }

    public float getN() {
        return this.f;
    }

    public float getNbb() {
        return this.f2923b;
    }

    public float[] getRgbD() {
        return this.f2924g;
    }

    public float getFlRoot() {
        return this.i;
    }

    public i(float f, float f2, float f3, float f4, float f5, float f6, float[] fArr, float f7, float f8, float f9) {
        this.f = f;
        this.f2922a = f2;
        this.f2923b = f3;
        this.c = f4;
        this.d = f5;
        this.e = f6;
        this.f2924g = fArr;
        this.h = f7;
        this.i = f8;
        this.j = f9;
    }
}
