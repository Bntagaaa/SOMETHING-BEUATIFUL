package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes.dex */
public class LottieInterpolatedFloatValue extends a<Float> {
    @Override // com.airbnb.lottie.value.a
    public final Object a(float f, Object obj, Object obj2) {
        return Float.valueOf(MiscUtils.lerp(((Float) obj).floatValue(), ((Float) obj2).floatValue(), f));
    }

    @Override // com.airbnb.lottie.value.a, com.airbnb.lottie.value.LottieValueCallback
    public /* bridge */ /* synthetic */ Object getValue(LottieFrameInfo lottieFrameInfo) {
        return super.getValue(lottieFrameInfo);
    }

    public LottieInterpolatedFloatValue(Float f, Float f2) {
        super(f, f2);
    }

    public LottieInterpolatedFloatValue(Float f, Float f2, Interpolator interpolator) {
        super(f, f2, interpolator);
    }
}
