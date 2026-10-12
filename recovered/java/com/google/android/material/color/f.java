package com.google.android.material.color;

/* loaded from: classes.dex */
final class f {

    /* renamed from: a, reason: collision with root package name */
    public float f2920a;

    /* renamed from: b, reason: collision with root package name */
    public float f2921b;
    public float c;

    public static f from(float f, float f2, float f3) {
        return new f(f, f2, f3);
    }

    public static f fromInt(int i) {
        b bVarFromInt = b.fromInt(i);
        return new f(bVarFromInt.getHue(), bVarFromInt.getChroma(), e.lstarFromInt(i));
    }

    public f(float f, float f2, float f3) {
        int iA = a(f, f2, f3);
        b bVarFromInt = b.fromInt(iA);
        float fLstarFromInt = e.lstarFromInt(iA);
        this.f2920a = bVarFromInt.getHue();
        this.f2921b = bVarFromInt.getChroma();
        this.c = fLstarFromInt;
    }

    public float getHue() {
        return this.f2920a;
    }

    public float getChroma() {
        return this.f2921b;
    }

    public float getTone() {
        return this.c;
    }

    public int toInt() {
        return a(this.f2920a, this.f2921b, this.c);
    }

    public void setTone(float f) {
        int iA = a(this.f2920a, this.f2921b, f);
        b bVarFromInt = b.fromInt(iA);
        float fLstarFromInt = e.lstarFromInt(iA);
        this.f2920a = bVarFromInt.getHue();
        this.f2921b = bVarFromInt.getChroma();
        this.c = fLstarFromInt;
    }

    public static int a(float f, float f2, float f3) {
        float f4;
        float f5;
        float f6;
        i iVar = i.k;
        float f7 = f2;
        if (f7 < 1.0d || Math.round(f3) <= 0.0d || Math.round(f3) >= 100.0d) {
            return e.intFromLstar(f3);
        }
        float fSanitizeDegrees = g.sanitizeDegrees(f);
        float f8 = f7;
        boolean z = true;
        float f9 = 0.0f;
        b bVar = null;
        while (Math.abs(f9 - f7) >= 0.4f) {
            float f10 = 100.0f;
            float f11 = 1000.0f;
            float f12 = 1000.0f;
            float f13 = 0.0f;
            b bVar2 = null;
            while (true) {
                if (Math.abs(f13 - f10) <= 0.01f) {
                    f4 = f7;
                    f5 = fSanitizeDegrees;
                    break;
                }
                float f14 = ((f10 - f13) / 2.0f) + f13;
                int i = b.a(f14, f8, fSanitizeDegrees).getInt();
                float fLstarFromInt = e.lstarFromInt(i);
                float fAbs = Math.abs(f3 - fLstarFromInt);
                if (fAbs < 0.2f) {
                    b bVarFromInt = b.fromInt(i);
                    f6 = 0.0f;
                    b bVarA = b.a(bVarFromInt.getJ(), bVarFromInt.getChroma(), fSanitizeDegrees);
                    float jStar = bVarFromInt.getJStar() - bVarA.getJStar();
                    float aStar = bVarFromInt.getAStar() - bVarA.getAStar();
                    float bStar = bVarFromInt.getBStar() - bVarA.getBStar();
                    float f15 = bStar * bStar;
                    double dSqrt = Math.sqrt(f15 + (aStar * aStar) + (jStar * jStar));
                    f4 = f7;
                    f5 = fSanitizeDegrees;
                    float fPow = (float) (Math.pow(dSqrt, 0.63d) * 1.41d);
                    if (fPow <= 1.0f && fPow <= f11) {
                        f11 = fPow;
                        bVar2 = bVarFromInt;
                        f12 = fAbs;
                    }
                } else {
                    f4 = f7;
                    f5 = fSanitizeDegrees;
                    f6 = 0.0f;
                }
                if (f12 == f6 && f11 < 1.0E-9f) {
                    break;
                }
                if (fLstarFromInt < f3) {
                    f13 = f14;
                } else {
                    f10 = f14;
                }
                f7 = f4;
                fSanitizeDegrees = f5;
            }
            if (!z) {
                if (bVar2 == null) {
                    f7 = f8;
                } else {
                    f7 = f4;
                    f9 = f8;
                    bVar = bVar2;
                }
                f8 = ((f7 - f9) / 2.0f) + f9;
            } else {
                if (bVar2 != null) {
                    return bVar2.b(iVar);
                }
                f8 = ((f4 - f9) / 2.0f) + f9;
                z = false;
                f7 = f4;
            }
            fSanitizeDegrees = f5;
        }
        if (bVar == null) {
            return e.intFromLstar(f3);
        }
        return bVar.b(iVar);
    }
}
