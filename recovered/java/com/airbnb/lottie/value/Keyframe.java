package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;

/* loaded from: classes.dex */
public class Keyframe<T> {

    /* renamed from: a, reason: collision with root package name */
    public final LottieComposition f2726a;

    /* renamed from: b, reason: collision with root package name */
    public float f2727b;
    public float c;
    public int d;
    public int e;

    @Nullable
    public Float endFrame;

    @Nullable
    public T endValue;
    public float f;

    /* renamed from: g, reason: collision with root package name */
    public float f2728g;

    @Nullable
    public final Interpolator interpolator;
    public PointF pathCp1;
    public PointF pathCp2;
    public final float startFrame;

    @Nullable
    public final T startValue;

    @Nullable
    public final Interpolator xInterpolator;

    @Nullable
    public final Interpolator yInterpolator;

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, float f, @Nullable Float f2) {
        this.f2727b = -3987645.8f;
        this.c = -3987645.8f;
        this.d = 784923401;
        this.e = 784923401;
        this.f = Float.MIN_VALUE;
        this.f2728g = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.f2726a = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = interpolator;
        this.xInterpolator = null;
        this.yInterpolator = null;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, float f, @Nullable Float f2) {
        this.f2727b = -3987645.8f;
        this.c = -3987645.8f;
        this.d = 784923401;
        this.e = 784923401;
        this.f = Float.MIN_VALUE;
        this.f2728g = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.f2726a = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = null;
        this.xInterpolator = interpolator;
        this.yInterpolator = interpolator2;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public Keyframe(LottieComposition lottieComposition, @Nullable T t, @Nullable T t2, @Nullable Interpolator interpolator, @Nullable Interpolator interpolator2, @Nullable Interpolator interpolator3, float f, @Nullable Float f2) {
        this.f2727b = -3987645.8f;
        this.c = -3987645.8f;
        this.d = 784923401;
        this.e = 784923401;
        this.f = Float.MIN_VALUE;
        this.f2728g = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.f2726a = lottieComposition;
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = interpolator;
        this.xInterpolator = interpolator2;
        this.yInterpolator = interpolator3;
        this.startFrame = f;
        this.endFrame = f2;
    }

    public Keyframe(T t) {
        this.f2727b = -3987645.8f;
        this.c = -3987645.8f;
        this.d = 784923401;
        this.e = 784923401;
        this.f = Float.MIN_VALUE;
        this.f2728g = Float.MIN_VALUE;
        this.pathCp1 = null;
        this.pathCp2 = null;
        this.f2726a = null;
        this.startValue = t;
        this.endValue = t;
        this.interpolator = null;
        this.xInterpolator = null;
        this.yInterpolator = null;
        this.startFrame = Float.MIN_VALUE;
        this.endFrame = Float.valueOf(Float.MAX_VALUE);
    }

    public float getStartProgress() {
        LottieComposition lottieComposition = this.f2726a;
        if (lottieComposition == null) {
            return 0.0f;
        }
        if (this.f == Float.MIN_VALUE) {
            this.f = (this.startFrame - lottieComposition.getStartFrame()) / lottieComposition.getDurationFrames();
        }
        return this.f;
    }

    public float getEndProgress() {
        LottieComposition lottieComposition = this.f2726a;
        if (lottieComposition == null) {
            return 1.0f;
        }
        if (this.f2728g == Float.MIN_VALUE) {
            if (this.endFrame == null) {
                this.f2728g = 1.0f;
            } else {
                this.f2728g = ((this.endFrame.floatValue() - this.startFrame) / lottieComposition.getDurationFrames()) + getStartProgress();
            }
        }
        return this.f2728g;
    }

    public boolean isStatic() {
        return this.interpolator == null && this.xInterpolator == null && this.yInterpolator == null;
    }

    public boolean containsProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        return f >= getStartProgress() && f < getEndProgress();
    }

    public float getStartValueFloat() {
        if (this.f2727b == -3987645.8f) {
            this.f2727b = ((Float) this.startValue).floatValue();
        }
        return this.f2727b;
    }

    public float getEndValueFloat() {
        if (this.c == -3987645.8f) {
            this.c = ((Float) this.endValue).floatValue();
        }
        return this.c;
    }

    public int getStartValueInt() {
        if (this.d == 784923401) {
            this.d = ((Integer) this.startValue).intValue();
        }
        return this.d;
    }

    public int getEndValueInt() {
        if (this.e == 784923401) {
            this.e = ((Integer) this.endValue).intValue();
        }
        return this.e;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.startValue + ", endValue=" + this.endValue + ", startFrame=" + this.startFrame + ", endFrame=" + this.endFrame + ", interpolator=" + this.interpolator + '}';
    }
}
