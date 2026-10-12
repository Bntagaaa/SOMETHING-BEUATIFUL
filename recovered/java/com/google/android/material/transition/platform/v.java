package com.google.android.material.transition.platform;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;

/* loaded from: classes.dex */
class v implements ShapeAppearanceModel.CornerSizeUnaryOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RectF f3491a;

    public v(RectF rectF) {
        this.f3491a = rectF;
    }

    @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
    @NonNull
    public CornerSize apply(@NonNull CornerSize cornerSize) {
        if (cornerSize instanceof RelativeCornerSize) {
            return cornerSize;
        }
        RectF rectF = this.f3491a;
        return new RelativeCornerSize(cornerSize.getCornerSize(rectF) / rectF.height());
    }
}
