package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class t extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3489a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3490b;

    public t(View view, float f) {
        this.f3489a = view;
        this.f3490b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3489a.setTranslationY(this.f3490b);
    }
}
