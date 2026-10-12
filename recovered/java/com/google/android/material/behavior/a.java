package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
class a extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HideBottomViewOnScrollBehavior f2800a;

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2800a.d = null;
    }

    public a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f2800a = hideBottomViewOnScrollBehavior;
    }
}
