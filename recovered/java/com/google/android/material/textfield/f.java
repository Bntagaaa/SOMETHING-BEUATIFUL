package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
class f implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f3316a;

    public f(a aVar) {
        this.f3316a = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        a aVar = this.f3316a;
        aVar.c.setScaleX(fFloatValue);
        aVar.c.setScaleY(fFloatValue);
    }
}
