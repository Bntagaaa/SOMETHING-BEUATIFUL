package com.google.android.material.shape;

import androidx.annotation.NonNull;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes.dex */
class b implements ShapeAppearanceModel.CornerSizeUnaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f3215a;

    public b(float f) {
        this.f3215a = f;
    }

    @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
    @NonNull
    public CornerSize apply(@NonNull CornerSize cornerSize) {
        return cornerSize instanceof RelativeCornerSize ? cornerSize : new AdjustedCornerSize(this.f3215a, cornerSize);
    }
}
