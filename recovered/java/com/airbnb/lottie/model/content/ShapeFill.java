package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class ShapeFill implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2625a;

    /* renamed from: b, reason: collision with root package name */
    public final Path.FillType f2626b;
    public final String c;
    public final AnimatableColorValue d;
    public final AnimatableIntegerValue e;
    public final boolean f;

    public ShapeFill(String str, boolean z, Path.FillType fillType, @Nullable AnimatableColorValue animatableColorValue, @Nullable AnimatableIntegerValue animatableIntegerValue, boolean z2) {
        this.c = str;
        this.f2625a = z;
        this.f2626b = fillType;
        this.d = animatableColorValue;
        this.e = animatableIntegerValue;
        this.f = z2;
    }

    public String getName() {
        return this.c;
    }

    @Nullable
    public AnimatableColorValue getColor() {
        return this.d;
    }

    @Nullable
    public AnimatableIntegerValue getOpacity() {
        return this.e;
    }

    public Path.FillType getFillType() {
        return this.f2626b;
    }

    public boolean isHidden() {
        return this.f;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f2625a + '}';
    }
}
