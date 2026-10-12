package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3424a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3425b;

    public g(View view, float f) {
        this.f3424a = view;
        this.f3425b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3424a.setAlpha(this.f3425b);
    }
}
