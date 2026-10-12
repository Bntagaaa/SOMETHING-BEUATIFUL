package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.LottieValueCallback;

/* loaded from: classes.dex */
public class GradientStrokeContent extends BaseStrokeContent {
    public final String n;
    public final boolean o;
    public final LongSparseArray p;
    public final LongSparseArray q;
    public final RectF r;
    public final GradientType s;
    public final int t;
    public final BaseKeyframeAnimation u;
    public final BaseKeyframeAnimation v;
    public final BaseKeyframeAnimation w;
    public ValueCallbackKeyframeAnimation x;

    public GradientStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, GradientStroke gradientStroke) {
        super(lottieDrawable, baseLayer, gradientStroke.getCapType().toPaintCap(), gradientStroke.getJoinType().toPaintJoin(), gradientStroke.getMiterLimit(), gradientStroke.getOpacity(), gradientStroke.getWidth(), gradientStroke.getLineDashPattern(), gradientStroke.getDashOffset());
        this.p = new LongSparseArray();
        this.q = new LongSparseArray();
        this.r = new RectF();
        this.n = gradientStroke.getName();
        this.s = gradientStroke.getGradientType();
        this.o = gradientStroke.isHidden();
        this.t = (int) (lottieDrawable.getComposition().getDuration() / 32.0f);
        BaseKeyframeAnimation<GradientColor, GradientColor> baseKeyframeAnimationCreateAnimation = gradientStroke.getGradientColor().createAnimation();
        this.u = baseKeyframeAnimationCreateAnimation;
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation2 = gradientStroke.getStartPoint().createAnimation();
        this.v = baseKeyframeAnimationCreateAnimation2;
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation3 = gradientStroke.getEndPoint().createAnimation();
        this.w = baseKeyframeAnimationCreateAnimation3;
        baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation3);
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        Shader radialGradient;
        if (this.o) {
            return;
        }
        getBounds(this.r, matrix, false);
        GradientType gradientType = GradientType.LINEAR;
        GradientType gradientType2 = this.s;
        BaseKeyframeAnimation baseKeyframeAnimation = this.u;
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.w;
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.v;
        if (gradientType2 == gradientType) {
            long jB = b();
            LongSparseArray longSparseArray = this.p;
            shader = (LinearGradient) longSparseArray.get(jB);
            if (shader == null) {
                PointF pointF = (PointF) baseKeyframeAnimation3.getValue();
                PointF pointF2 = (PointF) baseKeyframeAnimation2.getValue();
                GradientColor gradientColor = (GradientColor) baseKeyframeAnimation.getValue();
                radialGradient = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, a(gradientColor.getColors()), gradientColor.getPositions(), Shader.TileMode.CLAMP);
                longSparseArray.put(jB, radialGradient);
                shader = radialGradient;
            }
        } else {
            long jB2 = b();
            LongSparseArray longSparseArray2 = this.q;
            shader = (RadialGradient) longSparseArray2.get(jB2);
            if (shader == null) {
                PointF pointF3 = (PointF) baseKeyframeAnimation3.getValue();
                PointF pointF4 = (PointF) baseKeyframeAnimation2.getValue();
                GradientColor gradientColor2 = (GradientColor) baseKeyframeAnimation.getValue();
                int[] iArrA = a(gradientColor2.getColors());
                float[] positions = gradientColor2.getPositions();
                radialGradient = new RadialGradient(pointF3.x, pointF3.y, (float) Math.hypot(pointF4.x - r10, pointF4.y - r11), iArrA, positions, Shader.TileMode.CLAMP);
                longSparseArray2.put(jB2, radialGradient);
                shader = radialGradient;
            }
        }
        shader.setLocalMatrix(matrix);
        this.h.setShader(shader);
        super.draw(canvas, matrix, i);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.n;
    }

    public final int b() {
        float progress = this.v.getProgress();
        int i = this.t;
        int iRound = Math.round(progress * i);
        int iRound2 = Math.round(this.w.getProgress() * i);
        int iRound3 = Math.round(this.u.getProgress() * i);
        int i2 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i2 = i2 * 31 * iRound2;
        }
        return iRound3 != 0 ? i2 * 31 * iRound3 : i2;
    }

    public final int[] a(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.x;
        if (valueCallbackKeyframeAnimation != null) {
            Integer[] numArr = (Integer[]) valueCallbackKeyframeAnimation.getValue();
            int i = 0;
            if (iArr.length == numArr.length) {
                while (i < iArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i < numArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.GRADIENT_COLOR) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.x;
            if (valueCallbackKeyframeAnimation != null) {
                this.layer.removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.x = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.x = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            this.layer.addAnimation(this.x);
        }
    }
}
