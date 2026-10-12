package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;

/* loaded from: classes.dex */
public class VelocityMatrix {

    /* renamed from: a, reason: collision with root package name */
    public float f608a;

    /* renamed from: b, reason: collision with root package name */
    public float f609b;
    public float c;
    public float d;
    public float e;
    public float f;

    public void clear() {
        this.e = 0.0f;
        this.d = 0.0f;
        this.c = 0.0f;
        this.f609b = 0.0f;
        this.f608a = 0.0f;
    }

    public void setRotationVelocity(SplineSet splineSet, float f) {
        if (splineSet != null) {
            this.e = splineSet.getSlope(f);
            this.f = splineSet.get(f);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.c = splineSet.getSlope(f);
        }
        if (splineSet2 != null) {
            this.d = splineSet2.getSlope(f);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f) {
        if (splineSet != null) {
            this.f608a = splineSet.getSlope(f);
        }
        if (splineSet2 != null) {
            this.f609b = splineSet2.getSlope(f);
        }
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f) {
        if (keyCycleOscillator != null) {
            this.e = keyCycleOscillator.getSlope(f);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator != null) {
            this.c = keyCycleOscillator.getSlope(f);
        }
        if (keyCycleOscillator2 != null) {
            this.d = keyCycleOscillator2.getSlope(f);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f) {
        if (keyCycleOscillator == null && keyCycleOscillator2 == null) {
            return;
        }
        if (keyCycleOscillator == null) {
            this.f608a = keyCycleOscillator.getSlope(f);
        }
        if (keyCycleOscillator2 == null) {
            this.f609b = keyCycleOscillator2.getSlope(f);
        }
    }

    public void applyTransform(float f, float f2, int i, int i2, float[] fArr) {
        float f3 = fArr[0];
        float f4 = fArr[1];
        float f5 = (f2 - 0.5f) * 2.0f;
        float f6 = f3 + this.c;
        float f7 = f4 + this.d;
        float f8 = (this.f608a * (f - 0.5f) * 2.0f) + f6;
        float f9 = (this.f609b * f5) + f7;
        float radians = (float) Math.toRadians(this.f);
        float radians2 = (float) Math.toRadians(this.e);
        double d = radians;
        double d2 = i2 * f5;
        float fSin = (((float) ((Math.sin(d) * ((-i) * r7)) - (Math.cos(d) * d2))) * radians2) + f8;
        float fCos = (radians2 * ((float) ((Math.cos(d) * (i * r7)) - (Math.sin(d) * d2)))) + f9;
        fArr[0] = fSin;
        fArr[1] = fCos;
    }
}
