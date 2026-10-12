package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class q extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3495a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3496b;

    public q(View view, float f) {
        this.f3495a = view;
        this.f3496b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3495a.setTranslationY(this.f3496b);
    }
}
