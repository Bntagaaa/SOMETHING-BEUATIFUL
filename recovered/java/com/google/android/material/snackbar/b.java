package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f3248a;

    public b(BaseTransientBottomBar baseTransientBottomBar) {
        this.f3248a = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        this.f3248a.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
