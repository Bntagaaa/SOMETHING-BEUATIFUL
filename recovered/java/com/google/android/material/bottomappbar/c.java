package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;

/* loaded from: classes.dex */
class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2814a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionMenuView f2815b;
    public final /* synthetic */ int c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ BottomAppBar e;

    public c(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.e = bottomAppBar;
        this.f2815b = actionMenuView;
        this.c = i;
        this.d = z;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2814a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        if (this.f2814a) {
            return;
        }
        BottomAppBar bottomAppBar = this.e;
        int i = bottomAppBar.i0;
        boolean z = i != 0;
        bottomAppBar.replaceMenu(i);
        bottomAppBar.w(this.f2815b, this.c, this.d, z);
    }
}
