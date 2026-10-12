package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* loaded from: classes.dex */
class n extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f3148a;

    public n(o oVar) {
        this.f3148a = oVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        o oVar = this.f3148a;
        oVar.cancelAnimatorImmediately();
        Animatable2Compat.AnimationCallback animationCallback = oVar.k;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(oVar.f3143a);
        }
    }
}
