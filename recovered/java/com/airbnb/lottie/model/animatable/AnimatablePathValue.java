package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PathKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.PointKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatablePathValue implements AnimatableValue<PointF, PointF> {

    /* renamed from: a, reason: collision with root package name */
    public final List f2590a;

    public AnimatablePathValue() {
        this.f2590a = Collections.singletonList(new Keyframe(new PointF(0.0f, 0.0f)));
    }

    public AnimatablePathValue(List<Keyframe<PointF>> list) {
        this.f2590a = list;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public List<Keyframe<PointF>> getKeyframes() {
        return this.f2590a;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public boolean isStatic() {
        List list = this.f2590a;
        return list.size() == 1 && ((Keyframe) list.get(0)).isStatic();
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<PointF, PointF> createAnimation() {
        List list = this.f2590a;
        if (((Keyframe) list.get(0)).isStatic()) {
            return new PointKeyframeAnimation(list);
        }
        return new PathKeyframeAnimation(list);
    }
}
