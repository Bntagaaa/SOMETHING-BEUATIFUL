package com.google.android.material.snackbar;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f3251a;

    public e(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.f3251a = baseTransientBottomBar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        int i = BaseTransientBottomBar.ANIMATION_MODE_SLIDE;
        this.f3251a.view.setTranslationY(iIntValue);
    }
}
