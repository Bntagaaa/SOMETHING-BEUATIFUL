package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;

/* loaded from: classes.dex */
class a implements BaseKeyframeAnimation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseLayer f2653a;

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        BaseLayer baseLayer = this.f2653a;
        boolean z = baseLayer.q.getFloatValue() == 1.0f;
        if (z != baseLayer.w) {
            baseLayer.w = z;
            baseLayer.n.invalidateSelf();
        }
    }

    public a(BaseLayer baseLayer) {
        this.f2653a = baseLayer;
    }
}
