package com.google.android.material.math;

/* loaded from: classes.dex */
public final class MathUtils {
    public static final float DEFAULT_EPSILON = 1.0E-4f;

    public static boolean geq(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    public static float lerp(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    private MathUtils() {
    }

    public static float dist(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    public static float distanceToFurthestCorner(float f, float f2, float f3, float f4, float f5, float f6) {
        float fDist = dist(f, f2, f3, f4);
        float fDist2 = dist(f, f2, f5, f4);
        float fDist3 = dist(f, f2, f5, f6);
        float fDist4 = dist(f, f2, f3, f6);
        return (fDist <= fDist2 || fDist <= fDist3 || fDist <= fDist4) ? (fDist2 <= fDist3 || fDist2 <= fDist4) ? fDist3 > fDist4 ? fDist3 : fDist4 : fDist2 : fDist;
    }

    public static float floorMod(float f, int i) {
        float f2 = i;
        int i2 = (int) (f / f2);
        if (Math.signum(f) * f2 < 0.0f && i2 * i != f) {
            i2--;
        }
        return f - (i2 * i);
    }

    public static int floorMod(int i, int i2) {
        int i3 = i / i2;
        if ((i ^ i2) < 0 && i3 * i2 != i) {
            i3--;
        }
        return i - (i3 * i2);
    }
}
