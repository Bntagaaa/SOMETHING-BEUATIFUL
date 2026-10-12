package com.airbnb.lottie.model.content;

import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;

/* loaded from: classes.dex */
public class Mask {

    /* renamed from: a, reason: collision with root package name */
    public final MaskMode f2608a;

    /* renamed from: b, reason: collision with root package name */
    public final AnimatableShapeValue f2609b;
    public final AnimatableIntegerValue c;
    public final boolean d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MaskMode {
        public static final MaskMode MASK_MODE_ADD;
        public static final MaskMode MASK_MODE_INTERSECT;
        public static final MaskMode MASK_MODE_NONE;
        public static final MaskMode MASK_MODE_SUBTRACT;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ MaskMode[] f2610a;

        public static MaskMode valueOf(String str) {
            return (MaskMode) Enum.valueOf(MaskMode.class, str);
        }

        public static MaskMode[] values() {
            return (MaskMode[]) f2610a.clone();
        }

        static {
            MaskMode maskMode = new MaskMode("MASK_MODE_ADD", 0);
            MASK_MODE_ADD = maskMode;
            MaskMode maskMode2 = new MaskMode("MASK_MODE_SUBTRACT", 1);
            MASK_MODE_SUBTRACT = maskMode2;
            MaskMode maskMode3 = new MaskMode("MASK_MODE_INTERSECT", 2);
            MASK_MODE_INTERSECT = maskMode3;
            MaskMode maskMode4 = new MaskMode("MASK_MODE_NONE", 3);
            MASK_MODE_NONE = maskMode4;
            f2610a = new MaskMode[]{maskMode, maskMode2, maskMode3, maskMode4};
        }
    }

    public Mask(MaskMode maskMode, AnimatableShapeValue animatableShapeValue, AnimatableIntegerValue animatableIntegerValue, boolean z) {
        this.f2608a = maskMode;
        this.f2609b = animatableShapeValue;
        this.c = animatableIntegerValue;
        this.d = z;
    }

    public MaskMode getMaskMode() {
        return this.f2608a;
    }

    public AnimatableShapeValue getMaskPath() {
        return this.f2609b;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.c;
    }

    public boolean isInverted() {
        return this.d;
    }
}
