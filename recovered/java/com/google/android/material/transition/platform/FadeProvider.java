package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class FadeProvider implements VisibilityAnimatorProvider {

    /* renamed from: a, reason: collision with root package name */
    public float f3438a = 1.0f;

    public float getIncomingEndThreshold() {
        return this.f3438a;
    }

    public void setIncomingEndThreshold(float f) {
        this.f3438a = f;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() != 0.0f ? view.getAlpha() : 1.0f;
        float f = this.f3438a;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new d(view, 0.0f, alpha, f));
        valueAnimatorOfFloat.addListener(new e(view, alpha));
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        float alpha = view.getAlpha() == 0.0f ? 1.0f : view.getAlpha();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new d(view, alpha, 0.0f, 1.0f));
        valueAnimatorOfFloat.addListener(new e(view, alpha));
        return valueAnimatorOfFloat;
    }
}
