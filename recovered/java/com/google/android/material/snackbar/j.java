package com.google.android.material.snackbar;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.snackbar.BaseTransientBottomBar;

/* loaded from: classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseTransientBottomBar f3257a;

    public j(BaseTransientBottomBar baseTransientBottomBar) {
        this.f3257a = baseTransientBottomBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        BaseTransientBottomBar baseTransientBottomBar = this.f3257a;
        BaseTransientBottomBar.SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.view;
        if (snackbarBaseLayout == null) {
            return;
        }
        if (snackbarBaseLayout.getParent() != null) {
            baseTransientBottomBar.view.setVisibility(0);
        }
        BaseTransientBottomBar.SnackbarBaseLayout snackbarBaseLayout2 = baseTransientBottomBar.view;
        if (snackbarBaseLayout2.f3235b == 1) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
            valueAnimatorOfFloat.addUpdateListener(new b(baseTransientBottomBar));
            ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
            valueAnimatorOfFloat2.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
            valueAnimatorOfFloat2.addUpdateListener(new c(baseTransientBottomBar));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
            animatorSet.setDuration(150L);
            animatorSet.addListener(new k(baseTransientBottomBar));
            animatorSet.start();
            return;
        }
        int height = snackbarBaseLayout2.getHeight();
        ViewGroup.LayoutParams layoutParams = baseTransientBottomBar.view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            height += ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        baseTransientBottomBar.view.setTranslationY(height);
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setIntValues(height, 0);
        valueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        valueAnimator.setDuration(250L);
        valueAnimator.addListener(new d(baseTransientBottomBar));
        valueAnimator.addUpdateListener(new e(baseTransientBottomBar, height));
        valueAnimator.start();
    }
}
