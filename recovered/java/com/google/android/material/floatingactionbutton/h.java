package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
class h extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f3036a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f3037b;
    public final /* synthetic */ m c;

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        m mVar = this.c;
        mVar.r = 0;
        mVar.l = null;
        f fVar = this.f3037b;
        if (fVar != null) {
            fVar.onShown();
        }
    }

    public h(m mVar, boolean z, f fVar) {
        this.c = mVar;
        this.f3036a = z;
        this.f3037b = fVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        m mVar = this.c;
        mVar.v.internalSetVisibility(0, this.f3036a);
        mVar.r = 2;
        mVar.l = animator;
    }
}
