package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3030a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f3031b;
    public final /* synthetic */ ExtendedFloatingActionButton.OnChangedCallback c;

    public e(c cVar, ExtendedFloatingActionButton.OnChangedCallback onChangedCallback) {
        this.f3031b = cVar;
        this.c = onChangedCallback;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f3031b.onAnimationStart(animator);
        this.f3030a = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f3030a = true;
        this.f3031b.onAnimationCancel();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        c cVar = this.f3031b;
        cVar.onAnimationEnd();
        if (this.f3030a) {
            return;
        }
        cVar.onChange(this.c);
    }
}
