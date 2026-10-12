package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* loaded from: classes.dex */
class e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BottomAppBar f2818a;

    public e(BottomAppBar bottomAppBar) {
        this.f2818a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        BottomAppBar bottomAppBar = this.f2818a;
        bottomAppBar.p0.onAnimationStart(animator);
        View viewQ = bottomAppBar.q();
        FloatingActionButton floatingActionButton = viewQ instanceof FloatingActionButton ? (FloatingActionButton) viewQ : null;
        if (floatingActionButton != null) {
            floatingActionButton.setTranslationX(bottomAppBar.r(bottomAppBar.c0));
        }
    }
}
