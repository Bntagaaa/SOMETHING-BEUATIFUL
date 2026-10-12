package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public class PathKeyframeAnimation extends a<PointF> {

    /* renamed from: g, reason: collision with root package name */
    public final PointF f2557g;
    public final float[] h;
    public final PathMeasure i;
    public PathKeyframe j;

    public PathKeyframeAnimation(List<? extends Keyframe<PointF>> list) {
        super(list);
        this.f2557g = new PointF();
        this.h = new float[2];
        this.i = new PathMeasure();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<PointF>) keyframe, f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public PointF getValue(Keyframe<PointF> keyframe, float f) {
        float f2;
        PathKeyframe pathKeyframe = (PathKeyframe) keyframe;
        Path path = pathKeyframe.h;
        if (path == null) {
            return keyframe.startValue;
        }
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        if (lottieValueCallback != 0) {
            f2 = f;
            PointF pointF = (PointF) lottieValueCallback.getValueInternal(pathKeyframe.startFrame, pathKeyframe.endFrame.floatValue(), pathKeyframe.startValue, pathKeyframe.endValue, b(), f2, getProgress());
            if (pointF != null) {
                return pointF;
            }
        } else {
            f2 = f;
        }
        PathKeyframe pathKeyframe2 = this.j;
        PathMeasure pathMeasure = this.i;
        if (pathKeyframe2 != pathKeyframe) {
            pathMeasure.setPath(path, false);
            this.j = pathKeyframe;
        }
        float length = pathMeasure.getLength() * f2;
        float[] fArr = this.h;
        pathMeasure.getPosTan(length, fArr, null);
        PointF pointF2 = this.f2557g;
        pointF2.set(fArr[0], fArr[1]);
        return pointF2;
    }
}
