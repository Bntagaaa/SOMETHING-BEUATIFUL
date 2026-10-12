package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public class ColorKeyframeAnimation extends a<Integer> {
    public ColorKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final Object getValue(Keyframe keyframe, float f) {
        return Integer.valueOf(getIntValue(keyframe, f));
    }

    public int getIntValue(Keyframe<Integer> keyframe, float f) {
        float f2;
        Integer num = keyframe.startValue;
        if (num == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        Integer num2 = num;
        int iIntValue = num2.intValue();
        Integer num3 = keyframe.endValue;
        int iIntValue2 = num3.intValue();
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        if (lottieValueCallback != 0) {
            f2 = f;
            Integer num4 = (Integer) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), num2, num3, f2, b(), getProgress());
            if (num4 != null) {
                return num4.intValue();
            }
        } else {
            f2 = f;
        }
        return GammaEvaluator.evaluate(MiscUtils.clamp(f2, 0.0f, 1.0f), iIntValue, iIntValue2);
    }

    public int getIntValue() {
        return getIntValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
