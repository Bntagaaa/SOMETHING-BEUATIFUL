package com.google.android.material.transition;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
class d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3418a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3419b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;

    public d(View view, float f, float f2, float f3) {
        this.f3418a = view;
        this.f3419b = f;
        this.c = f2;
        this.d = f3;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f3418a.setAlpha(u.d(this.f3419b, this.c, 0.0f, this.d, fFloatValue, false));
    }
}
