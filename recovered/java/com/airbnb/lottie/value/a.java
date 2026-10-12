package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes.dex */
abstract class a<T> extends LottieValueCallback<T> {
    public final Object c;
    public final Object d;
    public final Interpolator e;

    public abstract Object a(float f, Object obj, Object obj2);

    public a(Object obj, Object obj2) {
        this(obj, obj2, new LinearInterpolator());
    }

    public a(Object obj, Object obj2, Interpolator interpolator) {
        this.c = obj;
        this.d = obj2;
        this.e = interpolator;
    }

    @Override // com.airbnb.lottie.value.LottieValueCallback
    public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
        return (T) a(this.e.getInterpolation(lottieFrameInfo.getOverallProgress()), this.c, this.d);
    }
}
