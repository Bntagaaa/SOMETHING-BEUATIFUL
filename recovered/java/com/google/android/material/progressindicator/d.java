package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.color.MaterialColors;
import com.google.appinventor.components.runtime.util.ErrorMessages;

/* loaded from: classes.dex */
final class d extends i<ObjectAnimator> {
    public static final int[] l = {0, 1350, 2700, 4050};
    public static final int[] m = {667, 2017, 3367, 4717};
    public static final int[] n = {1000, 2350, ErrorMessages.ERROR_INVALID_CONFIGURATION_VALUE, 5050};
    public static final Property o = new a(Float.class, "animationFraction");
    public static final Property p = new b(Float.class, "completeEndFraction");
    public ObjectAnimator d;
    public ObjectAnimator e;
    public final FastOutSlowInInterpolator f;

    /* renamed from: g, reason: collision with root package name */
    public final CircularProgressIndicatorSpec f3135g;
    public int h;
    public float i;
    public float j;
    public Animatable2Compat.AnimationCallback k;

    public d(@NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        super(1);
        this.h = 0;
        this.k = null;
        this.f3135g = circularProgressIndicatorSpec;
        this.f = new FastOutSlowInInterpolator();
    }

    @Override // com.google.android.material.progressindicator.i
    public final void startAnimator() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<d, Float>) o, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(5400L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new com.google.android.material.progressindicator.b(this));
        }
        if (this.e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<d, Float>) p, 0.0f, 1.0f);
            this.e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(333L);
            this.e.setInterpolator(this.f);
            this.e.addListener(new c(this));
        }
        this.h = 0;
        this.c[0] = MaterialColors.compositeARGBWithAlpha(this.f3135g.indicatorColors[0], this.f3143a.getAlpha());
        this.j = 0.0f;
        this.d.start();
    }

    @Override // com.google.android.material.progressindicator.i
    public final void cancelAnimatorImmediately() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public final void requestCancelAnimatorAfterCurrentCycle() {
        ObjectAnimator objectAnimator = this.e;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        if (this.f3143a.isVisible()) {
            this.e.start();
        } else {
            cancelAnimatorImmediately();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public void registerAnimatorsCompleteCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        this.k = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.i
    public void unregisterAnimatorsCompleteCallback() {
        this.k = null;
    }

    @Override // com.google.android.material.progressindicator.i
    public void invalidateSpecValues() {
        this.h = 0;
        this.c[0] = MaterialColors.compositeARGBWithAlpha(this.f3135g.indicatorColors[0], this.f3143a.getAlpha());
        this.j = 0.0f;
    }

    public class a extends Property<d, Float> {
        @Override // android.util.Property
        public Float get(d dVar) {
            return Float.valueOf(dVar.i);
        }

        @Override // android.util.Property
        public void set(d dVar, Float f) {
            FastOutSlowInInterpolator fastOutSlowInInterpolator;
            float fFloatValue = f.floatValue();
            dVar.i = fFloatValue;
            int i = (int) (5400.0f * fFloatValue);
            float f2 = fFloatValue * 1520.0f;
            float[] fArr = dVar.f3144b;
            fArr[0] = (-20.0f) + f2;
            fArr[1] = f2;
            int i2 = 0;
            while (true) {
                fastOutSlowInInterpolator = dVar.f;
                if (i2 >= 4) {
                    break;
                }
                float fractionInRange = dVar.getFractionInRange(i, d.l[i2], 667);
                fArr[1] = (fastOutSlowInInterpolator.getInterpolation(fractionInRange) * 250.0f) + fArr[1];
                float fractionInRange2 = dVar.getFractionInRange(i, d.m[i2], 667);
                fArr[0] = (fastOutSlowInInterpolator.getInterpolation(fractionInRange2) * 250.0f) + fArr[0];
                i2++;
            }
            float f3 = fArr[0];
            float f4 = fArr[1];
            float f5 = ((f4 - f3) * dVar.j) + f3;
            fArr[0] = f5;
            fArr[0] = f5 / 360.0f;
            fArr[1] = f4 / 360.0f;
            int i3 = 0;
            while (true) {
                if (i3 >= 4) {
                    break;
                }
                float fractionInRange3 = dVar.getFractionInRange(i, d.n[i3], 333);
                if (fractionInRange3 >= 0.0f && fractionInRange3 <= 1.0f) {
                    int i4 = i3 + dVar.h;
                    CircularProgressIndicatorSpec circularProgressIndicatorSpec = dVar.f3135g;
                    int[] iArr = circularProgressIndicatorSpec.indicatorColors;
                    int length = i4 % iArr.length;
                    int length2 = (length + 1) % iArr.length;
                    int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(iArr[length], dVar.f3143a.getAlpha());
                    int iCompositeARGBWithAlpha2 = MaterialColors.compositeARGBWithAlpha(circularProgressIndicatorSpec.indicatorColors[length2], dVar.f3143a.getAlpha());
                    dVar.c[0] = ArgbEvaluatorCompat.getInstance().evaluate(fastOutSlowInInterpolator.getInterpolation(fractionInRange3), Integer.valueOf(iCompositeARGBWithAlpha), Integer.valueOf(iCompositeARGBWithAlpha2)).intValue();
                    break;
                }
                i3++;
            }
            dVar.f3143a.invalidateSelf();
        }
    }

    public class b extends Property<d, Float> {
        @Override // android.util.Property
        public Float get(d dVar) {
            return Float.valueOf(dVar.j);
        }

        @Override // android.util.Property
        public void set(d dVar, Float f) {
            dVar.j = f.floatValue();
        }
    }
}
