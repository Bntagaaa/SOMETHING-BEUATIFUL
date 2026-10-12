package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class p extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3436a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3437b;

    public p(View view, float f) {
        this.f3436a = view;
        this.f3437b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3436a.setTranslationX(this.f3437b);
    }
}
