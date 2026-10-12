package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.animation.AnimationUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
abstract class g extends Drawable implements Animatable2Compat {
    public static final Property k = new a(Float.class, "growFraction");

    /* renamed from: a, reason: collision with root package name */
    public final Context f3138a;

    /* renamed from: b, reason: collision with root package name */
    public final BaseProgressIndicatorSpec f3139b;
    public ObjectAnimator d;
    public ObjectAnimator e;
    public ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3140g;
    public float h;
    public int j;
    public final Paint i = new Paint();
    public AnimatorDurationScaleProvider c = new AnimatorDurationScaleProvider();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public g(Context context, BaseProgressIndicatorSpec baseProgressIndicatorSpec) {
        this.f3138a = context;
        this.f3139b = baseProgressIndicatorSpec;
        setAlpha(255);
    }

    public boolean c(boolean z, boolean z2, boolean z3) {
        ObjectAnimator objectAnimator = this.d;
        Property property = k;
        if (objectAnimator == null) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, (Property<g, Float>) property, 0.0f, 1.0f);
            this.d = objectAnimatorOfFloat;
            objectAnimatorOfFloat.setDuration(500L);
            this.d.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            ObjectAnimator objectAnimator2 = this.d;
            if (objectAnimator2 != null && objectAnimator2.isRunning()) {
                throw new IllegalArgumentException("Cannot set showAnimator while the current showAnimator is running.");
            }
            this.d = objectAnimator2;
            objectAnimator2.addListener(new e(this));
        }
        if (this.e == null) {
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, (Property<g, Float>) property, 1.0f, 0.0f);
            this.e = objectAnimatorOfFloat2;
            objectAnimatorOfFloat2.setDuration(500L);
            this.e.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            ObjectAnimator objectAnimator3 = this.e;
            if (objectAnimator3 != null && objectAnimator3.isRunning()) {
                throw new IllegalArgumentException("Cannot set hideAnimator while the current hideAnimator is running.");
            }
            this.e = objectAnimator3;
            objectAnimator3.addListener(new f(this));
        }
        if (isVisible() || z) {
            ObjectAnimator objectAnimator4 = z ? this.d : this.e;
            if (!z3) {
                if (objectAnimator4.isRunning()) {
                    objectAnimator4.end();
                } else {
                    boolean z4 = this.f3140g;
                    this.f3140g = true;
                    new ValueAnimator[]{objectAnimator4}[0].end();
                    this.f3140g = z4;
                }
                return super.setVisible(z, false);
            }
            if (!z3 || !objectAnimator4.isRunning()) {
                boolean z5 = !z || super.setVisible(z, false);
                BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3139b;
                if (z ? baseProgressIndicatorSpec.isShowAnimationEnabled() : baseProgressIndicatorSpec.isHideAnimationEnabled()) {
                    if (z2 || !objectAnimator4.isPaused()) {
                        objectAnimator4.start();
                        return z5;
                    }
                    objectAnimator4.resume();
                    return z5;
                }
                boolean z6 = this.f3140g;
                this.f3140g = true;
                new ValueAnimator[]{objectAnimator4}[0].end();
                this.f3140g = z6;
                return z5;
            }
        }
        return false;
    }

    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (this.f == null) {
            this.f = new ArrayList();
        }
        if (this.f.contains(animationCallback)) {
            return;
        }
        this.f.add(animationCallback);
    }

    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        ArrayList arrayList = this.f;
        if (arrayList == null || !arrayList.contains(animationCallback)) {
            return false;
        }
        this.f.remove(animationCallback);
        if (!this.f.isEmpty()) {
            return true;
        }
        this.f = null;
        return true;
    }

    public void clearAnimationCallbacks() {
        this.f.clear();
        this.f = null;
    }

    public void start() {
        c(true, true, false);
    }

    public void stop() {
        c(false, true, false);
    }

    public boolean isRunning() {
        return isShowing() || isHiding();
    }

    public boolean isShowing() {
        ObjectAnimator objectAnimator = this.d;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    public boolean isHiding() {
        ObjectAnimator objectAnimator = this.e;
        return objectAnimator != null && objectAnimator.isRunning();
    }

    public boolean hideNow() {
        return setVisible(false, false, false);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return setVisible(z, z2, true);
    }

    public boolean setVisible(boolean z, boolean z2, boolean z3) {
        return c(z, z2, z3 && this.c.getSystemAnimatorDurationScale(this.f3138a.getContentResolver()) > 0.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.j = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.j;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.i.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public final float b() {
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.f3139b;
        if (baseProgressIndicatorSpec.isShowAnimationEnabled() || baseProgressIndicatorSpec.isHideAnimationEnabled()) {
            return this.h;
        }
        return 1.0f;
    }

    public class a extends Property<g, Float> {
        @Override // android.util.Property
        public Float get(g gVar) {
            return Float.valueOf(gVar.b());
        }

        @Override // android.util.Property
        public void set(g gVar, Float f) {
            float fFloatValue = f.floatValue();
            if (gVar.h != fFloatValue) {
                gVar.h = fFloatValue;
                gVar.invalidateSelf();
            }
        }
    }
}
