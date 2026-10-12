package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class r extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3485a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3486b;
    public final /* synthetic */ float c;

    public r(View view, float f, float f2) {
        this.f3485a = view;
        this.f3486b = f;
        this.c = f2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        float f = this.f3486b;
        View view = this.f3485a;
        view.setScaleX(f);
        view.setScaleY(this.c);
    }
}
