package com.google.android.material.transition;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes.dex */
class s implements ShapeAppearanceModel.CornerSizeUnaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RectF f3497a;

    public s(RectF rectF) {
        this.f3497a = rectF;
    }

    @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
    @NonNull
    public CornerSize apply(@NonNull CornerSize cornerSize) {
        if (cornerSize instanceof RelativeCornerSize) {
            return cornerSize;
        }
        RectF rectF = this.f3497a;
        return new RelativeCornerSize(cornerSize.getCornerSize(rectF) / rectF.height());
    }
}
