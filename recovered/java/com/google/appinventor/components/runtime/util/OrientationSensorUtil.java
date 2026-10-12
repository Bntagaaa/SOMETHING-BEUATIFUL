package com.google.appinventor.components.runtime.util;

/* loaded from: classes.dex */
public class OrientationSensorUtil {
    private OrientationSensorUtil() {
    }

    public static float mod(float f, float f2) {
        float f3 = f % f2;
        return (f3 == 0.0f || Math.signum(f) == Math.signum(f2)) ? f3 : f3 + f2;
    }

    public static float normalizeAzimuth(float f) {
        return mod(f, 360.0f);
    }

    public static float normalizePitch(float f) {
        return mod(f + 180.0f, 360.0f) - 180.0f;
    }

    public static float normalizeRoll(float f) {
        float fMax = Math.max(Math.min(f, 180.0f), -180.0f);
        if (fMax >= -90.0f && fMax <= 90.0f) {
            return fMax;
        }
        float f2 = 180.0f - fMax;
        return f2 >= 270.0f ? f2 - 360.0f : f2;
    }
}
