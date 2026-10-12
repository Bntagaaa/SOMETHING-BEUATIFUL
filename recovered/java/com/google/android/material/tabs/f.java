package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.tabs.TabLayout;

/* loaded from: classes.dex */
class f extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3292a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TabLayout.c f3293b;

    public f(TabLayout.c cVar, int i) {
        this.f3293b = cVar;
        this.f3292a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f3293b.f3280b = this.f3292a;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3293b.f3280b = this.f3292a;
    }
}
