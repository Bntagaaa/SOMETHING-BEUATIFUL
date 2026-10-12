package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class o extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3434a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3435b;
    public final /* synthetic */ float c;

    public o(View view, float f, float f2) {
        this.f3434a = view;
        this.f3435b = f;
        this.c = f2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        float f = this.f3435b;
        View view = this.f3434a;
        view.setScaleX(f);
        view.setScaleY(this.c);
    }
}
