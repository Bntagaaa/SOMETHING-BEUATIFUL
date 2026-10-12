package com.google.android.material.tabs;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TabLayout f3289a;

    public d(TabLayout tabLayout) {
        this.f3289a = tabLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        this.f3289a.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
