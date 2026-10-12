package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.FloatRange;

/* loaded from: classes.dex */
class ClockHandView extends View {
    public static final /* synthetic */ int h = 0;

    /* renamed from: a, reason: collision with root package name */
    public ValueAnimator f3356a;

    /* renamed from: b, reason: collision with root package name */
    public float f3357b;
    public float c;
    public boolean d;
    public float e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public double f3358g;

    public interface OnActionUpListener {
        void onActionUp(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z);
    }

    public interface OnRotateListener {
        void onRotate(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z);
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        setHandRotation(getHandRotation());
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f) {
        setHandRotation(f, false);
    }

    public void setHandRotation(@FloatRange(from = 0.0d, to = 360.0d) float f, boolean z) {
        ValueAnimator valueAnimator = this.f3356a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            a(f);
            throw null;
        }
        float handRotation = getHandRotation();
        if (Math.abs(handRotation - f) > 180.0f) {
            if (handRotation > 180.0f && f < 180.0f) {
                f += 360.0f;
            }
            if (handRotation < 180.0f && f > 180.0f) {
                handRotation += 360.0f;
            }
        }
        Pair pair = new Pair(Float.valueOf(handRotation), Float.valueOf(f));
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pair.first).floatValue(), ((Float) pair.second).floatValue());
        this.f3356a = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f3356a.addUpdateListener(new a());
        this.f3356a.addListener(new b());
        this.f3356a.start();
    }

    public class a implements ValueAnimator.AnimatorUpdateListener {
        public a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i = ClockHandView.h;
            ClockHandView.this.a(fFloatValue);
            throw null;
        }
    }

    public class b extends AnimatorListenerAdapter {
        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public final void a(float f) {
        this.e = f % 360.0f;
        this.f3358g = Math.toRadians(r3 - 90.0f);
        getHeight();
        getWidth();
        Math.cos(this.f3358g);
        Math.sin(this.f3358g);
        throw null;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float getHandRotation() {
        return this.e;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        getHeight();
        getWidth();
        Math.cos(this.f3358g);
        Math.sin(this.f3358g);
        throw null;
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        boolean z3 = false;
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.f3357b);
                int i2 = (int) (y - this.c);
                this.d = (i2 * i2) + (i * i) > 0;
                z = this.f;
            } else {
                z = false;
            }
            z2 = false;
        } else {
            this.f3357b = x;
            this.c = y;
            this.d = true;
            this.f = false;
            z = false;
            z2 = true;
        }
        boolean z4 = this.f;
        int degrees = (int) Math.toDegrees(Math.atan2(y - (getHeight() / 2), x - (getWidth() / 2)));
        int i3 = degrees + 90;
        if (i3 < 0) {
            i3 = degrees + 450;
        }
        float f = i3;
        boolean z5 = getHandRotation() != f;
        if (z2 && z5) {
            z3 = true;
        } else if (z5 || z) {
            setHandRotation(f, false);
            z3 = true;
        }
        this.f = z4 | z3;
        return true;
    }
}
