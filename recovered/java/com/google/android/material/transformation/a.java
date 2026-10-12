package com.google.android.material.transformation;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3394a;

    public a(View view) {
        this.f3394a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f3394a.invalidate();
    }
}
