package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Layer {

    /* renamed from: a, reason: collision with root package name */
    public final List f2647a;

    /* renamed from: b, reason: collision with root package name */
    public final LottieComposition f2648b;
    public final String c;
    public final long d;
    public final LayerType e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final String f2649g;
    public final List h;
    public final AnimatableTransform i;
    public final int j;
    public final int k;
    public final int l;
    public final float m;
    public final float n;
    public final int o;
    public final int p;
    public final AnimatableTextFrame q;
    public final AnimatableTextProperties r;
    public final AnimatableFloatValue s;
    public final List t;
    public final MatteType u;
    public final boolean v;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LayerType {
        public static final LayerType IMAGE;
        public static final LayerType NULL;
        public static final LayerType PRE_COMP;
        public static final LayerType SHAPE;
        public static final LayerType SOLID;
        public static final LayerType TEXT;
        public static final LayerType UNKNOWN;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ LayerType[] f2650a;

        public static LayerType valueOf(String str) {
            return (LayerType) Enum.valueOf(LayerType.class, str);
        }

        public static LayerType[] values() {
            return (LayerType[]) f2650a.clone();
        }

        static {
            LayerType layerType = new LayerType("PRE_COMP", 0);
            PRE_COMP = layerType;
            LayerType layerType2 = new LayerType("SOLID", 1);
            SOLID = layerType2;
            LayerType layerType3 = new LayerType("IMAGE", 2);
            IMAGE = layerType3;
            LayerType layerType4 = new LayerType("NULL", 3);
            NULL = layerType4;
            LayerType layerType5 = new LayerType("SHAPE", 4);
            SHAPE = layerType5;
            LayerType layerType6 = new LayerType("TEXT", 5);
            TEXT = layerType6;
            LayerType layerType7 = new LayerType("UNKNOWN", 6);
            UNKNOWN = layerType7;
            f2650a = new LayerType[]{layerType, layerType2, layerType3, layerType4, layerType5, layerType6, layerType7};
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MatteType {
        public static final MatteType ADD;
        public static final MatteType INVERT;
        public static final MatteType LUMA;
        public static final MatteType LUMA_INVERTED;
        public static final MatteType NONE;
        public static final MatteType UNKNOWN;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ MatteType[] f2651a;

        public static MatteType valueOf(String str) {
            return (MatteType) Enum.valueOf(MatteType.class, str);
        }

        public static MatteType[] values() {
            return (MatteType[]) f2651a.clone();
        }

        static {
            MatteType matteType = new MatteType("NONE", 0);
            NONE = matteType;
            MatteType matteType2 = new MatteType("ADD", 1);
            ADD = matteType2;
            MatteType matteType3 = new MatteType("INVERT", 2);
            INVERT = matteType3;
            MatteType matteType4 = new MatteType("LUMA", 3);
            LUMA = matteType4;
            MatteType matteType5 = new MatteType("LUMA_INVERTED", 4);
            LUMA_INVERTED = matteType5;
            MatteType matteType6 = new MatteType("UNKNOWN", 5);
            UNKNOWN = matteType6;
            f2651a = new MatteType[]{matteType, matteType2, matteType3, matteType4, matteType5, matteType6};
        }
    }

    public Layer(List<ContentModel> list, LottieComposition lottieComposition, String str, long j, LayerType layerType, long j2, @Nullable String str2, List<Mask> list2, AnimatableTransform animatableTransform, int i, int i2, int i3, float f, float f2, int i4, int i5, @Nullable AnimatableTextFrame animatableTextFrame, @Nullable AnimatableTextProperties animatableTextProperties, List<Keyframe<Float>> list3, MatteType matteType, @Nullable AnimatableFloatValue animatableFloatValue, boolean z) {
        this.f2647a = list;
        this.f2648b = lottieComposition;
        this.c = str;
        this.d = j;
        this.e = layerType;
        this.f = j2;
        this.f2649g = str2;
        this.h = list2;
        this.i = animatableTransform;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = f;
        this.n = f2;
        this.o = i4;
        this.p = i5;
        this.q = animatableTextFrame;
        this.r = animatableTextProperties;
        this.t = list3;
        this.u = matteType;
        this.s = animatableFloatValue;
        this.v = z;
    }

    public long getId() {
        return this.d;
    }

    public LayerType getLayerType() {
        return this.e;
    }

    public String toString() {
        return toString("");
    }

    public boolean isHidden() {
        return this.v;
    }

    public String toString(String str) {
        int i;
        StringBuilder sbP = _COROUTINE.a.p(str);
        sbP.append(this.c);
        sbP.append("\n");
        LottieComposition lottieComposition = this.f2648b;
        Layer layerLayerModelForId = lottieComposition.layerModelForId(this.f);
        if (layerLayerModelForId != null) {
            sbP.append("\t\tParents: ");
            sbP.append(layerLayerModelForId.c);
            for (Layer layerLayerModelForId2 = lottieComposition.layerModelForId(layerLayerModelForId.f); layerLayerModelForId2 != null; layerLayerModelForId2 = lottieComposition.layerModelForId(layerLayerModelForId2.f)) {
                sbP.append("->");
                sbP.append(layerLayerModelForId2.c);
            }
            sbP.append(str);
            sbP.append("\n");
        }
        List list = this.h;
        if (!list.isEmpty()) {
            sbP.append(str);
            sbP.append("\tMasks: ");
            sbP.append(list.size());
            sbP.append("\n");
        }
        int i2 = this.j;
        if (i2 != 0 && (i = this.k) != 0) {
            sbP.append(str);
            sbP.append("\tBackground: ");
            sbP.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(this.l)));
        }
        List list2 = this.f2647a;
        if (!list2.isEmpty()) {
            sbP.append(str);
            sbP.append("\tShapes:\n");
            for (Object obj : list2) {
                sbP.append(str);
                sbP.append("\t\t");
                sbP.append(obj);
                sbP.append("\n");
            }
        }
        return sbP.toString();
    }
}
