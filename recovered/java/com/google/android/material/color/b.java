package com.google.android.material.color;

/* loaded from: classes.dex */
final class b {

    /* renamed from: g, reason: collision with root package name */
    public static final float[][] f2894g = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    public static final float[][] h = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};

    /* renamed from: a, reason: collision with root package name */
    public final float f2895a;

    /* renamed from: b, reason: collision with root package name */
    public final float f2896b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;

    public float getHue() {
        return this.f2895a;
    }

    public float getChroma() {
        return this.f2896b;
    }

    public float getJ() {
        return this.c;
    }

    public float getJStar() {
        return this.d;
    }

    public float getAStar() {
        return this.e;
    }

    public float getBStar() {
        return this.f;
    }

    public b(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f2895a = f;
        this.f2896b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = f6;
    }

    public static b fromInt(int i) {
        i iVar = i.k;
        float fLinearized = e.linearized(((16711680 & i) >> 16) / 255.0f) * 100.0f;
        float fLinearized2 = e.linearized(((65280 & i) >> 8) / 255.0f) * 100.0f;
        float fLinearized3 = e.linearized((i & 255) / 255.0f) * 100.0f;
        float f = (0.18051042f * fLinearized3) + (0.35762063f * fLinearized2) + (0.41233894f * fLinearized);
        float f2 = (0.0722f * fLinearized3) + (0.7152f * fLinearized2) + (0.2126f * fLinearized);
        float f3 = (fLinearized3 * 0.9503448f) + (fLinearized2 * 0.11916382f) + (fLinearized * 0.01932141f);
        float[][] fArr = f2894g;
        float[] fArr2 = fArr[0];
        float f4 = (fArr2[2] * f3) + (fArr2[1] * f2) + (fArr2[0] * f);
        float[] fArr3 = fArr[1];
        float f5 = (fArr3[2] * f3) + (fArr3[1] * f2) + (fArr3[0] * f);
        float[] fArr4 = fArr[2];
        float f6 = (f3 * fArr4[2]) + (f2 * fArr4[1]) + (f * fArr4[0]);
        float f7 = iVar.getRgbD()[0] * f4;
        float f8 = iVar.getRgbD()[1] * f5;
        float f9 = iVar.getRgbD()[2] * f6;
        float fAbs = Math.abs(f7);
        float f10 = iVar.h;
        float fPow = (float) Math.pow((fAbs * f10) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow((Math.abs(f8) * f10) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow((Math.abs(f9) * f10) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f7) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f8) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f9) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d = fSignum3;
        float f11 = ((float) (((fSignum2 * (-12.0d)) + (fSignum * 11.0d)) + d)) / 11.0f;
        float f12 = ((float) ((fSignum + fSignum2) - (d * 2.0d))) / 9.0f;
        float f13 = fSignum2 * 20.0f;
        float f14 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f13)) / 20.0f;
        float f15 = (((fSignum * 40.0f) + f13) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f12, f11)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f16 = (3.1415927f * fAtan2) / 180.0f;
        double nbb = (f15 * iVar.getNbb()) / iVar.getAw();
        float f17 = iVar.d;
        float fPow4 = ((float) Math.pow(nbb, iVar.j * f17)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        iVar.getAw();
        iVar.getFlRoot();
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, iVar.getN()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(Math.toRadians(((double) fAtan2) < 20.14d ? fAtan2 + 360.0f : fAtan2) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * iVar.e) * iVar.c) * ((float) Math.hypot(r3, r6))) / (f14 + 0.305f), 0.9d)) * ((float) Math.sqrt(fPow4 / 100.0d));
        float flRoot = iVar.getFlRoot() * fPow5;
        Math.sqrt((r3 * f17) / (iVar.getAw() + 4.0f));
        float f18 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog1p = ((float) Math.log1p(flRoot * 0.0228f)) * 43.85965f;
        double d2 = f16;
        return new b(fAtan2, fPow5, fPow4, f18, fLog1p * ((float) Math.cos(d2)), fLog1p * ((float) Math.sin(d2)));
    }

    public static b a(float f, float f2, float f3) {
        i iVar = i.k;
        float f4 = iVar.d;
        Math.sqrt(f / 100.0d);
        iVar.getAw();
        iVar.getFlRoot();
        float flRoot = iVar.getFlRoot() * f2;
        Math.sqrt(((f2 / ((float) Math.sqrt(r1))) * iVar.d) / (iVar.getAw() + 4.0f));
        float f5 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float fLog1p = ((float) Math.log1p(flRoot * 0.0228d)) * 43.85965f;
        double d = (3.1415927f * f3) / 180.0f;
        return new b(f3, f2, f, f5, fLog1p * ((float) Math.cos(d)), fLog1p * ((float) Math.sin(d)));
    }

    public int getInt() {
        return b(i.k);
    }

    public final int b(i iVar) {
        float fPow = (float) Math.pow(((((double) getChroma()) == 0.0d || ((double) getJ()) == 0.0d) ? 0.0f : getChroma() / ((float) Math.sqrt(getJ() / 100.0d))) / Math.pow(1.64d - Math.pow(0.29d, iVar.getN()), 0.73d), 1.1111111111111112d);
        double hue = (getHue() * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + hue) + 3.8d)) * 0.25f;
        float aw = iVar.getAw() * ((float) Math.pow(getJ() / 100.0d, (1.0d / iVar.d) / iVar.j));
        float f = fCos * 3846.1538f * iVar.e * iVar.c;
        float nbb = aw / iVar.getNbb();
        float fSin = (float) Math.sin(hue);
        float fCos2 = (float) Math.cos(hue);
        float f2 = (((0.305f + nbb) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f * 23.0f)));
        float f3 = fCos2 * f2;
        float f4 = f2 * fSin;
        float f5 = nbb * 460.0f;
        float f6 = ((288.0f * f4) + ((451.0f * f3) + f5)) / 1403.0f;
        float f7 = ((f5 - (891.0f * f3)) - (261.0f * f4)) / 1403.0f;
        float f8 = ((f5 - (f3 * 220.0f)) - (f4 * 6300.0f)) / 1403.0f;
        float fMax = (float) Math.max(0.0d, (Math.abs(f6) * 27.13d) / (400.0d - Math.abs(f6)));
        float fSignum = Math.signum(f6);
        float f9 = 100.0f / iVar.h;
        float fPow2 = fSignum * f9 * ((float) Math.pow(fMax, 2.380952380952381d));
        float fSignum2 = Math.signum(f7) * f9 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f7) * 27.13d) / (400.0d - Math.abs(f7))), 2.380952380952381d));
        float fSignum3 = Math.signum(f8) * f9 * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f8) * 27.13d) / (400.0d - Math.abs(f8))), 2.380952380952381d));
        float f10 = fPow2 / iVar.getRgbD()[0];
        float f11 = fSignum2 / iVar.getRgbD()[1];
        float f12 = fSignum3 / iVar.getRgbD()[2];
        float[][] fArr = h;
        float[] fArr2 = fArr[0];
        float f13 = (fArr2[2] * f12) + (fArr2[1] * f11) + (fArr2[0] * f10);
        float[] fArr3 = fArr[1];
        float f14 = (fArr3[2] * f12) + (fArr3[1] * f11) + (fArr3[0] * f10);
        float[] fArr4 = fArr[2];
        return e.intFromXyzComponents(f13, f14, (f12 * fArr4[2]) + (f11 * fArr4[1]) + (f10 * fArr4[0]));
    }
}
