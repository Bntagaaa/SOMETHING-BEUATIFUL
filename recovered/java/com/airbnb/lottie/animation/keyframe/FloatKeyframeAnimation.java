package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public class FloatKeyframeAnimation extends a<Float> {
    public FloatKeyframeAnimation(List<Keyframe<Float>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        return Float.valueOf(c(keyframe, f));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float c(Keyframe keyframe, float f) {
        float f2;
        if (keyframe.startValue == 0 || keyframe.endValue == 0) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        if (lottieValueCallback != 0) {
            f2 = f;
            Float f3 = (Float) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), keyframe.startValue, keyframe.endValue, f2, b(), getProgress());
            if (f3 != null) {
                return f3.floatValue();
            }
        } else {
            f2 = f;
        }
        return MiscUtils.lerp(keyframe.getStartValueFloat(), keyframe.getEndValueFloat(), f2);
    }

    public float getFloatValue() {
        return c(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
