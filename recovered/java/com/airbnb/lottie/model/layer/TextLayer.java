package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TextKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.HashMap;

/* loaded from: classes.dex */
public class TextLayer extends BaseLayer {
    public final RectF A;
    public final Matrix B;
    public final Paint C;
    public final Paint D;
    public final HashMap E;
    public final LongSparseArray F;
    public final TextKeyframeAnimation G;
    public final LottieDrawable H;
    public final LottieComposition I;
    public final BaseKeyframeAnimation J;
    public ValueCallbackKeyframeAnimation K;
    public final BaseKeyframeAnimation L;
    public ValueCallbackKeyframeAnimation M;
    public final BaseKeyframeAnimation N;
    public ValueCallbackKeyframeAnimation O;
    public final BaseKeyframeAnimation P;
    public ValueCallbackKeyframeAnimation Q;
    public ValueCallbackKeyframeAnimation R;
    public final StringBuilder z;

    public class a extends Paint {
    }

    public class b extends Paint {
    }

    public TextLayer(LottieDrawable lottieDrawable, Layer layer) {
        AnimatableFloatValue animatableFloatValue;
        AnimatableFloatValue animatableFloatValue2;
        AnimatableColorValue animatableColorValue;
        AnimatableColorValue animatableColorValue2;
        super(lottieDrawable, layer);
        this.z = new StringBuilder(2);
        this.A = new RectF();
        this.B = new Matrix();
        a aVar = new a(1);
        aVar.setStyle(Paint.Style.FILL);
        this.C = aVar;
        b bVar = new b(1);
        bVar.setStyle(Paint.Style.STROKE);
        this.D = bVar;
        this.E = new HashMap();
        this.F = new LongSparseArray();
        this.H = lottieDrawable;
        this.I = layer.f2648b;
        TextKeyframeAnimation textKeyframeAnimationCreateAnimation = layer.q.createAnimation();
        this.G = textKeyframeAnimationCreateAnimation;
        textKeyframeAnimationCreateAnimation.addUpdateListener(this);
        addAnimation(textKeyframeAnimationCreateAnimation);
        AnimatableTextProperties animatableTextProperties = layer.r;
        if (animatableTextProperties != null && (animatableColorValue2 = animatableTextProperties.color) != null) {
            BaseKeyframeAnimation<?, ?> baseKeyframeAnimationCreateAnimation = animatableColorValue2.createAnimation();
            this.J = baseKeyframeAnimationCreateAnimation;
            baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
            addAnimation(baseKeyframeAnimationCreateAnimation);
        }
        if (animatableTextProperties != null && (animatableColorValue = animatableTextProperties.stroke) != null) {
            BaseKeyframeAnimation<?, ?> baseKeyframeAnimationCreateAnimation2 = animatableColorValue.createAnimation();
            this.L = baseKeyframeAnimationCreateAnimation2;
            baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
            addAnimation(baseKeyframeAnimationCreateAnimation2);
        }
        if (animatableTextProperties != null && (animatableFloatValue2 = animatableTextProperties.strokeWidth) != null) {
            BaseKeyframeAnimation<?, ?> baseKeyframeAnimationCreateAnimation3 = animatableFloatValue2.createAnimation();
            this.N = baseKeyframeAnimationCreateAnimation3;
            baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
            addAnimation(baseKeyframeAnimationCreateAnimation3);
        }
        if (animatableTextProperties == null || (animatableFloatValue = animatableTextProperties.tracking) == null) {
            return;
        }
        BaseKeyframeAnimation<?, ?> baseKeyframeAnimationCreateAnimation4 = animatableFloatValue.createAnimation();
        this.P = baseKeyframeAnimationCreateAnimation4;
        baseKeyframeAnimationCreateAnimation4.addUpdateListener(this);
        addAnimation(baseKeyframeAnimationCreateAnimation4);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        LottieComposition lottieComposition = this.I;
        rectF.set(0.0f, 0.0f, lottieComposition.getBounds().width(), lottieComposition.getBounds().height());
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x0344  */
    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawLayer(android.graphics.Canvas r27, android.graphics.Matrix r28, int r29) {
        /*
            Method dump skipped, instructions count: 1072
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.TextLayer.drawLayer(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    public static /* synthetic */ class c {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2652a;

        static {
            int[] iArr = new int[DocumentData.Justification.values().length];
            f2652a = iArr;
            try {
                iArr[DocumentData.Justification.LEFT_ALIGN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2652a[DocumentData.Justification.RIGHT_ALIGN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2652a[DocumentData.Justification.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void d(DocumentData.Justification justification, Canvas canvas, float f) {
        int i = c.f2652a[justification.ordinal()];
        if (i == 2) {
            canvas.translate(-f, 0.0f);
        } else {
            if (i != 3) {
                return;
            }
            canvas.translate((-f) / 2.0f, 0.0f);
        }
    }

    public static void f(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }

    public static void e(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.COLOR) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.K;
            if (valueCallbackKeyframeAnimation != null) {
                removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.K = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.K = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            addAnimation(this.K);
            return;
        }
        if (t == LottieProperty.STROKE_COLOR) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = this.M;
            if (valueCallbackKeyframeAnimation3 != null) {
                removeAnimation(valueCallbackKeyframeAnimation3);
            }
            if (lottieValueCallback == null) {
                this.M = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.M = valueCallbackKeyframeAnimation4;
            valueCallbackKeyframeAnimation4.addUpdateListener(this);
            addAnimation(this.M);
            return;
        }
        if (t == LottieProperty.STROKE_WIDTH) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation5 = this.O;
            if (valueCallbackKeyframeAnimation5 != null) {
                removeAnimation(valueCallbackKeyframeAnimation5);
            }
            if (lottieValueCallback == null) {
                this.O = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation6 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.O = valueCallbackKeyframeAnimation6;
            valueCallbackKeyframeAnimation6.addUpdateListener(this);
            addAnimation(this.O);
            return;
        }
        if (t == LottieProperty.TEXT_TRACKING) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation7 = this.Q;
            if (valueCallbackKeyframeAnimation7 != null) {
                removeAnimation(valueCallbackKeyframeAnimation7);
            }
            if (lottieValueCallback == null) {
                this.Q = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation8 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.Q = valueCallbackKeyframeAnimation8;
            valueCallbackKeyframeAnimation8.addUpdateListener(this);
            addAnimation(this.Q);
            return;
        }
        if (t == LottieProperty.TEXT_SIZE) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation9 = this.R;
            if (valueCallbackKeyframeAnimation9 != null) {
                removeAnimation(valueCallbackKeyframeAnimation9);
            }
            if (lottieValueCallback == null) {
                this.R = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation10 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.R = valueCallbackKeyframeAnimation10;
            valueCallbackKeyframeAnimation10.addUpdateListener(this);
            addAnimation(this.R);
        }
    }
}
