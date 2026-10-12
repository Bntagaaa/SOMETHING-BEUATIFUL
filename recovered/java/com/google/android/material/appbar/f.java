package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f2768a;

    public f(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f2768a = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        ViewGroup viewGroup;
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        CollapsingToolbarLayout collapsingToolbarLayout = this.f2768a;
        if (iIntValue != collapsingToolbarLayout.q) {
            if (collapsingToolbarLayout.o != null && (viewGroup = collapsingToolbarLayout.c) != null) {
                ViewCompat.postInvalidateOnAnimation(viewGroup);
            }
            collapsingToolbarLayout.q = iIntValue;
            ViewCompat.postInvalidateOnAnimation(collapsingToolbarLayout);
        }
    }
}
