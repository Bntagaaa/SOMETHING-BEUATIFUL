package com.google.android.material.bottomappbar;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;

/* loaded from: classes.dex */
public class BottomAppBarTopEdgeTreatment extends EdgeTreatment implements Cloneable {

    /* renamed from: a, reason: collision with root package name */
    public float f2810a;

    /* renamed from: b, reason: collision with root package name */
    public float f2811b;
    public float c;
    public float d;
    public float e;
    public float f = -1.0f;

    public BottomAppBarTopEdgeTreatment(float f, float f2, float f3) {
        this.f2811b = f;
        this.f2810a = f2;
        b(f3);
        this.e = 0.0f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float f4;
        float f5;
        float f6 = this.c;
        if (f6 == 0.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f7 = ((this.f2811b * 2.0f) + f6) / 2.0f;
        float f8 = f3 * this.f2810a;
        float f9 = f2 + this.e;
        float fA = _COROUTINE.a.a(1.0f, f3, f7, this.d * f3);
        if (fA / f7 >= 1.0f) {
            shapePath.lineTo(f, 0.0f);
            return;
        }
        float f10 = this.f;
        float f11 = f10 * f3;
        boolean z = f10 == -1.0f || Math.abs((f10 * 2.0f) - f6) < 0.1f;
        if (z) {
            f4 = fA;
            f5 = 0.0f;
        } else {
            f5 = 1.75f;
            f4 = 0.0f;
        }
        float f12 = f7 + f8;
        float f13 = f4 + f8;
        float fSqrt = (float) Math.sqrt((f12 * f12) - (f13 * f13));
        float f14 = f9 - fSqrt;
        float f15 = f9 + fSqrt;
        float degrees = (float) Math.toDegrees(Math.atan(fSqrt / f13));
        float f16 = (90.0f - degrees) + f5;
        shapePath.lineTo(f14, 0.0f);
        float f17 = f14 - f8;
        float f18 = f14 + f8;
        float f19 = f8 * 2.0f;
        shapePath.addArc(f17, 0.0f, f18, f19, 270.0f, degrees);
        if (z) {
            shapePath.addArc(f9 - f7, (-f7) - f4, f9 + f7, f7 - f4, 180.0f - f16, (f16 * 2.0f) - 180.0f);
        } else {
            float f20 = this.f2811b;
            float f21 = f11 * 2.0f;
            float f22 = f20 + f21;
            float f23 = f9 - f7;
            shapePath.addArc(f23, -(f11 + f20), f22 + f23, f20 + f11, 180.0f - f16, ((f16 * 2.0f) - 180.0f) / 2.0f);
            float f24 = f9 + f7;
            float f25 = this.f2811b;
            shapePath.lineTo(f24 - ((f25 / 2.0f) + f11), f25 + f11);
            float f26 = this.f2811b;
            shapePath.addArc(f24 - (f21 + f26), -(f11 + f26), f24, f26 + f11, 90.0f, f16 - 90.0f);
        }
        shapePath.addArc(f15 - f8, 0.0f, f15 + f8, f19, 270.0f - degrees, degrees);
        shapePath.lineTo(f, 0.0f);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getFabDiameter() {
        return this.c;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setFabDiameter(float f) {
        this.c = f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public float getHorizontalOffset() {
        return this.e;
    }

    public final void b(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
        }
        this.d = f;
    }

    public float getFabCornerRadius() {
        return this.f;
    }

    public void setFabCornerSize(float f) {
        this.f = f;
    }
}
