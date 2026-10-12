package androidx.core.content.res;

import android.graphics.Color;

/* loaded from: classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    public final float f1015a;

    /* renamed from: b, reason: collision with root package name */
    public final float f1016b;
    public final float c;
    public final float d;
    public final float e;
    public final float f;

    public a(float f, float f2, float f3, float f4, float f5, float f6) {
        this.f1015a = f;
        this.f1016b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = f6;
    }

    public static a a(int i) {
        h hVar = h.k;
        float fB = b.b(Color.red(i));
        float fB2 = b.b(Color.green(i));
        float fB3 = b.b(Color.blue(i));
        float[][] fArr = b.d;
        float[] fArr2 = fArr[0];
        float f = (fArr2[2] * fB3) + (fArr2[1] * fB2) + (fArr2[0] * fB);
        float[] fArr3 = fArr[1];
        float f2 = (fArr3[2] * fB3) + (fArr3[1] * fB2) + (fArr3[0] * fB);
        float[] fArr4 = fArr[2];
        float[] fArr5 = {f, f2, (fB3 * fArr4[2]) + (fB2 * fArr4[1]) + (fB * fArr4[0])};
        float[][] fArr6 = b.f1017a;
        float f3 = fArr5[0];
        float[] fArr7 = fArr6[0];
        float f4 = fArr7[0] * f3;
        float f5 = fArr5[1];
        float f6 = (fArr7[1] * f5) + f4;
        float f7 = fArr5[2];
        float f8 = (fArr7[2] * f7) + f6;
        float[] fArr8 = fArr6[1];
        float f9 = (fArr8[2] * f7) + (fArr8[1] * f5) + (fArr8[0] * f3);
        float[] fArr9 = fArr6[2];
        float f10 = (f7 * fArr9[2]) + (f5 * fArr9[1]) + (f3 * fArr9[0]);
        float[] fArr10 = hVar.f1027g;
        float f11 = fArr10[0] * f8;
        float f12 = fArr10[1] * f9;
        float f13 = fArr10[2] * f10;
        float fAbs = Math.abs(f11);
        float f14 = hVar.h;
        float fPow = (float) Math.pow((fAbs * f14) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow((Math.abs(f12) * f14) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow((Math.abs(f13) * f14) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f11) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f12) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f13) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d = fSignum3;
        float f15 = ((float) (((fSignum2 * (-12.0d)) + (fSignum * 11.0d)) + d)) / 11.0f;
        float f16 = ((float) ((fSignum + fSignum2) - (d * 2.0d))) / 9.0f;
        float f17 = fSignum2 * 20.0f;
        float f18 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f17)) / 20.0f;
        float f19 = (((fSignum * 40.0f) + f17) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f16, f15)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f20 = fAtan2;
        float f21 = (3.1415927f * f20) / 180.0f;
        float f22 = f19 * hVar.f1026b;
        float f23 = hVar.f1025a;
        float f24 = hVar.d;
        float fPow4 = ((float) Math.pow(f22 / f23, hVar.j * f24)) * 100.0f;
        Math.sqrt(fPow4 / 100.0f);
        float f25 = f23 + 4.0f;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, hVar.f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) f20) < 20.14d ? 360.0f + f20 : f20) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * hVar.e) * hVar.c) * ((float) Math.sqrt((f16 * f16) + (f15 * f15)))) / (f18 + 0.305f), 0.9d)) * ((float) Math.sqrt(fPow4 / 100.0d));
        float f26 = hVar.i * fPow5;
        Math.sqrt((r4 * f24) / f25);
        float f27 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((f26 * 0.0228f) + 1.0f)) * 43.85965f;
        double d2 = f21;
        return new a(f20, fPow5, fPow4, f27, fLog * ((float) Math.cos(d2)), fLog * ((float) Math.sin(d2)));
    }

    public static a b(float f, float f2, float f3) {
        h hVar = h.k;
        float f4 = hVar.d;
        Math.sqrt(f / 100.0d);
        float f5 = hVar.f1025a + 4.0f;
        float f6 = hVar.i * f2;
        Math.sqrt(((f2 / ((float) Math.sqrt(r1))) * hVar.d) / f5);
        float f7 = (1.7f * f) / ((0.007f * f) + 1.0f);
        float fLog = ((float) Math.log((f6 * 0.0228d) + 1.0d)) * 43.85965f;
        double d = (3.1415927f * f3) / 180.0f;
        return new a(f3, f2, f, f7, fLog * ((float) Math.cos(d)), fLog * ((float) Math.sin(d)));
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(androidx.core.content.res.h r21) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.a.c(androidx.core.content.res.h):int");
    }
}
