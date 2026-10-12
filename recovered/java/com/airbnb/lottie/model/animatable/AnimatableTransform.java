package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ModifierContent;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class AnimatableTransform implements ModifierContent, ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final AnimatablePathValue f2593a;

    /* renamed from: b, reason: collision with root package name */
    public final AnimatableValue f2594b;
    public final AnimatableScaleValue c;
    public final AnimatableFloatValue d;
    public final AnimatableIntegerValue e;
    public final AnimatableFloatValue f;

    /* renamed from: g, reason: collision with root package name */
    public final AnimatableFloatValue f2595g;
    public final AnimatableFloatValue h;
    public final AnimatableFloatValue i;

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return null;
    }

    public AnimatableTransform() {
        this(null, null, null, null, null, null, null, null, null);
    }

    public AnimatableTransform(@Nullable AnimatablePathValue animatablePathValue, @Nullable AnimatableValue<PointF, PointF> animatableValue, @Nullable AnimatableScaleValue animatableScaleValue, @Nullable AnimatableFloatValue animatableFloatValue, @Nullable AnimatableIntegerValue animatableIntegerValue, @Nullable AnimatableFloatValue animatableFloatValue2, @Nullable AnimatableFloatValue animatableFloatValue3, @Nullable AnimatableFloatValue animatableFloatValue4, @Nullable AnimatableFloatValue animatableFloatValue5) {
        this.f2593a = animatablePathValue;
        this.f2594b = animatableValue;
        this.c = animatableScaleValue;
        this.d = animatableFloatValue;
        this.e = animatableIntegerValue;
        this.h = animatableFloatValue2;
        this.i = animatableFloatValue3;
        this.f = animatableFloatValue4;
        this.f2595g = animatableFloatValue5;
    }

    @Nullable
    public AnimatablePathValue getAnchorPoint() {
        return this.f2593a;
    }

    @Nullable
    public AnimatableValue<PointF, PointF> getPosition() {
        return this.f2594b;
    }

    @Nullable
    public AnimatableScaleValue getScale() {
        return this.c;
    }

    @Nullable
    public AnimatableFloatValue getRotation() {
        return this.d;
    }

    @Nullable
    public AnimatableIntegerValue getOpacity() {
        return this.e;
    }

    @Nullable
    public AnimatableFloatValue getStartOpacity() {
        return this.h;
    }

    @Nullable
    public AnimatableFloatValue getEndOpacity() {
        return this.i;
    }

    @Nullable
    public AnimatableFloatValue getSkew() {
        return this.f;
    }

    @Nullable
    public AnimatableFloatValue getSkewAngle() {
        return this.f2595g;
    }

    public TransformKeyframeAnimation createAnimation() {
        return new TransformKeyframeAnimation(this);
    }
}
