package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class y implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f3353a;

    public y(TextInputLayout textInputLayout) {
        this.f3353a = textInputLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        this.f3353a.C0.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
