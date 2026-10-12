package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* loaded from: classes.dex */
class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f3134a;

    public c(d dVar) {
        this.f3134a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        d dVar = this.f3134a;
        dVar.cancelAnimatorImmediately();
        Animatable2Compat.AnimationCallback animationCallback = dVar.k;
        if (animationCallback != null) {
            animationCallback.onAnimationEnd(dVar.f3143a);
        }
    }
}
