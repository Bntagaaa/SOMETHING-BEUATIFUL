package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CompositionLayer extends BaseLayer {
    public final ArrayList A;
    public final RectF B;
    public final RectF C;
    public final Paint D;
    public Boolean E;
    public Boolean F;
    public BaseKeyframeAnimation z;

    public CompositionLayer(LottieDrawable lottieDrawable, Layer layer, List<Layer> list, LottieComposition lottieComposition) {
        BaseLayer baseLayer;
        BaseLayer shapeLayer;
        super(lottieDrawable, layer);
        this.A = new ArrayList();
        this.B = new RectF();
        this.C = new RectF();
        this.D = new Paint();
        AnimatableFloatValue animatableFloatValue = layer.s;
        if (animatableFloatValue != null) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = animatableFloatValue.createAnimation();
            this.z = baseKeyframeAnimationCreateAnimation;
            addAnimation(baseKeyframeAnimationCreateAnimation);
            this.z.addUpdateListener(this);
        } else {
            this.z = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(lottieComposition.getLayers().size());
        int size = list.size() - 1;
        BaseLayer baseLayer2 = null;
        while (true) {
            if (size >= 0) {
                Layer layer2 = list.get(size);
                switch (BaseLayer.a.f2644a[layer2.getLayerType().ordinal()]) {
                    case 1:
                        shapeLayer = new ShapeLayer(lottieDrawable, layer2);
                        break;
                    case 2:
                        shapeLayer = new CompositionLayer(lottieDrawable, layer2, lottieComposition.getPrecomps(layer2.f2649g), lottieComposition);
                        break;
                    case 3:
                        shapeLayer = new SolidLayer(lottieDrawable, layer2);
                        break;
                    case 4:
                        shapeLayer = new ImageLayer(lottieDrawable, layer2);
                        break;
                    case 5:
                        shapeLayer = new NullLayer(lottieDrawable, layer2);
                        break;
                    case 6:
                        shapeLayer = new TextLayer(lottieDrawable, layer2);
                        break;
                    default:
                        Logger.warning("Unknown layer type " + layer2.getLayerType());
                        shapeLayer = null;
                        break;
                }
                if (shapeLayer != null) {
                    longSparseArray.put(shapeLayer.o.getId(), shapeLayer);
                    if (baseLayer2 == null) {
                        this.A.add(0, shapeLayer);
                        int i = a.f2646a[layer2.u.ordinal()];
                        if (i == 1 || i == 2) {
                            baseLayer2 = shapeLayer;
                        }
                    } else {
                        baseLayer2.r = shapeLayer;
                        baseLayer2 = null;
                    }
                }
                size--;
            } else {
                for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                    BaseLayer baseLayer3 = (BaseLayer) longSparseArray.get(longSparseArray.keyAt(i2));
                    if (baseLayer3 != null && (baseLayer = (BaseLayer) longSparseArray.get(baseLayer3.o.f)) != null) {
                        baseLayer3.s = baseLayer;
                    }
                }
                return;
            }
        }
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2646a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f2646a = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2646a[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void setOutlineMasksAndMattes(boolean z) {
        super.setOutlineMasksAndMattes(z);
        Iterator it = this.A.iterator();
        while (it.hasNext()) {
            ((BaseLayer) it.next()).setOutlineMasksAndMattes(z);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void drawLayer(Canvas canvas, Matrix matrix, int i) {
        L.beginSection("CompositionLayer#draw");
        RectF rectF = this.C;
        Layer layer = this.o;
        rectF.set(0.0f, 0.0f, layer.o, layer.p);
        matrix.mapRect(rectF);
        boolean zIsApplyingOpacityToLayersEnabled = this.n.isApplyingOpacityToLayersEnabled();
        ArrayList arrayList = this.A;
        boolean z = zIsApplyingOpacityToLayersEnabled && arrayList.size() > 1 && i != 255;
        if (z) {
            Paint paint = this.D;
            paint.setAlpha(i);
            Utils.saveLayerCompat(canvas, rectF, paint);
        } else {
            canvas.save();
        }
        if (z) {
            i = 255;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!rectF.isEmpty() ? canvas.clipRect(rectF) : true) {
                ((BaseLayer) arrayList.get(size)).draw(canvas, matrix, i);
            }
        }
        canvas.restore();
        L.endSection("CompositionLayer#draw");
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        super.getBounds(rectF, matrix, z);
        ArrayList arrayList = this.A;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.B;
            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((BaseLayer) arrayList.get(size)).getBounds(rectF2, this.m, true);
            rectF.union(rectF2);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        super.setProgress(f);
        BaseKeyframeAnimation baseKeyframeAnimation = this.z;
        Layer layer = this.o;
        if (baseKeyframeAnimation != null) {
            f = ((layer.f2648b.getFrameRate() * ((Float) this.z.getValue()).floatValue()) - layer.f2648b.getStartFrame()) / (this.n.getComposition().getDurationFrames() + 0.01f);
        }
        if (this.z == null) {
            f -= layer.n / layer.f2648b.getDurationFrames();
        }
        float f2 = layer.m;
        if (f2 != 0.0f) {
            f /= f2;
        }
        ArrayList arrayList = this.A;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((BaseLayer) arrayList.get(size)).setProgress(f);
        }
    }

    public boolean hasMasks() {
        if (this.F == null) {
            ArrayList arrayList = this.A;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                BaseLayer baseLayer = (BaseLayer) arrayList.get(size);
                if (baseLayer instanceof ShapeLayer) {
                    if (baseLayer.c()) {
                        this.F = Boolean.TRUE;
                        return true;
                    }
                } else if ((baseLayer instanceof CompositionLayer) && ((CompositionLayer) baseLayer).hasMasks()) {
                    this.F = Boolean.TRUE;
                    return true;
                }
            }
            this.F = Boolean.FALSE;
        }
        return this.F.booleanValue();
    }

    public boolean hasMatte() {
        if (this.E == null) {
            if (this.r != null) {
                this.E = Boolean.TRUE;
                return true;
            }
            ArrayList arrayList = this.A;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((BaseLayer) arrayList.get(size)).r != null) {
                    this.E = Boolean.TRUE;
                    return true;
                }
            }
            this.E = Boolean.FALSE;
        }
        return this.E.booleanValue();
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public void resolveChildKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.A;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((BaseLayer) arrayList.get(i2)).resolveKeyPath(keyPath, i, list, keyPath2);
            i2++;
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.addValueCallback(t, lottieValueCallback);
        if (t == LottieProperty.TIME_REMAP) {
            if (lottieValueCallback == null) {
                BaseKeyframeAnimation baseKeyframeAnimation = this.z;
                if (baseKeyframeAnimation != null) {
                    baseKeyframeAnimation.setValueCallback(null);
                    return;
                }
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.z = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.addUpdateListener(this);
            addAnimation(this.z);
        }
    }
}
