package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GradientFillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: a, reason: collision with root package name */
    public final String f2526a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f2527b;
    public final BaseLayer c;
    public final LongSparseArray d = new LongSparseArray();
    public final LongSparseArray e = new LongSparseArray();
    public final Path f;

    /* renamed from: g, reason: collision with root package name */
    public final LPaint f2528g;
    public final RectF h;
    public final ArrayList i;
    public final GradientType j;
    public final BaseKeyframeAnimation k;
    public final BaseKeyframeAnimation l;
    public final BaseKeyframeAnimation m;
    public final BaseKeyframeAnimation n;
    public ValueCallbackKeyframeAnimation o;
    public ValueCallbackKeyframeAnimation p;
    public final LottieDrawable q;
    public final int r;

    public GradientFillContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, GradientFill gradientFill) {
        Path path = new Path();
        this.f = path;
        this.f2528g = new LPaint(1);
        this.h = new RectF();
        this.i = new ArrayList();
        this.c = baseLayer;
        this.f2526a = gradientFill.getName();
        this.f2527b = gradientFill.isHidden();
        this.q = lottieDrawable;
        this.j = gradientFill.getGradientType();
        path.setFillType(gradientFill.getFillType());
        this.r = (int) (lottieDrawable.getComposition().getDuration() / 32.0f);
        BaseKeyframeAnimation<GradientColor, GradientColor> baseKeyframeAnimationCreateAnimation = gradientFill.getGradientColor().createAnimation();
        this.k = baseKeyframeAnimationCreateAnimation;
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation2 = gradientFill.getOpacity().createAnimation();
        this.l = baseKeyframeAnimationCreateAnimation2;
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation3 = gradientFill.getStartPoint().createAnimation();
        this.m = baseKeyframeAnimationCreateAnimation3;
        baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation3);
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation4 = gradientFill.getEndPoint().createAnimation();
        this.n = baseKeyframeAnimationCreateAnimation4;
        baseKeyframeAnimationCreateAnimation4.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation4);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.q.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list2.size(); i++) {
            Content content = list2.get(i);
            if (content instanceof b) {
                this.i.add((b) content);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        Shader shader;
        Shader radialGradient;
        if (this.f2527b) {
            return;
        }
        L.beginSection("GradientFillContent#draw");
        Path path = this.f;
        path.reset();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i2 >= arrayList.size()) {
                break;
            }
            path.addPath(((b) arrayList.get(i2)).getPath(), matrix);
            i2++;
        }
        path.computeBounds(this.h, false);
        GradientType gradientType = GradientType.LINEAR;
        GradientType gradientType2 = this.j;
        BaseKeyframeAnimation baseKeyframeAnimation = this.k;
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.n;
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.m;
        if (gradientType2 == gradientType) {
            long jB = b();
            LongSparseArray longSparseArray = this.d;
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
            LongSparseArray longSparseArray2 = this.e;
            shader = (RadialGradient) longSparseArray2.get(jB2);
            if (shader == null) {
                PointF pointF3 = (PointF) baseKeyframeAnimation3.getValue();
                PointF pointF4 = (PointF) baseKeyframeAnimation2.getValue();
                GradientColor gradientColor2 = (GradientColor) baseKeyframeAnimation.getValue();
                int[] iArrA = a(gradientColor2.getColors());
                float[] positions = gradientColor2.getPositions();
                float f = pointF3.x;
                float f2 = pointF3.y;
                float fHypot = (float) Math.hypot(pointF4.x - f, pointF4.y - f2);
                radialGradient = new RadialGradient(f, f2, fHypot <= 0.0f ? 0.001f : fHypot, iArrA, positions, Shader.TileMode.CLAMP);
                longSparseArray2.put(jB2, radialGradient);
                shader = radialGradient;
            }
        }
        shader.setLocalMatrix(matrix);
        LPaint lPaint = this.f2528g;
        lPaint.setShader(shader);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.o;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.getValue());
        }
        lPaint.setAlpha(MiscUtils.clamp((int) ((((i / 255.0f) * ((Integer) this.l.getValue()).intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(path, lPaint);
        L.endSection("GradientFillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i < arrayList.size()) {
                path.addPath(((b) arrayList.get(i)).getPath(), matrix);
                i++;
            } else {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f2526a;
    }

    public final int b() {
        float progress = this.m.getProgress();
        int i = this.r;
        int iRound = Math.round(progress * i);
        int iRound2 = Math.round(this.n.getProgress() * i);
        int iRound3 = Math.round(this.k.getProgress() * i);
        int i2 = iRound != 0 ? 527 * iRound : 17;
        if (iRound2 != 0) {
            i2 = i2 * 31 * iRound2;
        }
        return iRound3 != 0 ? i2 * 31 * iRound3 : i2;
    }

    public final int[] a(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.p;
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

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.OPACITY) {
            this.l.setValueCallback(lottieValueCallback);
            return;
        }
        ColorFilter colorFilter = LottieProperty.COLOR_FILTER;
        BaseLayer baseLayer = this.c;
        if (t == colorFilter) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.o;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.o = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.o = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            baseLayer.addAnimation(this.o);
            return;
        }
        if (t == LottieProperty.GRADIENT_COLOR) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = this.p;
            if (valueCallbackKeyframeAnimation3 != null) {
                baseLayer.removeAnimation(valueCallbackKeyframeAnimation3);
            }
            if (lottieValueCallback == null) {
                this.p = null;
                return;
            }
            this.d.clear();
            this.e.clear();
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation4 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.p = valueCallbackKeyframeAnimation4;
            valueCallbackKeyframeAnimation4.addUpdateListener(this);
            baseLayer.addAnimation(this.p);
        }
    }
}
