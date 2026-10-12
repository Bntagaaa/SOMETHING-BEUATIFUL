package com.google.android.material.floatingactionbutton;

import android.animation.Animator;

/* loaded from: classes.dex */
class a {

    /* renamed from: a, reason: collision with root package name */
    public Animator f3022a;

    public void onNextAnimationStart(Animator animator) {
        cancelCurrent();
        this.f3022a = animator;
    }

    public void cancelCurrent() {
        Animator animator = this.f3022a;
        if (animator != null) {
            animator.cancel();
        }
    }

    public void clear() {
        this.f3022a = null;
    }
}
