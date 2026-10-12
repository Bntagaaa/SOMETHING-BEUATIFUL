package com.google.android.material.color;

/* loaded from: classes.dex */
final class a {
    private a() {
    }

    public static int harmonize(int i, int i2) {
        f fVarFromInt = f.fromInt(i);
        f fVarFromInt2 = f.fromInt(i2);
        float fMin = Math.min(g.differenceDegrees(fVarFromInt.getHue(), fVarFromInt2.getHue()) * 0.5f, 15.0f);
        float hue = fVarFromInt.getHue();
        float hue2 = fVarFromInt2.getHue() - fVarFromInt.getHue();
        float f = hue2 + 360.0f;
        float f2 = hue2 - 360.0f;
        float fAbs = Math.abs(hue2);
        float fAbs2 = Math.abs(f);
        float fAbs3 = Math.abs(f2);
        float f3 = -1.0f;
        if (fAbs > fAbs2 || fAbs > fAbs3 ? !(fAbs2 > fAbs || fAbs2 > fAbs3 ? f2 < 0.0d : f < 0.0d) : hue2 >= 0.0d) {
            f3 = 1.0f;
        }
        return f.from(g.sanitizeDegrees((fMin * f3) + hue), fVarFromInt.getChroma(), fVarFromInt.getTone()).toInt();
    }
}
