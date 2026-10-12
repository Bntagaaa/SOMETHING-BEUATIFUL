package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.StrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeStroke implements ContentModel {

    /* renamed from: a, reason: collision with root package name */
    public final String f2631a;

    /* renamed from: b, reason: collision with root package name */
    public final AnimatableFloatValue f2632b;
    public final List c;
    public final AnimatableColorValue d;
    public final AnimatableIntegerValue e;
    public final AnimatableFloatValue f;

    /* renamed from: g, reason: collision with root package name */
    public final LineCapType f2633g;
    public final LineJoinType h;
    public final float i;
    public final boolean j;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LineCapType {
        public static final LineCapType BUTT;
        public static final LineCapType ROUND;
        public static final LineCapType UNKNOWN;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ LineCapType[] f2634a;

        public static LineCapType valueOf(String str) {
            return (LineCapType) Enum.valueOf(LineCapType.class, str);
        }

        public static LineCapType[] values() {
            return (LineCapType[]) f2634a.clone();
        }

        static {
            LineCapType lineCapType = new LineCapType("BUTT", 0);
            BUTT = lineCapType;
            LineCapType lineCapType2 = new LineCapType("ROUND", 1);
            ROUND = lineCapType2;
            LineCapType lineCapType3 = new LineCapType("UNKNOWN", 2);
            UNKNOWN = lineCapType3;
            f2634a = new LineCapType[]{lineCapType, lineCapType2, lineCapType3};
        }

        public Paint.Cap toPaintCap() {
            int i = a.f2636a[ordinal()];
            if (i == 1) {
                return Paint.Cap.BUTT;
            }
            if (i == 2) {
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.SQUARE;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LineJoinType {
        public static final LineJoinType BEVEL;
        public static final LineJoinType MITER;
        public static final LineJoinType ROUND;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ LineJoinType[] f2635a;

        public static LineJoinType valueOf(String str) {
            return (LineJoinType) Enum.valueOf(LineJoinType.class, str);
        }

        public static LineJoinType[] values() {
            return (LineJoinType[]) f2635a.clone();
        }

        static {
            LineJoinType lineJoinType = new LineJoinType("MITER", 0);
            MITER = lineJoinType;
            LineJoinType lineJoinType2 = new LineJoinType("ROUND", 1);
            ROUND = lineJoinType2;
            LineJoinType lineJoinType3 = new LineJoinType("BEVEL", 2);
            BEVEL = lineJoinType3;
            f2635a = new LineJoinType[]{lineJoinType, lineJoinType2, lineJoinType3};
        }

        public Paint.Join toPaintJoin() {
            int i = a.f2637b[ordinal()];
            if (i == 1) {
                return Paint.Join.BEVEL;
            }
            if (i == 2) {
                return Paint.Join.MITER;
            }
            if (i != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2636a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f2637b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f2637b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2637b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2637b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f2636a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2636a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2636a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, @Nullable AnimatableFloatValue animatableFloatValue, List<AnimatableFloatValue> list, AnimatableColorValue animatableColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue2, LineCapType lineCapType, LineJoinType lineJoinType, float f, boolean z) {
        this.f2631a = str;
        this.f2632b = animatableFloatValue;
        this.c = list;
        this.d = animatableColorValue;
        this.e = animatableIntegerValue;
        this.f = animatableFloatValue2;
        this.f2633g = lineCapType;
        this.h = lineJoinType;
        this.i = f;
        this.j = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new StrokeContent(lottieDrawable, baseLayer, this);
    }

    public String getName() {
        return this.f2631a;
    }

    public AnimatableColorValue getColor() {
        return this.d;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.e;
    }

    public AnimatableFloatValue getWidth() {
        return this.f;
    }

    public List<AnimatableFloatValue> getLineDashPattern() {
        return this.c;
    }

    public AnimatableFloatValue getDashOffset() {
        return this.f2632b;
    }

    public LineCapType getCapType() {
        return this.f2633g;
    }

    public LineJoinType getJoinType() {
        return this.h;
    }

    public float getMiterLimit() {
        return this.i;
    }

    public boolean isHidden() {
        return this.j;
    }
}
