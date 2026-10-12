package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class ShapeTrimPath implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2638a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f2639b;
    public final AnimatableFloatValue c;
    public final AnimatableFloatValue d;
    public final AnimatableFloatValue e;
    public final boolean f;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        public static final Type INDIVIDUALLY;
        public static final Type SIMULTANEOUSLY;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Type[] f2640a;

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) f2640a.clone();
        }

        static {
            Type type = new Type("SIMULTANEOUSLY", 0);
            SIMULTANEOUSLY = type;
            Type type2 = new Type("INDIVIDUALLY", 1);
            INDIVIDUALLY = type2;
            f2640a = new Type[]{type, type2};
        }

        public static Type forId(int i) {
            if (i == 1) {
                return SIMULTANEOUSLY;
            }
            if (i == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException(_COROUTINE.a.d(i, "Unknown trim path type "));
        }
    }

    public ShapeTrimPath(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, boolean z) {
        this.f2638a = str;
        this.f2639b = type;
        this.c = animatableFloatValue;
        this.d = animatableFloatValue2;
        this.e = animatableFloatValue3;
        this.f = z;
    }

    public String getName() {
        return this.f2638a;
    }

    public Type getType() {
        return this.f2639b;
    }

    public AnimatableFloatValue getEnd() {
        return this.d;
    }

    public AnimatableFloatValue getStart() {
        return this.c;
    }

    public AnimatableFloatValue getOffset() {
        return this.e;
    }

    public boolean isHidden() {
        return this.f;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new TrimPathContent(baseLayer, this);
    }

    public String toString() {
        return "Trim Path: {start: " + this.c + ", end: " + this.d + ", offset: " + this.e + "}";
    }
}
