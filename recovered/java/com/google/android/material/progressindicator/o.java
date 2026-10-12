package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.annotation.NonNull;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import java.util.Arrays;

/* loaded from: classes.dex */
final class o extends i<ObjectAnimator> {
    public static final int[] l = {533, 567, 850, 750};
    public static final int[] m = {1267, 1000, 333, 0};
    public static final Property n = new a(Float.class, "animationFraction");
    public ObjectAnimator d;
    public ObjectAnimator e;
    public final Interpolator[] f;

    /* renamed from: g, reason: collision with root package name */
    public final LinearProgressIndicatorSpec f3149g;
    public int h;
    public boolean i;
    public float j;
    public Animatable2Compat.AnimationCallback k;

    public o(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.h = 0;
        this.k = null;
        this.f3149g = linearProgressIndicatorSpec;
        this.f = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line1_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line1_tail_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line2_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.animator.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // com.google.android.material.progressindicator.i
    public void startAnimator() {
        ObjectAnimator objectAnimator = this.d;
        Property property = n;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<o, Float>) property, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(1800L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new m(this));
        }
        if (this.e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<o, Float>) property, 1.0f);
            this.e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(1800L);
            this.e.setInterpolator(null);
            this.e.addListener(new n(this));
        }
        this.h = 0;
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(this.f3149g.indicatorColors[0], this.f3143a.getAlpha());
        int[] iArr = this.c;
        iArr[0] = iCompositeARGBWithAlpha;
        iArr[1] = iCompositeARGBWithAlpha;
        this.d.start();
    }

    @Override // com.google.android.material.progressindicator.i
    public void cancelAnimatorImmediately() {
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.i
    public void requestCancelAnimatorAfterCurrentCycle() {
        ObjectAnimator objectAnimator = this.e;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        cancelAnimatorImmediately();
        if (this.f3143a.isVisible()) {
            this.e.setFloatValues(this.j, 1.0f);
            this.e.setDuration((long) ((1.0f - this.j) * 1800.0f));
            this.e.start();
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
        int iCompositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(this.f3149g.indicatorColors[0], this.f3143a.getAlpha());
        int[] iArr = this.c;
        iArr[0] = iCompositeARGBWithAlpha;
        iArr[1] = iCompositeARGBWithAlpha;
    }

    public class a extends Property<o, Float> {
        @Override // android.util.Property
        public Float get(o oVar) {
            return Float.valueOf(oVar.j);
        }

        @Override // android.util.Property
        public void set(o oVar, Float f) {
            float fFloatValue = f.floatValue();
            oVar.j = fFloatValue;
            int i = (int) (fFloatValue * 1800.0f);
            for (int i2 = 0; i2 < 4; i2++) {
                oVar.f3144b[i2] = Math.max(0.0f, Math.min(1.0f, oVar.f[i2].getInterpolation(oVar.getFractionInRange(i, o.m[i2], o.l[i2]))));
            }
            if (oVar.i) {
                Arrays.fill(oVar.c, MaterialColors.compositeARGBWithAlpha(oVar.f3149g.indicatorColors[oVar.h], oVar.f3143a.getAlpha()));
                oVar.i = false;
            }
            oVar.f3143a.invalidateSelf();
        }
    }
}
