package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public class RepeaterContent implements DrawingContent, b, a, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: a, reason: collision with root package name */
    public final Matrix f2539a = new Matrix();

    /* renamed from: b, reason: collision with root package name */
    public final Path f2540b = new Path();
    public final LottieDrawable c;
    public final BaseLayer d;
    public final String e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final BaseKeyframeAnimation f2541g;
    public final BaseKeyframeAnimation h;
    public final TransformKeyframeAnimation i;
    public ContentGroup j;

    public RepeaterContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Repeater repeater) {
        this.c = lottieDrawable;
        this.d = baseLayer;
        this.e = repeater.getName();
        this.f = repeater.isHidden();
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = repeater.getCopies().createAnimation();
        this.f2541g = baseKeyframeAnimationCreateAnimation;
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation2 = repeater.getOffset().createAnimation();
        this.h = baseKeyframeAnimationCreateAnimation2;
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        TransformKeyframeAnimation transformKeyframeAnimationCreateAnimation = repeater.getTransform().createAnimation();
        this.i = transformKeyframeAnimationCreateAnimation;
        transformKeyframeAnimationCreateAnimation.addAnimationsToLayer(baseLayer);
        transformKeyframeAnimationCreateAnimation.addListener(this);
    }

    @Override // com.airbnb.lottie.animation.content.a
    public void absorbContent(ListIterator<Content> listIterator) {
        if (this.j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.j = new ContentGroup(this.c, this.d, "Repeater", this.f, arrayList, null);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.e;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        this.j.setContents(list, list2);
    }

    @Override // com.airbnb.lottie.animation.content.b
    public Path getPath() {
        Path path = this.j.getPath();
        Path path2 = this.f2540b;
        path2.reset();
        float fFloatValue = ((Float) this.f2541g.getValue()).floatValue();
        float fFloatValue2 = ((Float) this.h.getValue()).floatValue();
        for (int i = ((int) fFloatValue) - 1; i >= 0; i--) {
            Matrix matrix = this.f2539a;
            matrix.set(this.i.getMatrixForRepeater(i + fFloatValue2));
            path2.addPath(path, matrix);
        }
        return path2;
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        float fFloatValue = ((Float) this.f2541g.getValue()).floatValue();
        float fFloatValue2 = ((Float) this.h.getValue()).floatValue();
        TransformKeyframeAnimation transformKeyframeAnimation = this.i;
        float fFloatValue3 = transformKeyframeAnimation.getStartOpacity().getValue().floatValue() / 100.0f;
        float fFloatValue4 = transformKeyframeAnimation.getEndOpacity().getValue().floatValue() / 100.0f;
        for (int i2 = ((int) fFloatValue) - 1; i2 >= 0; i2--) {
            Matrix matrix2 = this.f2539a;
            matrix2.set(matrix);
            float f = i2;
            matrix2.preConcat(transformKeyframeAnimation.getMatrixForRepeater(f + fFloatValue2));
            this.j.draw(canvas, matrix2, (int) (MiscUtils.lerp(fFloatValue3, fFloatValue4, f / fFloatValue) * i));
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.j.getBounds(rectF, matrix, z);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (this.i.applyValueCallback(t, lottieValueCallback)) {
            return;
        }
        if (t == LottieProperty.REPEATER_COPIES) {
            this.f2541g.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.REPEATER_OFFSET) {
            this.h.setValueCallback(lottieValueCallback);
        }
    }
}
