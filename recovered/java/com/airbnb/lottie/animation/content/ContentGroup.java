package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.ShapeGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ContentGroup implements DrawingContent, b, BaseKeyframeAnimation.AnimationListener, KeyPathElement {

    /* renamed from: a, reason: collision with root package name */
    public final LPaint f2517a;

    /* renamed from: b, reason: collision with root package name */
    public final RectF f2518b;
    public final Matrix c;
    public final Path d;
    public final RectF e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f2519g;
    public final ArrayList h;
    public final LottieDrawable i;
    public ArrayList j;
    public final TransformKeyframeAnimation k;

    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeGroup shapeGroup) {
        AnimatableTransform animatableTransform;
        String name = shapeGroup.getName();
        boolean zIsHidden = shapeGroup.isHidden();
        List<ContentModel> items = shapeGroup.getItems();
        ArrayList arrayList = new ArrayList(items.size());
        int i = 0;
        for (int i2 = 0; i2 < items.size(); i2++) {
            Content content = items.get(i2).toContent(lottieDrawable, baseLayer);
            if (content != null) {
                arrayList.add(content);
            }
        }
        List<ContentModel> items2 = shapeGroup.getItems();
        while (true) {
            if (i >= items2.size()) {
                animatableTransform = null;
                break;
            }
            ContentModel contentModel = items2.get(i);
            if (contentModel instanceof AnimatableTransform) {
                animatableTransform = (AnimatableTransform) contentModel;
                break;
            }
            i++;
        }
        this(lottieDrawable, baseLayer, name, zIsHidden, arrayList, animatableTransform);
    }

    public ContentGroup(LottieDrawable lottieDrawable, BaseLayer baseLayer, String str, boolean z, ArrayList arrayList, AnimatableTransform animatableTransform) {
        this.f2517a = new LPaint();
        this.f2518b = new RectF();
        this.c = new Matrix();
        this.d = new Path();
        this.e = new RectF();
        this.f = str;
        this.i = lottieDrawable;
        this.f2519g = z;
        this.h = arrayList;
        if (animatableTransform != null) {
            TransformKeyframeAnimation transformKeyframeAnimationCreateAnimation = animatableTransform.createAnimation();
            this.k = transformKeyframeAnimationCreateAnimation;
            transformKeyframeAnimationCreateAnimation.addAnimationsToLayer(baseLayer);
            transformKeyframeAnimationCreateAnimation.addListener(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList.get(size);
            if (content instanceof a) {
                arrayList2.add((a) content);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((a) arrayList2.get(size2)).absorbContent(arrayList.listIterator(arrayList.size()));
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.i.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        int size = list.size();
        ArrayList arrayList = this.h;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            Content content = (Content) arrayList.get(size2);
            content.setContents(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(content);
        }
    }

    public final List a() {
        if (this.j == null) {
            this.j = new ArrayList();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.h;
                if (i >= arrayList.size()) {
                    break;
                }
                Content content = (Content) arrayList.get(i);
                if (content instanceof b) {
                    this.j.add((b) content);
                }
                i++;
            }
        }
        return this.j;
    }

    @Override // com.airbnb.lottie.animation.content.b
    public Path getPath() {
        Matrix matrix = this.c;
        matrix.reset();
        TransformKeyframeAnimation transformKeyframeAnimation = this.k;
        if (transformKeyframeAnimation != null) {
            matrix.set(transformKeyframeAnimation.getMatrix());
        }
        Path path = this.d;
        path.reset();
        if (!this.f2519g) {
            ArrayList arrayList = this.h;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Content content = (Content) arrayList.get(size);
                if (content instanceof b) {
                    path.addPath(((b) content).getPath(), matrix);
                }
            }
        }
        return path;
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i) {
        if (this.f2519g) {
            return;
        }
        Matrix matrix2 = this.c;
        matrix2.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.k;
        if (transformKeyframeAnimation != null) {
            matrix2.preConcat(transformKeyframeAnimation.getMatrix());
            i = (int) (((((transformKeyframeAnimation.getOpacity() == null ? 100 : transformKeyframeAnimation.getOpacity().getValue().intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        boolean zIsApplyingOpacityToLayersEnabled = this.i.isApplyingOpacityToLayersEnabled();
        ArrayList arrayList = this.h;
        boolean z = false;
        if (zIsApplyingOpacityToLayersEnabled) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                if (i2 >= arrayList.size()) {
                    break;
                }
                if (!(arrayList.get(i2) instanceof DrawingContent) || (i3 = i3 + 1) < 2) {
                    i2++;
                } else if (i != 255) {
                    z = true;
                }
            }
        }
        if (z) {
            RectF rectF = this.f2518b;
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            getBounds(rectF, matrix2, true);
            LPaint lPaint = this.f2517a;
            lPaint.setAlpha(i);
            Utils.saveLayerCompat(canvas, rectF, lPaint);
        }
        if (z) {
            i = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof DrawingContent) {
                ((DrawingContent) obj).draw(canvas, matrix2, i);
            }
        }
        if (z) {
            canvas.restore();
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        Matrix matrix2 = this.c;
        matrix2.set(matrix);
        TransformKeyframeAnimation transformKeyframeAnimation = this.k;
        if (transformKeyframeAnimation != null) {
            matrix2.preConcat(transformKeyframeAnimation.getMatrix());
        }
        RectF rectF2 = this.e;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        ArrayList arrayList = this.h;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Content content = (Content) arrayList.get(size);
            if (content instanceof DrawingContent) {
                ((DrawingContent) content).getBounds(rectF2, matrix2, z);
                rectF.union(rectF2);
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        if (!keyPath.matches(getName(), i) && !"__container".equals(getName())) {
            return;
        }
        if (!"__container".equals(getName())) {
            keyPath2 = keyPath2.addKey(getName());
            if (keyPath.fullyResolvesTo(getName(), i)) {
                list.add(keyPath2.resolve(this));
            }
        }
        if (!keyPath.propagateToChildren(getName(), i)) {
            return;
        }
        int iIncrementDepthBy = keyPath.incrementDepthBy(getName(), i) + i;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.h;
            if (i2 >= arrayList.size()) {
                return;
            }
            Content content = (Content) arrayList.get(i2);
            if (content instanceof KeyPathElement) {
                ((KeyPathElement) content).resolveKeyPath(keyPath, iIncrementDepthBy, list, keyPath2);
            }
            i2++;
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        TransformKeyframeAnimation transformKeyframeAnimation = this.k;
        if (transformKeyframeAnimation != null) {
            transformKeyframeAnimation.applyValueCallback(t, lottieValueCallback);
        }
    }
}
