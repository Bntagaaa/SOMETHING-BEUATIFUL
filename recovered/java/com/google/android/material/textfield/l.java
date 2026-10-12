package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class l implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f3330a;

    public l(i iVar) {
        this.f3330a = iVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        this.f3330a.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
