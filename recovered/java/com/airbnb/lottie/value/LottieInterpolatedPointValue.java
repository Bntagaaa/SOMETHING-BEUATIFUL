package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes.dex */
public class LottieInterpolatedPointValue extends a<PointF> {
    public final PointF f;

    @Override // com.airbnb.lottie.value.a
    public final Object a(float f, Object obj, Object obj2) {
        PointF pointF = (PointF) obj;
        PointF pointF2 = (PointF) obj2;
        float fLerp = MiscUtils.lerp(pointF.x, pointF2.x, f);
        float fLerp2 = MiscUtils.lerp(pointF.y, pointF2.y, f);
        PointF pointF3 = this.f;
        pointF3.set(fLerp, fLerp2);
        return pointF3;
    }

    @Override // com.airbnb.lottie.value.a, com.airbnb.lottie.value.LottieValueCallback
    public /* bridge */ /* synthetic */ Object getValue(LottieFrameInfo lottieFrameInfo) {
        return super.getValue(lottieFrameInfo);
    }

    public LottieInterpolatedPointValue(PointF pointF, PointF pointF2) {
        super(pointF, pointF2);
        this.f = new PointF();
    }

    public LottieInterpolatedPointValue(PointF pointF, PointF pointF2, Interpolator interpolator) {
        super(pointF, pointF2, interpolator);
        this.f = new PointF();
    }
}
