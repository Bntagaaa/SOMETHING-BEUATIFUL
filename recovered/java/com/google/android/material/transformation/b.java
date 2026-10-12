package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import com.google.android.material.circularreveal.CircularRevealWidget;

/* loaded from: classes.dex */
class b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CircularRevealWidget f3395a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Drawable f3396b;

    public b(CircularRevealWidget circularRevealWidget, Drawable drawable) {
        this.f3395a = circularRevealWidget;
        this.f3396b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f3395a.setCircularRevealOverlayDrawable(this.f3396b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f3395a.setCircularRevealOverlayDrawable(null);
    }
}
