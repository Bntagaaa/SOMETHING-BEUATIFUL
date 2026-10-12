package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RepeaterContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class Repeater implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2621a;

    /* renamed from: b, reason: collision with root package name */
    public final AnimatableFloatValue f2622b;
    public final AnimatableFloatValue c;
    public final AnimatableTransform d;
    public final boolean e;

    public Repeater(String str, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableTransform animatableTransform, boolean z) {
        this.f2621a = str;
        this.f2622b = animatableFloatValue;
        this.c = animatableFloatValue2;
        this.d = animatableTransform;
        this.e = z;
    }

    public String getName() {
        return this.f2621a;
    }

    public AnimatableFloatValue getCopies() {
        return this.f2622b;
    }

    public AnimatableFloatValue getOffset() {
        return this.c;
    }

    public AnimatableTransform getTransform() {
        return this.d;
    }

    public boolean isHidden() {
        return this.e;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new RepeaterContent(lottieDrawable, baseLayer, this);
    }
}
