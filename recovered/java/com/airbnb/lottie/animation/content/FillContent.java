package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.ShapeFill;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: a, reason: collision with root package name */
    public final Path f2523a;

    /* renamed from: b, reason: collision with root package name */
    public final LPaint f2524b;
    public final BaseLayer c;
    public final String d;
    public final boolean e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final BaseKeyframeAnimation f2525g;
    public final BaseKeyframeAnimation h;
    public ValueCallbackKeyframeAnimation i;
    public final LottieDrawable j;

    public FillContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeFill shapeFill) {
        Path path = new Path();
        this.f2523a = path;
        this.f2524b = new LPaint(1);
        this.f = new ArrayList();
        this.c = baseLayer;
        this.d = shapeFill.getName();
        this.e = shapeFill.isHidden();
        this.j = lottieDrawable;
        if (shapeFill.getColor() == null || shapeFill.getOpacity() == null) {
            this.f2525g = null;
            this.h = null;
            return;
        }
        path.setFillType(shapeFill.getFillType());
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation = shapeFill.getColor().createAnimation();
        this.f2525g = baseKeyframeAnimationCreateAnimation;
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimationCreateAnimation2 = shapeFill.getOpacity().createAnimation();
        this.h = baseKeyframeAnimationCreateAnimation2;
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.j.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list2.size(); i++) {
            Content content = list2.get(i);
            if (content instanceof b) {
                this.f.add((b) content);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.d;
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        if (this.e) {
            return;
        }
        L.beginSection("FillContent#draw");
        LPaint lPaint = this.f2524b;
        lPaint.setColor(((ColorKeyframeAnimation) this.f2525g).getIntValue());
        int i2 = 0;
        lPaint.setAlpha(MiscUtils.clamp((int) ((((i / 255.0f) * ((Integer) this.h.getValue()).intValue()) / 100.0f) * 255.0f), 0, 255));
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.i;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.getValue());
        }
        Path path = this.f2523a;
        path.reset();
        while (true) {
            ArrayList arrayList = this.f;
            if (i2 < arrayList.size()) {
                path.addPath(((b) arrayList.get(i2)).getPath(), matrix);
                i2++;
            } else {
                canvas.drawPath(path, lPaint);
                L.endSection("FillContent#draw");
                return;
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        Path path = this.f2523a;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f;
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

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.COLOR) {
            this.f2525g.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.OPACITY) {
            this.h.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.COLOR_FILTER) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.i;
            BaseLayer baseLayer = this.c;
            if (valueCallbackKeyframeAnimation != null) {
                baseLayer.removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.i = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.i = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            baseLayer.addAnimation(this.i);
        }
    }
}
