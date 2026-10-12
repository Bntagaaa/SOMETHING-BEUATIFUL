package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
class k extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f3145a;

    public k(l lVar) {
        this.f3145a = lVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        l lVar = this.f3145a;
        lVar.f3146g = (lVar.f3146g + 1) % lVar.f.indicatorColors.length;
        lVar.h = true;
    }
}
