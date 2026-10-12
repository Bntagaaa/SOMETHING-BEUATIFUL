package com.airbnb.lottie.animation.content;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TrimPathContent implements Content, BaseKeyframeAnimation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final String f2545a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2546b;
    public final ArrayList c = new ArrayList();
    public final ShapeTrimPath.Type d;
    public final BaseKeyframeAnimation e;
    public final BaseKeyframeAnimation f;

    /* renamed from: g, reason: collision with root package name */
    public final BaseKeyframeAnimation f2547g;

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
    }

    public TrimPathContent(BaseLayer baseLayer, ShapeTrimPath shapeTrimPath) {
        this.f2545a = shapeTrimPath.getName();
        this.f2546b = shapeTrimPath.isHidden();
        this.d = shapeTrimPath.getType();
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = shapeTrimPath.getStart().createAnimation();
        this.e = baseKeyframeAnimationCreateAnimation;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation2 = shapeTrimPath.getEnd().createAnimation();
        this.f = baseKeyframeAnimationCreateAnimation2;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation3 = shapeTrimPath.getOffset().createAnimation();
        this.f2547g = baseKeyframeAnimationCreateAnimation3;
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation3);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.c;
            if (i >= arrayList.size()) {
                return;
            }
            ((BaseKeyframeAnimation.AnimationListener) arrayList.get(i)).onValueChanged();
            i++;
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f2545a;
    }

    public final void a(BaseKeyframeAnimation.AnimationListener animationListener) {
        this.c.add(animationListener);
    }

    public BaseKeyframeAnimation<?, Float> getStart() {
        return this.e;
    }

    public BaseKeyframeAnimation<?, Float> getEnd() {
        return this.f;
    }

    public BaseKeyframeAnimation<?, Float> getOffset() {
        return this.f2547g;
    }

    public boolean isHidden() {
        return this.f2546b;
    }
}
