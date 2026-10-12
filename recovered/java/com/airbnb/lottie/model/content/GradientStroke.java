package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientStrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;

/* loaded from: classes.dex */
public class GradientStroke implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2604a;

    /* renamed from: b, reason: collision with root package name */
    public final GradientType f2605b;
    public final AnimatableGradientColorValue c;
    public final AnimatableIntegerValue d;
    public final AnimatablePointValue e;
    public final AnimatablePointValue f;

    /* renamed from: g, reason: collision with root package name */
    public final AnimatableFloatValue f2606g;
    public final ShapeStroke.LineCapType h;
    public final ShapeStroke.LineJoinType i;
    public final float j;
    public final List k;
    public final AnimatableFloatValue l;
    public final boolean m;

    public GradientStroke(String str, GradientType gradientType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f, List<AnimatableFloatValue> list, @Nullable AnimatableFloatValue animatableFloatValue2, boolean z) {
        this.f2604a = str;
        this.f2605b = gradientType;
        this.c = animatableGradientColorValue;
        this.d = animatableIntegerValue;
        this.e = animatablePointValue;
        this.f = animatablePointValue2;
        this.f2606g = animatableFloatValue;
        this.h = lineCapType;
        this.i = lineJoinType;
        this.j = f;
        this.k = list;
        this.l = animatableFloatValue2;
        this.m = z;
    }

    public String getName() {
        return this.f2604a;
    }

    public GradientType getGradientType() {
        return this.f2605b;
    }

    public AnimatableGradientColorValue getGradientColor() {
        return this.c;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.d;
    }

    public AnimatablePointValue getStartPoint() {
        return this.e;
    }

    public AnimatablePointValue getEndPoint() {
        return this.f;
    }

    public AnimatableFloatValue getWidth() {
        return this.f2606g;
    }

    public ShapeStroke.LineCapType getCapType() {
        return this.h;
    }

    public ShapeStroke.LineJoinType getJoinType() {
        return this.i;
    }

    public List<AnimatableFloatValue> getLineDashPattern() {
        return this.k;
    }

    @Nullable
    public AnimatableFloatValue getDashOffset() {
        return this.l;
    }

    public float getMiterLimit() {
        return this.j;
    }

    public boolean isHidden() {
        return this.m;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new GradientStrokeContent(lottieDrawable, baseLayer, this);
    }
}
