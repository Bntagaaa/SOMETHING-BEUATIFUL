package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
class m extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f3147a;

    public m(o oVar) {
        this.f3147a = oVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        o oVar = this.f3147a;
        oVar.h = (oVar.h + 1) % oVar.f3149g.indicatorColors.length;
        oVar.i = true;
    }
}
