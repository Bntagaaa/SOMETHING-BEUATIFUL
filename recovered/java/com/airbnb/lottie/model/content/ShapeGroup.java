package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeGroup implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2627a;

    /* renamed from: b, reason: collision with root package name */
    public final List f2628b;
    public final boolean c;

    public ShapeGroup(String str, List<ContentModel> list, boolean z) {
        this.f2627a = str;
        this.f2628b = list;
        this.c = z;
    }

    public String getName() {
        return this.f2627a;
    }

    public List<ContentModel> getItems() {
        return this.f2628b;
    }

    public boolean isHidden() {
        return this.c;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f2627a + "' Shapes: " + Arrays.toString(this.f2628b.toArray()) + '}';
    }
}
