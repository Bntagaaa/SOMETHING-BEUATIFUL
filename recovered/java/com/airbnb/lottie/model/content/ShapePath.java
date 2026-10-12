package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ShapeContent;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class ShapePath implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2629a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2630b;
    public final AnimatableShapeValue c;
    public final boolean d;

    public ShapePath(String str, int i, AnimatableShapeValue animatableShapeValue, boolean z) {
        this.f2629a = str;
        this.f2630b = i;
        this.c = animatableShapeValue;
        this.d = z;
    }

    public String getName() {
        return this.f2629a;
    }

    public AnimatableShapeValue getShapePath() {
        return this.c;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new ShapeContent(lottieDrawable, baseLayer, this);
    }

    public boolean isHidden() {
        return this.d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f2629a + ", index=" + this.f2630b + '}';
    }
}
