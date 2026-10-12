package com.google.android.material.floatingactionbutton;

import android.animation.ValueAnimator;
import android.graphics.Matrix;
import com.google.android.material.animation.AnimationUtils;

/* loaded from: classes.dex */
class j implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f3038a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f3039b;
    public final /* synthetic */ float c;
    public final /* synthetic */ float d;
    public final /* synthetic */ float e;
    public final /* synthetic */ float f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ float f3040g;
    public final /* synthetic */ Matrix h;
    public final /* synthetic */ m i;

    public j(m mVar, float f, float f2, float f3, float f4, float f5, float f6, float f7, Matrix matrix) {
        this.i = mVar;
        this.f3038a = f;
        this.f3039b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = f6;
        this.f3040g = f7;
        this.h = matrix;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        m mVar = this.i;
        mVar.v.setAlpha(AnimationUtils.lerp(this.f3038a, this.f3039b, 0.0f, 0.2f, fFloatValue));
        FloatingActionButton floatingActionButton = mVar.v;
        float f = this.c;
        float f2 = this.d;
        floatingActionButton.setScaleX(AnimationUtils.lerp(f, f2, fFloatValue));
        mVar.v.setScaleY(AnimationUtils.lerp(this.e, f2, fFloatValue));
        float f3 = this.f;
        float f4 = this.f3040g;
        mVar.p = AnimationUtils.lerp(f3, f4, fFloatValue);
        float fLerp = AnimationUtils.lerp(f3, f4, fFloatValue);
        Matrix matrix = this.h;
        mVar.a(fLerp, matrix);
        mVar.v.setImageMatrix(matrix);
    }
}
