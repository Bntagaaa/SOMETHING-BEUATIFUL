package com.google.android.material.transition.platform;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3468a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3469b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;
    public final /* synthetic */ float e;

    public f(View view, float f, float f2, float f3, float f4) {
        this.f3468a = view;
        this.f3469b = f;
        this.c = f2;
        this.d = f3;
        this.e = f4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f3468a.setAlpha(x.d(this.f3469b, this.c, this.d, this.e, ((Float) valueAnimator.getAnimatedValue()).floatValue(), false));
    }
}
