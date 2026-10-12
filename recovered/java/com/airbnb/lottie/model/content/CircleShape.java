package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.EllipseContent;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class CircleShape implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2597a;

    /* renamed from: b, reason: collision with root package name */
    public final AnimatableValue f2598b;
    public final AnimatablePointValue c;
    public final boolean d;
    public final boolean e;

    public CircleShape(String str, AnimatableValue<PointF, PointF> animatableValue, AnimatablePointValue animatablePointValue, boolean z, boolean z2) {
        this.f2597a = str;
        this.f2598b = animatableValue;
        this.c = animatablePointValue;
        this.d = z;
        this.e = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new EllipseContent(lottieDrawable, baseLayer, this);
    }

    public String getName() {
        return this.f2597a;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.f2598b;
    }

    public AnimatablePointValue getSize() {
        return this.c;
    }

    public boolean isReversed() {
        return this.d;
    }

    public boolean isHidden() {
        return this.e;
    }
}
