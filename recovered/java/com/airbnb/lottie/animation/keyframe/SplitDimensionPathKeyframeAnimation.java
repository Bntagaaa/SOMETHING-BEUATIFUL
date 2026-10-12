package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class SplitDimensionPathKeyframeAnimation extends BaseKeyframeAnimation<PointF, PointF> {

    /* renamed from: g, reason: collision with root package name */
    public final PointF f2561g;
    public final PointF h;
    public final BaseKeyframeAnimation i;
    public final BaseKeyframeAnimation j;

    @Nullable
    protected LottieValueCallback<Float> xValueCallback;

    @Nullable
    protected LottieValueCallback<Float> yValueCallback;

    public SplitDimensionPathKeyframeAnimation(BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation, BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2) {
        super(Collections.EMPTY_LIST);
        this.f2561g = new PointF();
        this.h = new PointF();
        this.i = baseKeyframeAnimation;
        this.j = baseKeyframeAnimation2;
        setProgress(getProgress());
    }

    public void setXValueCallback(@Nullable LottieValueCallback<Float> lottieValueCallback) {
        LottieValueCallback<Float> lottieValueCallback2 = this.xValueCallback;
        if (lottieValueCallback2 != null) {
            lottieValueCallback2.setAnimation(null);
        }
        this.xValueCallback = lottieValueCallback;
        if (lottieValueCallback != null) {
            lottieValueCallback.setAnimation(this);
        }
    }

    public void setYValueCallback(@Nullable LottieValueCallback<Float> lottieValueCallback) {
        LottieValueCallback<Float> lottieValueCallback2 = this.yValueCallback;
        if (lottieValueCallback2 != null) {
            lottieValueCallback2.setAnimation(null);
        }
        this.yValueCallback = lottieValueCallback;
        if (lottieValueCallback != null) {
            lottieValueCallback.setAnimation(this);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public void setProgress(float f) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.i;
        baseKeyframeAnimation.setProgress(f);
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.j;
        baseKeyframeAnimation2.setProgress(f);
        this.f2561g.set(((Float) baseKeyframeAnimation.getValue()).floatValue(), ((Float) baseKeyframeAnimation2.getValue()).floatValue());
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f2548a;
            if (i >= arrayList.size()) {
                return;
            }
            ((BaseKeyframeAnimation.AnimationListener) arrayList.get(i)).onValueChanged();
            i++;
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public PointF getValue() {
        return getValue((Keyframe) null, 0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public final PointF getValue(Keyframe keyframe, float f) {
        float f2;
        Float valueInternal;
        BaseKeyframeAnimation baseKeyframeAnimation;
        Keyframe currentKeyframe;
        BaseKeyframeAnimation baseKeyframeAnimation2;
        Keyframe currentKeyframe2;
        Float valueInternal2 = null;
        if (this.xValueCallback == null || (currentKeyframe2 = (baseKeyframeAnimation2 = this.i).getCurrentKeyframe()) == null) {
            f2 = f;
            valueInternal = null;
        } else {
            float interpolatedCurrentKeyframeProgress = baseKeyframeAnimation2.getInterpolatedCurrentKeyframeProgress();
            Float f3 = currentKeyframe2.endFrame;
            LottieValueCallback<Float> lottieValueCallback = this.xValueCallback;
            float f4 = currentKeyframe2.startFrame;
            f2 = f;
            valueInternal = lottieValueCallback.getValueInternal(f4, f3 == null ? f4 : f3.floatValue(), currentKeyframe2.startValue, currentKeyframe2.endValue, f, f, interpolatedCurrentKeyframeProgress);
        }
        if (this.yValueCallback != null && (currentKeyframe = (baseKeyframeAnimation = this.j).getCurrentKeyframe()) != null) {
            float interpolatedCurrentKeyframeProgress2 = baseKeyframeAnimation.getInterpolatedCurrentKeyframeProgress();
            Float f5 = currentKeyframe.endFrame;
            LottieValueCallback<Float> lottieValueCallback2 = this.yValueCallback;
            float f6 = currentKeyframe.startFrame;
            valueInternal2 = lottieValueCallback2.getValueInternal(f6, f5 == null ? f6 : f5.floatValue(), currentKeyframe.startValue, currentKeyframe.endValue, f2, f2, interpolatedCurrentKeyframeProgress2);
        }
        PointF pointF = this.f2561g;
        PointF pointF2 = this.h;
        if (valueInternal == null) {
            pointF2.set(pointF.x, 0.0f);
        } else {
            pointF2.set(valueInternal.floatValue(), 0.0f);
        }
        if (valueInternal2 == null) {
            pointF2.set(pointF2.x, pointF.y);
        } else {
            pointF2.set(pointF2.x, valueInternal2.floatValue());
        }
        return pointF2;
    }
}
