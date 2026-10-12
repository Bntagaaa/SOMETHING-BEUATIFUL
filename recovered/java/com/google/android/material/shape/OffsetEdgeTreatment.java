package com.google.android.material.shape;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class OffsetEdgeTreatment extends EdgeTreatment {

    /* renamed from: a, reason: collision with root package name */
    public final EdgeTreatment f3186a;

    /* renamed from: b, reason: collision with root package name */
    public final float f3187b;

    public OffsetEdgeTreatment(@NonNull EdgeTreatment edgeTreatment, float f) {
        this.f3186a = edgeTreatment;
        this.f3187b = f;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public void getEdgePath(float f, float f2, float f3, @NonNull ShapePath shapePath) {
        this.f3186a.getEdgePath(f, f2 - this.f3187b, f3, shapePath);
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public final boolean a() {
        return this.f3186a.a();
    }
}
