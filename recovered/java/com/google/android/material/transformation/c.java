package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.circularreveal.CircularRevealWidget;

/* loaded from: classes.dex */
class c extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CircularRevealWidget f3397a;

    public c(CircularRevealWidget circularRevealWidget) {
        this.f3397a = circularRevealWidget;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        CircularRevealWidget circularRevealWidget = this.f3397a;
        CircularRevealWidget.RevealInfo revealInfo = circularRevealWidget.getRevealInfo();
        revealInfo.radius = Float.MAX_VALUE;
        circularRevealWidget.setRevealInfo(revealInfo);
    }
}
