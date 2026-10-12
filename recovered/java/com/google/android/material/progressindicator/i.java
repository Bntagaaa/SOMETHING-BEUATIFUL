package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.annotation.NonNull;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;

/* loaded from: classes.dex */
abstract class i<T extends Animator> {

    /* renamed from: a, reason: collision with root package name */
    public IndeterminateDrawable f3143a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f3144b;
    public final int[] c;

    public abstract void cancelAnimatorImmediately();

    public float getFractionInRange(int i, int i2, int i3) {
        return (i - i2) / i3;
    }

    public abstract void invalidateSpecValues();

    public abstract void registerAnimatorsCompleteCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback);

    public abstract void requestCancelAnimatorAfterCurrentCycle();

    public abstract void startAnimator();

    public abstract void unregisterAnimatorsCompleteCallback();

    public i(int i) {
        this.f3144b = new float[i * 2];
        this.c = new int[i];
    }

    public void registerDrawable(@NonNull IndeterminateDrawable indeterminateDrawable) {
        this.f3143a = indeterminateDrawable;
    }
}
