package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3420a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3421b;

    public e(View view, float f) {
        this.f3420a = view;
        this.f3421b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3420a.setAlpha(this.f3421b);
    }
}
