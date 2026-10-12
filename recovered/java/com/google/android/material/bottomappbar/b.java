package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
class b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f2813a;

    public b(BottomAppBar bottomAppBar) {
        this.f2813a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        int i = BottomAppBar.r0;
        this.f2813a.getClass();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        int i = BottomAppBar.r0;
        BottomAppBar bottomAppBar = this.f2813a;
        bottomAppBar.getClass();
        bottomAppBar.j0 = false;
        bottomAppBar.b0 = null;
    }
}
