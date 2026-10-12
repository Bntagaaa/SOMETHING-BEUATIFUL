package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3034a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f3035b;
    public final /* synthetic */ f c;
    public final /* synthetic */ m d;

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        m mVar = this.d;
        mVar.r = 0;
        mVar.l = null;
        if (this.f3034a) {
            return;
        }
        boolean z = this.f3035b;
        mVar.v.internalSetVisibility(z ? 8 : 4, z);
        f fVar = this.c;
        if (fVar != null) {
            fVar.onHidden();
        }
    }

    public g(m mVar, boolean z, f fVar) {
        this.d = mVar;
        this.f3035b = z;
        this.c = fVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        m mVar = this.d;
        mVar.v.internalSetVisibility(0, this.f3035b);
        mVar.r = 1;
        mVar.l = animator;
        this.f3034a = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f3034a = true;
    }
}
