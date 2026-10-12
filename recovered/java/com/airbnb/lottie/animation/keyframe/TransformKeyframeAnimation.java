package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import java.util.Collections;

/* loaded from: classes.dex */
public class TransformKeyframeAnimation {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f2562a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f2563b;
    public final Matrix c;
    public final Matrix d;
    public final float[] e;
    public BaseKeyframeAnimation f;

    /* renamed from: g, reason: collision with root package name */
    public BaseKeyframeAnimation f2564g;
    public BaseKeyframeAnimation h;
    public BaseKeyframeAnimation i;
    public BaseKeyframeAnimation j;
    public FloatKeyframeAnimation k;
    public FloatKeyframeAnimation l;
    public BaseKeyframeAnimation m;
    public BaseKeyframeAnimation n;

    public TransformKeyframeAnimation(AnimatableTransform animatableTransform) {
        this.f = animatableTransform.getAnchorPoint() == null ? null : animatableTransform.getAnchorPoint().createAnimation();
        this.f2564g = animatableTransform.getPosition() == null ? null : animatableTransform.getPosition().createAnimation();
        this.h = animatableTransform.getScale() == null ? null : animatableTransform.getScale().createAnimation();
        this.i = animatableTransform.getRotation() == null ? null : animatableTransform.getRotation().createAnimation();
        FloatKeyframeAnimation floatKeyframeAnimation = animatableTransform.getSkew() == null ? null : (FloatKeyframeAnimation) animatableTransform.getSkew().createAnimation();
        this.k = floatKeyframeAnimation;
        if (floatKeyframeAnimation != null) {
            this.f2563b = new Matrix();
            this.c = new Matrix();
            this.d = new Matrix();
            this.e = new float[9];
        } else {
            this.f2563b = null;
            this.c = null;
            this.d = null;
            this.e = null;
        }
        this.l = animatableTransform.getSkewAngle() == null ? null : (FloatKeyframeAnimation) animatableTransform.getSkewAngle().createAnimation();
        if (animatableTransform.getOpacity() != null) {
            this.j = animatableTransform.getOpacity().createAnimation();
        }
        if (animatableTransform.getStartOpacity() != null) {
            this.m = animatableTransform.getStartOpacity().createAnimation();
        } else {
            this.m = null;
        }
        if (animatableTransform.getEndOpacity() != null) {
            this.n = animatableTransform.getEndOpacity().createAnimation();
        } else {
            this.n = null;
        }
    }

    public void addAnimationsToLayer(BaseLayer baseLayer) {
        baseLayer.addAnimation(this.j);
        baseLayer.addAnimation(this.m);
        baseLayer.addAnimation(this.n);
        baseLayer.addAnimation(this.f);
        baseLayer.addAnimation(this.f2564g);
        baseLayer.addAnimation(this.h);
        baseLayer.addAnimation(this.i);
        baseLayer.addAnimation(this.k);
        baseLayer.addAnimation(this.l);
    }

    public void addListener(BaseKeyframeAnimation.AnimationListener animationListener) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.j;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.m;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.n;
        if (baseKeyframeAnimation3 != null) {
            baseKeyframeAnimation3.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation4 = this.f;
        if (baseKeyframeAnimation4 != null) {
            baseKeyframeAnimation4.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation5 = this.f2564g;
        if (baseKeyframeAnimation5 != null) {
            baseKeyframeAnimation5.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation6 = this.h;
        if (baseKeyframeAnimation6 != null) {
            baseKeyframeAnimation6.addUpdateListener(animationListener);
        }
        BaseKeyframeAnimation baseKeyframeAnimation7 = this.i;
        if (baseKeyframeAnimation7 != null) {
            baseKeyframeAnimation7.addUpdateListener(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.k;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.addUpdateListener(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.l;
        if (floatKeyframeAnimation2 != null) {
            floatKeyframeAnimation2.addUpdateListener(animationListener);
        }
    }

    public void setProgress(float f) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.j;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.m;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.n;
        if (baseKeyframeAnimation3 != null) {
            baseKeyframeAnimation3.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation4 = this.f;
        if (baseKeyframeAnimation4 != null) {
            baseKeyframeAnimation4.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation5 = this.f2564g;
        if (baseKeyframeAnimation5 != null) {
            baseKeyframeAnimation5.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation6 = this.h;
        if (baseKeyframeAnimation6 != null) {
            baseKeyframeAnimation6.setProgress(f);
        }
        BaseKeyframeAnimation baseKeyframeAnimation7 = this.i;
        if (baseKeyframeAnimation7 != null) {
            baseKeyframeAnimation7.setProgress(f);
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.k;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.setProgress(f);
        }
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.l;
        if (floatKeyframeAnimation2 != null) {
            floatKeyframeAnimation2.setProgress(f);
        }
    }

    @Nullable
    public BaseKeyframeAnimation<?, Integer> getOpacity() {
        return this.j;
    }

    @Nullable
    public BaseKeyframeAnimation<?, Float> getStartOpacity() {
        return this.m;
    }

    @Nullable
    public BaseKeyframeAnimation<?, Float> getEndOpacity() {
        return this.n;
    }

    public Matrix getMatrix() {
        float floatValue;
        Matrix matrix = this.f2562a;
        matrix.reset();
        BaseKeyframeAnimation baseKeyframeAnimation = this.f2564g;
        if (baseKeyframeAnimation != null) {
            PointF pointF = (PointF) baseKeyframeAnimation.getValue();
            float f = pointF.x;
            if (f != 0.0f || pointF.y != 0.0f) {
                matrix.preTranslate(f, pointF.y);
            }
        }
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.i;
        if (baseKeyframeAnimation2 != null) {
            if (baseKeyframeAnimation2 instanceof ValueCallbackKeyframeAnimation) {
                floatValue = ((Float) baseKeyframeAnimation2.getValue()).floatValue();
            } else {
                floatValue = ((FloatKeyframeAnimation) baseKeyframeAnimation2).getFloatValue();
            }
            if (floatValue != 0.0f) {
                matrix.preRotate(floatValue);
            }
        }
        if (this.k != null) {
            float fCos = this.l == null ? 0.0f : (float) Math.cos(Math.toRadians((-r1.getFloatValue()) + 90.0f));
            float fSin = this.l == null ? 1.0f : (float) Math.sin(Math.toRadians((-r5.getFloatValue()) + 90.0f));
            float fTan = (float) Math.tan(Math.toRadians(this.k.getFloatValue()));
            a();
            float[] fArr = this.e;
            fArr[0] = fCos;
            fArr[1] = fSin;
            float f2 = -fSin;
            fArr[3] = f2;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            Matrix matrix2 = this.f2563b;
            matrix2.setValues(fArr);
            a();
            fArr[0] = 1.0f;
            fArr[3] = fTan;
            fArr[4] = 1.0f;
            fArr[8] = 1.0f;
            Matrix matrix3 = this.c;
            matrix3.setValues(fArr);
            a();
            fArr[0] = fCos;
            fArr[1] = f2;
            fArr[3] = fSin;
            fArr[4] = fCos;
            fArr[8] = 1.0f;
            Matrix matrix4 = this.d;
            matrix4.setValues(fArr);
            matrix3.preConcat(matrix2);
            matrix4.preConcat(matrix3);
            matrix.preConcat(matrix4);
        }
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.h;
        if (baseKeyframeAnimation3 != null) {
            ScaleXY scaleXY = (ScaleXY) baseKeyframeAnimation3.getValue();
            if (scaleXY.getScaleX() != 1.0f || scaleXY.getScaleY() != 1.0f) {
                matrix.preScale(scaleXY.getScaleX(), scaleXY.getScaleY());
            }
        }
        BaseKeyframeAnimation baseKeyframeAnimation4 = this.f;
        if (baseKeyframeAnimation4 != null) {
            PointF pointF2 = (PointF) baseKeyframeAnimation4.getValue();
            float f3 = pointF2.x;
            if (f3 != 0.0f || pointF2.y != 0.0f) {
                matrix.preTranslate(-f3, -pointF2.y);
            }
        }
        return matrix;
    }

    public final void a() {
        for (int i = 0; i < 9; i++) {
            this.e[i] = 0.0f;
        }
    }

    public Matrix getMatrixForRepeater(float f) {
        BaseKeyframeAnimation baseKeyframeAnimation = this.f2564g;
        PointF pointF = baseKeyframeAnimation == null ? null : (PointF) baseKeyframeAnimation.getValue();
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.h;
        ScaleXY scaleXY = baseKeyframeAnimation2 == null ? null : (ScaleXY) baseKeyframeAnimation2.getValue();
        Matrix matrix = this.f2562a;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f, pointF.y * f);
        }
        if (scaleXY != null) {
            double d = f;
            matrix.preScale((float) Math.pow(scaleXY.getScaleX(), d), (float) Math.pow(scaleXY.getScaleY(), d));
        }
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.i;
        if (baseKeyframeAnimation3 != null) {
            float fFloatValue = ((Float) baseKeyframeAnimation3.getValue()).floatValue();
            BaseKeyframeAnimation baseKeyframeAnimation4 = this.f;
            PointF pointF2 = baseKeyframeAnimation4 != null ? (PointF) baseKeyframeAnimation4.getValue() : null;
            matrix.preRotate(fFloatValue * f, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return matrix;
    }

    public <T> boolean applyValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        FloatKeyframeAnimation floatKeyframeAnimation;
        FloatKeyframeAnimation floatKeyframeAnimation2;
        BaseKeyframeAnimation baseKeyframeAnimation;
        BaseKeyframeAnimation baseKeyframeAnimation2;
        if (t == LottieProperty.TRANSFORM_ANCHOR_POINT) {
            BaseKeyframeAnimation baseKeyframeAnimation3 = this.f;
            if (baseKeyframeAnimation3 == null) {
                this.f = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
                return true;
            }
            baseKeyframeAnimation3.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_POSITION) {
            BaseKeyframeAnimation baseKeyframeAnimation4 = this.f2564g;
            if (baseKeyframeAnimation4 == null) {
                this.f2564g = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
                return true;
            }
            baseKeyframeAnimation4.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_POSITION_X) {
            BaseKeyframeAnimation baseKeyframeAnimation5 = this.f2564g;
            if (baseKeyframeAnimation5 instanceof SplitDimensionPathKeyframeAnimation) {
                ((SplitDimensionPathKeyframeAnimation) baseKeyframeAnimation5).setXValueCallback(lottieValueCallback);
                return true;
            }
        }
        if (t == LottieProperty.TRANSFORM_POSITION_Y) {
            BaseKeyframeAnimation baseKeyframeAnimation6 = this.f2564g;
            if (baseKeyframeAnimation6 instanceof SplitDimensionPathKeyframeAnimation) {
                ((SplitDimensionPathKeyframeAnimation) baseKeyframeAnimation6).setYValueCallback(lottieValueCallback);
                return true;
            }
        }
        if (t == LottieProperty.TRANSFORM_SCALE) {
            BaseKeyframeAnimation baseKeyframeAnimation7 = this.h;
            if (baseKeyframeAnimation7 == null) {
                this.h = new ValueCallbackKeyframeAnimation(lottieValueCallback, new ScaleXY());
                return true;
            }
            baseKeyframeAnimation7.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_ROTATION) {
            BaseKeyframeAnimation baseKeyframeAnimation8 = this.i;
            if (baseKeyframeAnimation8 == null) {
                this.i = new ValueCallbackKeyframeAnimation(lottieValueCallback, Float.valueOf(0.0f));
                return true;
            }
            baseKeyframeAnimation8.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_OPACITY) {
            BaseKeyframeAnimation baseKeyframeAnimation9 = this.j;
            if (baseKeyframeAnimation9 == null) {
                this.j = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
                return true;
            }
            baseKeyframeAnimation9.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_START_OPACITY && (baseKeyframeAnimation2 = this.m) != null) {
            if (baseKeyframeAnimation2 == null) {
                this.m = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
                return true;
            }
            baseKeyframeAnimation2.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_END_OPACITY && (baseKeyframeAnimation = this.n) != null) {
            if (baseKeyframeAnimation == null) {
                this.n = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
                return true;
            }
            baseKeyframeAnimation.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t == LottieProperty.TRANSFORM_SKEW && (floatKeyframeAnimation2 = this.k) != null) {
            if (floatKeyframeAnimation2 == null) {
                this.k = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(Float.valueOf(0.0f))));
            }
            this.k.setValueCallback(lottieValueCallback);
            return true;
        }
        if (t != LottieProperty.TRANSFORM_SKEW_ANGLE || (floatKeyframeAnimation = this.l) == null) {
            return false;
        }
        if (floatKeyframeAnimation == null) {
            this.l = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(Float.valueOf(0.0f))));
        }
        this.l.setValueCallback(lottieValueCallback);
        return true;
    }
}
