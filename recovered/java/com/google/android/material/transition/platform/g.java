package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3470a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3471b;

    public g(View view, float f) {
        this.f3470a = view;
        this.f3471b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3470a.setAlpha(this.f3471b);
    }
}
