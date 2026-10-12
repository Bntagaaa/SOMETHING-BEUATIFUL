package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public class RectangleContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, b {
    public final String c;
    public final boolean d;
    public final LottieDrawable e;
    public final BaseKeyframeAnimation f;

    /* renamed from: g, reason: collision with root package name */
    public final BaseKeyframeAnimation f2538g;
    public final BaseKeyframeAnimation h;
    public boolean j;

    /* renamed from: a, reason: collision with root package name */
    public final Path f2536a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final RectF f2537b = new RectF();
    public final CompoundTrimPathContent i = new CompoundTrimPathContent();

    public RectangleContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, RectangleShape rectangleShape) {
        this.c = rectangleShape.getName();
        this.d = rectangleShape.isHidden();
        this.e = lottieDrawable;
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation = rectangleShape.getPosition().createAnimation();
        this.f = baseKeyframeAnimationCreateAnimation;
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation2 = rectangleShape.getSize().createAnimation();
        this.f2538g = baseKeyframeAnimationCreateAnimation2;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation3 = rectangleShape.getCornerRadius().createAnimation();
        this.h = baseKeyframeAnimationCreateAnimation3;
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation3);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.c;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.j = false;
        this.e.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.d == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.i.f2516a.add(trimPathContent);
                    trimPathContent.a(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public Path getPath() {
        float f;
        boolean z = this.j;
        Path path = this.f2536a;
        if (z) {
            return path;
        }
        path.reset();
        if (this.d) {
            this.j = true;
            return path;
        }
        PointF pointF = (PointF) this.f2538g.getValue();
        float f2 = pointF.x / 2.0f;
        float f3 = pointF.y / 2.0f;
        BaseKeyframeAnimation baseKeyframeAnimation = this.h;
        float floatValue = baseKeyframeAnimation == null ? 0.0f : ((FloatKeyframeAnimation) baseKeyframeAnimation).getFloatValue();
        float fMin = Math.min(f2, f3);
        if (floatValue > fMin) {
            floatValue = fMin;
        }
        PointF pointF2 = (PointF) this.f.getValue();
        path.moveTo(pointF2.x + f2, (pointF2.y - f3) + floatValue);
        path.lineTo(pointF2.x + f2, (pointF2.y + f3) - floatValue);
        RectF rectF = this.f2537b;
        if (floatValue > 0.0f) {
            float f4 = pointF2.x + f2;
            float f5 = floatValue * 2.0f;
            f = 2.0f;
            float f6 = pointF2.y + f3;
            rectF.set(f4 - f5, f6 - f5, f4, f6);
            path.arcTo(rectF, 0.0f, 90.0f, false);
        } else {
            f = 2.0f;
        }
        path.lineTo((pointF2.x - f2) + floatValue, pointF2.y + f3);
        if (floatValue > 0.0f) {
            float f7 = pointF2.x - f2;
            float f8 = pointF2.y + f3;
            float f9 = floatValue * f;
            rectF.set(f7, f8 - f9, f9 + f7, f8);
            path.arcTo(rectF, 90.0f, 90.0f, false);
        }
        path.lineTo(pointF2.x - f2, (pointF2.y - f3) + floatValue);
        if (floatValue > 0.0f) {
            float f10 = pointF2.x - f2;
            float f11 = pointF2.y - f3;
            float f12 = floatValue * f;
            rectF.set(f10, f11, f10 + f12, f12 + f11);
            path.arcTo(rectF, 180.0f, 90.0f, false);
        }
        path.lineTo((pointF2.x + f2) - floatValue, pointF2.y - f3);
        if (floatValue > 0.0f) {
            float f13 = pointF2.x + f2;
            float f14 = floatValue * f;
            float f15 = pointF2.y - f3;
            rectF.set(f13 - f14, f15, f13, f14 + f15);
            path.arcTo(rectF, 270.0f, 90.0f, false);
        }
        path.close();
        this.i.apply(path);
        this.j = true;
        return path;
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.RECTANGLE_SIZE) {
            this.f2538g.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.POSITION) {
            this.f.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.CORNER_RADIUS) {
            this.h.setValueCallback(lottieValueCallback);
        }
    }
}
