package com.google.android.material.navigation;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f3121a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ NavigationBarItemView f3122b;

    public a(NavigationBarItemView navigationBarItemView, float f) {
        this.f3122b = navigationBarItemView;
        this.f3121a = f;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        int[] iArr = NavigationBarItemView.C;
        NavigationBarItemView navigationBarItemView = this.f3122b;
        View view = navigationBarItemView.j;
        if (view != null) {
            navigationBarItemView.u.updateForProgress(fFloatValue, this.f3121a, view);
        }
        navigationBarItemView.v = fFloatValue;
    }
}
