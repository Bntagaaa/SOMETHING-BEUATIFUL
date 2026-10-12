package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import java.util.List;

/* loaded from: classes.dex */
public class ScaleKeyframeAnimation extends a<ScaleXY> {

    /* renamed from: g, reason: collision with root package name */
    public final ScaleXY f2559g;

    public ScaleKeyframeAnimation(List<Keyframe<ScaleXY>> list) {
        super(list);
        this.f2559g = new ScaleXY();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<ScaleXY>) keyframe, f);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public ScaleXY getValue(Keyframe<ScaleXY> keyframe, float f) {
        ScaleXY scaleXY;
        float f2;
        ScaleXY scaleXY2 = keyframe.startValue;
        if (scaleXY2 == null || (scaleXY = keyframe.endValue) == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        ScaleXY scaleXY3 = scaleXY2;
        ScaleXY scaleXY4 = scaleXY;
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        if (lottieValueCallback != 0) {
            f2 = f;
            ScaleXY scaleXY5 = (ScaleXY) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), scaleXY3, scaleXY4, f2, b(), getProgress());
            if (scaleXY5 != null) {
                return scaleXY5;
            }
        } else {
            f2 = f;
        }
        float fLerp = MiscUtils.lerp(scaleXY3.getScaleX(), scaleXY4.getScaleX(), f2);
        float fLerp2 = MiscUtils.lerp(scaleXY3.getScaleY(), scaleXY4.getScaleY(), f2);
        ScaleXY scaleXY6 = this.f2559g;
        scaleXY6.set(fLerp, fLerp2);
        return scaleXY6;
    }
}
