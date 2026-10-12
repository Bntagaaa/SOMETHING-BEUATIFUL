package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class FadeThroughProvider implements VisibilityAnimatorProvider {

    /* renamed from: a, reason: collision with root package name */
    public float f3439a = 0.35f;

    public float getProgressThreshold() {
        return this.f3439a;
    }

    public void setProgressThreshold(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.f3439a = f;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        float f = this.f3439a;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new f(view, 0.0f, alpha, f, 1.0f));
        valueAnimatorOfFloat.addListener(new g(view, alpha));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        float f = this.f3439a;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new f(view, alpha, 0.0f, 0.0f, f));
        valueAnimatorOfFloat.addListener(new g(view, alpha));
        return valueAnimatorOfFloat;
    }
}
