package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes.dex */
class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f2835a;

    public a(BottomSheetBehavior bottomSheetBehavior) {
        this.f2835a = bottomSheetBehavior;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        MaterialShapeDrawable materialShapeDrawable = this.f2835a.i;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setInterpolation(fFloatValue);
        }
    }
}
