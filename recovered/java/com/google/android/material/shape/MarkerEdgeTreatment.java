package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class MarkerEdgeTreatment extends EdgeTreatment {

    /* renamed from: a, reason: collision with root package name */
    public final float f3179a;

    public MarkerEdgeTreatment(float f) {
        this.f3179a = f - 0.001f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float f4 = this.f3179a;
        float fSqrt = (float) ((Math.sqrt(2.0d) * f4) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(f4, 2.0d) - Math.pow(fSqrt, 2.0d));
        shapePath.reset(f2 - fSqrt, ((float) (-((Math.sqrt(2.0d) * f4) - f4))) + fSqrt2);
        shapePath.lineTo(f2, (float) (-((Math.sqrt(2.0d) * f4) - f4)));
        shapePath.lineTo(f2 + fSqrt, ((float) (-((Math.sqrt(2.0d) * f4) - f4))) + fSqrt2);
    }
}
