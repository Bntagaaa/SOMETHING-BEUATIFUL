package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

/* loaded from: classes.dex */
class s extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f3487a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3488b;

    public s(View view, float f) {
        this.f3487a = view;
        this.f3488b = f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3487a.setTranslationX(this.f3488b);
    }
}
