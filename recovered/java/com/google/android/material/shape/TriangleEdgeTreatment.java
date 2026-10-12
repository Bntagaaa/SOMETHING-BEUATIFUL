package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class TriangleEdgeTreatment extends EdgeTreatment {

    /* renamed from: a, reason: collision with root package name */
    public final float f3212a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3213b;

    public TriangleEdgeTreatment(float f, boolean z) {
        this.f3212a = f;
        this.f3213b = z;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        float f4 = this.f3212a;
        shapePath.lineTo(f2 - (f4 * f3), 0.0f);
        shapePath.lineTo(f2, this.f3213b ? f4 * f3 : (-f4) * f3);
        shapePath.lineTo((f4 * f3) + f2, 0.0f);
        shapePath.lineTo(f, 0.0f);
    }
}
