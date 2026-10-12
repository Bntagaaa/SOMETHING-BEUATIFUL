package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3466a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3467b;

    public e(View view, float f) {
        this.f3466a = view;
        this.f3467b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3466a.setAlpha(this.f3467b);
    }
}
