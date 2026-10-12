package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes.dex */
public final class ScaleProvider implements VisibilityAnimatorProvider {

    /* renamed from: a, reason: collision with root package name */
    public float f3456a;

    /* renamed from: b, reason: collision with root package name */
    public float f3457b;
    public float c;
    public float d;
    public boolean e;
    public boolean f;

    public ScaleProvider() {
        this(true);
    }

    public ScaleProvider(boolean z) {
        this.f3456a = 1.0f;
        this.f3457b = 1.1f;
        this.c = 0.8f;
        this.d = 1.0f;
        this.f = true;
        this.e = z;
    }

    public boolean isGrowing() {
        return this.e;
    }

    public void setGrowing(boolean z) {
        this.e = z;
    }

    public boolean isScaleOnDisappear() {
        return this.f;
    }

    public void setScaleOnDisappear(boolean z) {
        this.f = z;
    }

    public float getOutgoingStartScale() {
        return this.f3456a;
    }

    public void setOutgoingStartScale(float f) {
        this.f3456a = f;
    }

    public float getOutgoingEndScale() {
        return this.f3457b;
    }

    public void setOutgoingEndScale(float f) {
        this.f3457b = f;
    }

    public float getIncomingStartScale() {
        return this.c;
    }

    public void setIncomingStartScale(float f) {
        this.c = f;
    }

    public float getIncomingEndScale() {
        return this.d;
    }

    public void setIncomingEndScale(float f) {
        this.d = f;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (this.e) {
            return a(view, this.c, this.d);
        }
        return a(view, this.f3457b, this.f3456a);
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        if (!this.f) {
            return null;
        }
        if (this.e) {
            return a(view, this.f3456a, this.f3457b);
        }
        return a(view, this.d, this.c);
    }

    public static ObjectAnimator a(View view, float f, float f2) {
        float scaleX = view.getScaleX();
        float scaleY = view.getScaleY();
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, scaleX * f, scaleX * f2), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, f * scaleY, f2 * scaleY));
        objectAnimatorOfPropertyValuesHolder.addListener(new r(view, scaleX, scaleY));
        return objectAnimatorOfPropertyValuesHolder;
    }
}
