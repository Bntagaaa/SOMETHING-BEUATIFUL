package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.DrawingContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.MaskKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseLayer implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {

    /* renamed from: a, reason: collision with root package name */
    public final Path f2641a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f2642b = new Matrix();
    public final LPaint c = new LPaint(1);
    public final LPaint d;
    public final LPaint e;
    public final LPaint f;

    /* renamed from: g, reason: collision with root package name */
    public final LPaint f2643g;
    public final RectF h;
    public final RectF i;
    public final RectF j;
    public final RectF k;
    public final String l;
    public final Matrix m;
    public final LottieDrawable n;
    public final Layer o;
    public final MaskKeyframeAnimation p;
    public final FloatKeyframeAnimation q;
    public BaseLayer r;
    public BaseLayer s;
    public List t;
    public final ArrayList u;
    public final TransformKeyframeAnimation v;
    public boolean w;
    public boolean x;
    public LPaint y;

    public abstract void drawLayer(Canvas canvas, Matrix matrix, int i);

    public void resolveChildKeyPath(KeyPath keyPath, int i, List list, KeyPath keyPath2) {
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
    }

    public BaseLayer(LottieDrawable lottieDrawable, Layer layer) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.d = new LPaint(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.e = new LPaint(1, mode2);
        LPaint lPaint = new LPaint(1);
        this.f = lPaint;
        this.f2643g = new LPaint(PorterDuff.Mode.CLEAR);
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.m = new Matrix();
        this.u = new ArrayList();
        this.w = true;
        this.n = lottieDrawable;
        this.o = layer;
        this.l = _COROUTINE.a.m(new StringBuilder(), layer.c, "#draw");
        if (layer.u == Layer.MatteType.INVERT) {
            lPaint.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            lPaint.setXfermode(new PorterDuffXfermode(mode));
        }
        TransformKeyframeAnimation transformKeyframeAnimationCreateAnimation = layer.i.createAnimation();
        this.v = transformKeyframeAnimationCreateAnimation;
        transformKeyframeAnimationCreateAnimation.addListener(this);
        List list = layer.h;
        if (list != null && !list.isEmpty()) {
            MaskKeyframeAnimation maskKeyframeAnimation = new MaskKeyframeAnimation(list);
            this.p = maskKeyframeAnimation;
            Iterator<BaseKeyframeAnimation<ShapeData, Path>> it = maskKeyframeAnimation.getMaskAnimations().iterator();
            while (it.hasNext()) {
                it.next().addUpdateListener(this);
            }
            for (BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation : this.p.getOpacityAnimations()) {
                addAnimation(baseKeyframeAnimation);
                baseKeyframeAnimation.addUpdateListener(this);
            }
        }
        Layer layer2 = this.o;
        if (layer2.t.isEmpty()) {
            if (true != this.w) {
                this.w = true;
                this.n.invalidateSelf();
                return;
            }
            return;
        }
        FloatKeyframeAnimation floatKeyframeAnimation = new FloatKeyframeAnimation(layer2.t);
        this.q = floatKeyframeAnimation;
        floatKeyframeAnimation.setIsDiscrete();
        this.q.addUpdateListener(new com.airbnb.lottie.model.layer.a(this));
        boolean z = this.q.getValue().floatValue() == 1.0f;
        if (z != this.w) {
            this.w = z;
            this.n.invalidateSelf();
        }
        addAnimation(this.q);
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.o.c;
    }

    public void setOutlineMasksAndMattes(boolean z) {
        if (z && this.y == null) {
            this.y = new LPaint();
        }
        this.x = z;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.n.invalidateSelf();
    }

    public void addAnimation(@Nullable BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        if (baseKeyframeAnimation == null) {
            return;
        }
        this.u.add(baseKeyframeAnimation);
    }

    public void removeAnimation(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        this.u.remove(baseKeyframeAnimation);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    @CallSuper
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.h.set(0.0f, 0.0f, 0.0f, 0.0f);
        a();
        Matrix matrix2 = this.m;
        matrix2.set(matrix);
        if (z) {
            List list = this.t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    matrix2.preConcat(((BaseLayer) this.t.get(size)).v.getMatrix());
                }
            } else {
                BaseLayer baseLayer = this.s;
                if (baseLayer != null) {
                    matrix2.preConcat(baseLayer.v.getMatrix());
                }
            }
        }
        matrix2.preConcat(this.v.getMatrix());
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f1  */
    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r25, android.graphics.Matrix r26, int r27) {
        /*
            Method dump skipped, instructions count: 1057
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.model.layer.BaseLayer.draw(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    public final void b(Canvas canvas) {
        L.beginSection("Layer#clearLayer");
        RectF rectF = this.h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f2643g);
        L.endSection("Layer#clearLayer");
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2644a;

        /* renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f2645b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f2645b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2645b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2645b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2645b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f2644a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2644a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2644a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2644a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2644a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2644a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2644a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public final boolean c() {
        MaskKeyframeAnimation maskKeyframeAnimation = this.p;
        return (maskKeyframeAnimation == null || maskKeyframeAnimation.getMaskAnimations().isEmpty()) ? false : true;
    }

    public void setProgress(float f) {
        this.v.setProgress(f);
        MaskKeyframeAnimation maskKeyframeAnimation = this.p;
        int i = 0;
        if (maskKeyframeAnimation != null) {
            for (int i2 = 0; i2 < maskKeyframeAnimation.getMaskAnimations().size(); i2++) {
                maskKeyframeAnimation.getMaskAnimations().get(i2).setProgress(f);
            }
        }
        float f2 = this.o.m;
        if (f2 != 0.0f) {
            f /= f2;
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.q;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.setProgress(f / f2);
        }
        BaseLayer baseLayer = this.r;
        if (baseLayer != null) {
            baseLayer.setProgress(baseLayer.o.m * f);
        }
        while (true) {
            ArrayList arrayList = this.u;
            if (i >= arrayList.size()) {
                return;
            }
            ((BaseKeyframeAnimation) arrayList.get(i)).setProgress(f);
            i++;
        }
    }

    public final void a() {
        if (this.t != null) {
            return;
        }
        if (this.s == null) {
            this.t = Collections.EMPTY_LIST;
            return;
        }
        this.t = new ArrayList();
        for (BaseLayer baseLayer = this.s; baseLayer != null; baseLayer = baseLayer.s) {
            this.t.add(baseLayer);
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        BaseLayer baseLayer = this.r;
        if (baseLayer != null) {
            KeyPath keyPathAddKey = keyPath2.addKey(baseLayer.getName());
            if (keyPath.fullyResolvesTo(this.r.getName(), i)) {
                list.add(keyPathAddKey.resolve(this.r));
            }
            if (keyPath.propagateToChildren(getName(), i)) {
                this.r.resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(this.r.getName(), i) + i, list, keyPathAddKey);
            }
        }
        if (keyPath.matches(getName(), i)) {
            if (!"__container".equals(getName())) {
                keyPath2 = keyPath2.addKey(getName());
                if (keyPath.fullyResolvesTo(getName(), i)) {
                    list.add(keyPath2.resolve(this));
                }
            }
            if (keyPath.propagateToChildren(getName(), i)) {
                resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(getName(), i) + i, list, keyPath2);
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        this.v.applyValueCallback(t, lottieValueCallback);
    }
}
