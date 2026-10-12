package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f3315a;

    public e(a aVar) {
        this.f3315a = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        this.f3315a.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
