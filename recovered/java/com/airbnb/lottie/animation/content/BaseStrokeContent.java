package com.airbnb.lottie.animation.content;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, DrawingContent {
    public final LottieDrawable e;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f2513g;
    public final LPaint h;
    public final BaseKeyframeAnimation i;
    public final BaseKeyframeAnimation j;
    public final ArrayList k;
    public final BaseKeyframeAnimation l;
    protected final BaseLayer layer;
    public ValueCallbackKeyframeAnimation m;

    /* renamed from: a, reason: collision with root package name */
    public final PathMeasure f2511a = new PathMeasure();

    /* renamed from: b, reason: collision with root package name */
    public final Path f2512b = new Path();
    public final Path c = new Path();
    public final RectF d = new RectF();
    public final ArrayList f = new ArrayList();

    public BaseStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Paint.Cap cap, Paint.Join join, float f, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue, List list, AnimatableFloatValue animatableFloatValue2) {
        LPaint lPaint = new LPaint(1);
        this.h = lPaint;
        this.e = lottieDrawable;
        this.layer = baseLayer;
        lPaint.setStyle(Paint.Style.STROKE);
        lPaint.setStrokeCap(cap);
        lPaint.setStrokeJoin(join);
        lPaint.setStrokeMiter(f);
        this.j = animatableIntegerValue.createAnimation();
        this.i = animatableFloatValue.createAnimation();
        if (animatableFloatValue2 == null) {
            this.l = null;
        } else {
            this.l = animatableFloatValue2.createAnimation();
        }
        this.k = new ArrayList(list.size());
        this.f2513g = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.k.add(((AnimatableFloatValue) list.get(i)).createAnimation());
        }
        baseLayer.addAnimation(this.j);
        baseLayer.addAnimation(this.i);
        for (int i2 = 0; i2 < this.k.size(); i2++) {
            baseLayer.addAnimation((BaseKeyframeAnimation) this.k.get(i2));
        }
        BaseKeyframeAnimation<?, ?> baseKeyframeAnimation = this.l;
        if (baseKeyframeAnimation != null) {
            baseLayer.addAnimation(baseKeyframeAnimation);
        }
        this.j.addUpdateListener(this);
        this.i.addUpdateListener(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            ((BaseKeyframeAnimation) this.k.get(i3)).addUpdateListener(this);
        }
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.l;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.addUpdateListener(this);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.e.invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    @Override // com.airbnb.lottie.animation.content.Content
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setContents(java.util.List<com.airbnb.lottie.animation.content.Content> r8, java.util.List<com.airbnb.lottie.animation.content.Content> r9) {
        /*
            r7 = this;
            int r0 = r8.size()
            int r0 = r0 + (-1)
            r1 = 0
            r2 = r1
        L8:
            if (r0 < 0) goto L20
            java.lang.Object r3 = r8.get(r0)
            com.airbnb.lottie.animation.content.Content r3 = (com.airbnb.lottie.animation.content.Content) r3
            boolean r4 = r3 instanceof com.airbnb.lottie.animation.content.TrimPathContent
            if (r4 == 0) goto L1d
            com.airbnb.lottie.animation.content.TrimPathContent r3 = (com.airbnb.lottie.animation.content.TrimPathContent) r3
            com.airbnb.lottie.model.content.ShapeTrimPath$Type r4 = r3.d
            com.airbnb.lottie.model.content.ShapeTrimPath$Type r5 = com.airbnb.lottie.model.content.ShapeTrimPath.Type.INDIVIDUALLY
            if (r4 != r5) goto L1d
            r2 = r3
        L1d:
            int r0 = r0 + (-1)
            goto L8
        L20:
            if (r2 == 0) goto L25
            r2.a(r7)
        L25:
            int r8 = r9.size()
            int r8 = r8 + (-1)
        L2b:
            java.util.ArrayList r0 = r7.f
            if (r8 < 0) goto L66
            java.lang.Object r3 = r9.get(r8)
            com.airbnb.lottie.animation.content.Content r3 = (com.airbnb.lottie.animation.content.Content) r3
            boolean r4 = r3 instanceof com.airbnb.lottie.animation.content.TrimPathContent
            if (r4 == 0) goto L51
            r4 = r3
            com.airbnb.lottie.animation.content.TrimPathContent r4 = (com.airbnb.lottie.animation.content.TrimPathContent) r4
            com.airbnb.lottie.model.content.ShapeTrimPath$Type r5 = r4.d
            com.airbnb.lottie.model.content.ShapeTrimPath$Type r6 = com.airbnb.lottie.model.content.ShapeTrimPath.Type.INDIVIDUALLY
            if (r5 != r6) goto L51
            if (r1 == 0) goto L47
            r0.add(r1)
        L47:
            com.airbnb.lottie.animation.content.BaseStrokeContent$b r0 = new com.airbnb.lottie.animation.content.BaseStrokeContent$b
            r0.<init>(r4)
            r4.a(r7)
            r1 = r0
            goto L63
        L51:
            boolean r0 = r3 instanceof com.airbnb.lottie.animation.content.b
            if (r0 == 0) goto L63
            if (r1 != 0) goto L5c
            com.airbnb.lottie.animation.content.BaseStrokeContent$b r1 = new com.airbnb.lottie.animation.content.BaseStrokeContent$b
            r1.<init>(r2)
        L5c:
            java.util.ArrayList r0 = r1.f2514a
            com.airbnb.lottie.animation.content.b r3 = (com.airbnb.lottie.animation.content.b) r3
            r0.add(r3)
        L63:
            int r8 = r8 + (-1)
            goto L2b
        L66:
            if (r1 == 0) goto L6b
            r0.add(r1)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.BaseStrokeContent.setContents(java.util.List, java.util.List):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x01ad  */
    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r21, android.graphics.Matrix r22, int r23) {
        /*
            Method dump skipped, instructions count: 562
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.BaseStrokeContent.draw(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        L.beginSection("StrokeContent#getBounds");
        Path path = this.f2512b;
        path.reset();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f;
            if (i < arrayList.size()) {
                b bVar = (b) arrayList.get(i);
                for (int i2 = 0; i2 < bVar.f2514a.size(); i2++) {
                    path.addPath(((com.airbnb.lottie.animation.content.b) bVar.f2514a.get(i2)).getPath(), matrix);
                }
                i++;
            } else {
                RectF rectF2 = this.d;
                path.computeBounds(rectF2, false);
                float floatValue = ((FloatKeyframeAnimation) this.i).getFloatValue() / 2.0f;
                rectF2.set(rectF2.left - floatValue, rectF2.top - floatValue, rectF2.right + floatValue, rectF2.bottom + floatValue);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                L.endSection("StrokeContent#getBounds");
                return;
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.OPACITY) {
            this.j.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.STROKE_WIDTH) {
            this.i.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.COLOR_FILTER) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.m;
            if (valueCallbackKeyframeAnimation != null) {
                this.layer.removeAnimation(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.m = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.m = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.addUpdateListener(this);
            this.layer.addAnimation(this.m);
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f2514a = new ArrayList();

        /* renamed from: b, reason: collision with root package name */
        public final TrimPathContent f2515b;

        public b(TrimPathContent trimPathContent) {
            this.f2515b = trimPathContent;
        }
    }
}
