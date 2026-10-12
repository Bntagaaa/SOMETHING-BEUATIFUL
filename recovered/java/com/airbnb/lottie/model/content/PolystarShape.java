package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.PolystarContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class PolystarShape implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2614a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f2615b;
    public final AnimatableFloatValue c;
    public final AnimatableValue d;
    public final AnimatableFloatValue e;
    public final AnimatableFloatValue f;

    /* renamed from: g, reason: collision with root package name */
    public final AnimatableFloatValue f2616g;
    public final AnimatableFloatValue h;
    public final AnimatableFloatValue i;
    public final boolean j;

    public enum Type {
        STAR(1),
        POLYGON(2);


        /* renamed from: a, reason: collision with root package name */
        public final int f2618a;

        Type(int i) {
            this.f2618a = i;
        }

        public static Type forValue(int i) {
            for (Type type : values()) {
                if (type.f2618a == i) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5, AnimatableFloatValue animatableFloatValue6, boolean z) {
        this.f2614a = str;
        this.f2615b = type;
        this.c = animatableFloatValue;
        this.d = animatableValue;
        this.e = animatableFloatValue2;
        this.f = animatableFloatValue3;
        this.f2616g = animatableFloatValue4;
        this.h = animatableFloatValue5;
        this.i = animatableFloatValue6;
        this.j = z;
    }

    public String getName() {
        return this.f2614a;
    }

    public Type getType() {
        return this.f2615b;
    }

    public AnimatableFloatValue getPoints() {
        return this.c;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.d;
    }

    public AnimatableFloatValue getRotation() {
        return this.e;
    }

    public AnimatableFloatValue getInnerRadius() {
        return this.f;
    }

    public AnimatableFloatValue getOuterRadius() {
        return this.f2616g;
    }

    public AnimatableFloatValue getInnerRoundedness() {
        return this.h;
    }

    public AnimatableFloatValue getOuterRoundedness() {
        return this.i;
    }

    public boolean isHidden() {
        return this.j;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new PolystarContent(lottieDrawable, baseLayer, this);
    }
}
