package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.color.MaterialColors;
import java.util.Arrays;

/* loaded from: classes.dex */
final class l extends i<ObjectAnimator> {
    public static final Property j = new a(Float.class, "animationFraction");
    public ObjectAnimator d;
    public final FastOutSlowInInterpolator e;
    public final LinearProgressIndicatorSpec f;

    /* renamed from: g, reason: collision with root package name */
    public int f3146g;
    public boolean h;
    public float i;

    @Override // com.google.android.material.progressindicator.i
    public void registerAnimatorsCompleteCallback(@Nullable Animatable2Compat.AnimationCallback animationCallback) {
    }

    @Override // com.google.android.material.progressindicator.i
    public void requestCancelAnimatorAfterCurrentCycle() {
    }

    @Override // com.google.android.material.progressindicator.i
    public void unregisterAnimatorsCompleteCallback() {
    }

    public l(@NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(3);
        this.f3146g = 1;
        this.f = linearProgressIndicatorSpec;
        this.e = new FastOutSlowInInterpolator();
    }

    @Override // com.google.android.material.progressindicator.i
    public void startAnimator() {
        if (this.d == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<l, Float>) j, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(333L);
            this.d.setInterpolator(null);
            this.d.setRepeatCount(-1);
            this.d.addListener(new k(this));
        }
        this.h = true;
        this.f3146g = 1;
        Arrays.fill(this.c, MaterialColors.compositeARGBWithAlpha(this.f.indicatorColors[0], this.f3143a.getAlpha()));
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
    public void invalidateSpecValues() {
        this.h = true;
        this.f3146g = 1;
        Arrays.fill(this.c, MaterialColors.compositeARGBWithAlpha(this.f.indicatorColors[0], this.f3143a.getAlpha()));
    }

    public class a extends Property<l, Float> {
        @Override // android.util.Property
        public Float get(l lVar) {
            return Float.valueOf(lVar.i);
        }

        @Override // android.util.Property
        public void set(l lVar, Float f) {
            float fFloatValue = f.floatValue();
            lVar.i = fFloatValue;
            float[] fArr = lVar.f3144b;
            fArr[0] = 0.0f;
            float fractionInRange = lVar.getFractionInRange((int) (fFloatValue * 333.0f), 0, 667);
            FastOutSlowInInterpolator fastOutSlowInInterpolator = lVar.e;
            float interpolation = fastOutSlowInInterpolator.getInterpolation(fractionInRange);
            fArr[2] = interpolation;
            fArr[1] = interpolation;
            float interpolation2 = fastOutSlowInInterpolator.getInterpolation(fractionInRange + 0.49925038f);
            fArr[4] = interpolation2;
            fArr[3] = interpolation2;
            fArr[5] = 1.0f;
            if (lVar.h && interpolation2 < 1.0f) {
                int[] iArr = lVar.c;
                iArr[2] = iArr[1];
                iArr[1] = iArr[0];
                iArr[0] = MaterialColors.compositeARGBWithAlpha(lVar.f.indicatorColors[lVar.f3146g], lVar.f3143a.getAlpha());
                lVar.h = false;
            }
            lVar.f3143a.invalidateSelf();
        }
    }
}
