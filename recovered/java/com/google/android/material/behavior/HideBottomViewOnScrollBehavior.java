package com.google.android.material.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.animation.AnimationUtils;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    protected static final int ENTER_ANIMATION_DURATION = 225;
    protected static final int EXIT_ANIMATION_DURATION = 175;

    /* renamed from: a, reason: collision with root package name */
    public int f2791a;

    /* renamed from: b, reason: collision with root package name */
    public int f2792b;
    public int c;
    public ViewPropertyAnimator d;

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
        return i == 2;
    }

    public HideBottomViewOnScrollBehavior() {
        this.f2791a = 0;
        this.f2792b = 2;
        this.c = 0;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2791a = 0;
        this.f2792b = 2;
        this.c = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        this.f2791a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.onLayoutChild(coordinatorLayout, v, i);
    }

    public void setAdditionalHiddenOffsetY(@NonNull V v, @Dimension int i) {
        this.c = i;
        if (this.f2792b == 1) {
            v.setTranslationY(this.f2791a + i);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        if (i2 > 0) {
            slideDown(v);
        } else if (i2 < 0) {
            slideUp(v);
        }
    }

    public boolean isScrolledUp() {
        return this.f2792b == 2;
    }

    public void slideUp(@NonNull V v) {
        slideUp(v, true);
    }

    public void slideUp(@NonNull V v, boolean z) {
        if (isScrolledUp()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f2792b = 2;
        if (z) {
            this.d = v.animate().translationY(0).setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR).setDuration(225L).setListener(new a(this));
        } else {
            v.setTranslationY(0);
        }
    }

    public boolean isScrolledDown() {
        return this.f2792b == 1;
    }

    public void slideDown(@NonNull V v) {
        slideDown(v, true);
    }

    public void slideDown(@NonNull V v, boolean z) {
        if (isScrolledDown()) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f2792b = 1;
        int i = this.f2791a + this.c;
        if (z) {
            this.d = v.animate().translationY(i).setInterpolator(AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR).setDuration(175L).setListener(new a(this));
        } else {
            v.setTranslationY(i);
        }
    }
}
