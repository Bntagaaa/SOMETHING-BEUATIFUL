package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;

/* loaded from: classes.dex */
public class PolystarContent implements b, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: b, reason: collision with root package name */
    public final String f2533b;
    public final LottieDrawable c;
    public final PolystarShape.Type d;
    public final boolean e;
    public final BaseKeyframeAnimation f;

    /* renamed from: g, reason: collision with root package name */
    public final BaseKeyframeAnimation f2534g;
    public final BaseKeyframeAnimation h;
    public final BaseKeyframeAnimation i;
    public final BaseKeyframeAnimation j;
    public final BaseKeyframeAnimation k;
    public final BaseKeyframeAnimation l;
    public boolean n;

    /* renamed from: a, reason: collision with root package name */
    public final Path f2532a = new Path();
    public final CompoundTrimPathContent m = new CompoundTrimPathContent();

    public PolystarContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, PolystarShape polystarShape) {
        this.c = lottieDrawable;
        this.f2533b = polystarShape.getName();
        PolystarShape.Type type = polystarShape.getType();
        this.d = type;
        this.e = polystarShape.isHidden();
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = polystarShape.getPoints().createAnimation();
        this.f = baseKeyframeAnimationCreateAnimation;
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimationCreateAnimation2 = polystarShape.getPosition().createAnimation();
        this.f2534g = baseKeyframeAnimationCreateAnimation2;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation3 = polystarShape.getRotation().createAnimation();
        this.h = baseKeyframeAnimationCreateAnimation3;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation4 = polystarShape.getOuterRadius().createAnimation();
        this.j = baseKeyframeAnimationCreateAnimation4;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation5 = polystarShape.getOuterRoundedness().createAnimation();
        this.l = baseKeyframeAnimationCreateAnimation5;
        PolystarShape.Type type2 = PolystarShape.Type.STAR;
        if (type == type2) {
            this.i = polystarShape.getInnerRadius().createAnimation();
            this.k = polystarShape.getInnerRoundedness().createAnimation();
        } else {
            this.i = null;
            this.k = null;
        }
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation3);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation4);
        baseLayer.addAnimation(baseKeyframeAnimationCreateAnimation5);
        if (type == type2) {
            baseLayer.addAnimation(this.i);
            baseLayer.addAnimation(this.k);
        }
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation4.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation5.addUpdateListener(this);
        if (type == type2) {
            this.i.addUpdateListener(this);
            this.k.addUpdateListener(this);
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.n = false;
        this.c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.d == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.m.f2516a.add(trimPathContent);
                    trimPathContent.a(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.b
    public Path getPath() {
        float f;
        float f2;
        float f3;
        double d;
        float f4;
        float f5;
        float f6;
        float f7;
        int i;
        float f8;
        float f9;
        float f10;
        int i2;
        double d2;
        boolean z = this.n;
        Path path = this.f2532a;
        if (z) {
            return path;
        }
        path.reset();
        if (this.e) {
            this.n = true;
            return path;
        }
        int i3 = a.f2535a[this.d.ordinal()];
        BaseKeyframeAnimation baseKeyframeAnimation = this.f2534g;
        BaseKeyframeAnimation baseKeyframeAnimation2 = this.j;
        BaseKeyframeAnimation baseKeyframeAnimation3 = this.l;
        BaseKeyframeAnimation baseKeyframeAnimation4 = this.h;
        BaseKeyframeAnimation baseKeyframeAnimation5 = this.f;
        if (i3 == 1) {
            float fFloatValue = ((Float) baseKeyframeAnimation5.getValue()).floatValue();
            double radians = Math.toRadians((baseKeyframeAnimation4 != null ? ((Float) baseKeyframeAnimation4.getValue()).floatValue() : 0.0d) - 90.0d);
            double d3 = fFloatValue;
            float f11 = (float) (6.283185307179586d / d3);
            float f12 = f11 / 2.0f;
            float f13 = fFloatValue - ((int) fFloatValue);
            if (f13 != 0.0f) {
                f = f12;
                f2 = 2.0f;
                radians += (1.0f - f13) * f12;
            } else {
                f = f12;
                f2 = 2.0f;
            }
            float fFloatValue2 = ((Float) baseKeyframeAnimation2.getValue()).floatValue();
            float fFloatValue3 = ((Float) this.i.getValue()).floatValue();
            BaseKeyframeAnimation baseKeyframeAnimation6 = this.k;
            float fFloatValue4 = baseKeyframeAnimation6 != null ? ((Float) baseKeyframeAnimation6.getValue()).floatValue() / 100.0f : 0.0f;
            float fFloatValue5 = baseKeyframeAnimation3 != null ? ((Float) baseKeyframeAnimation3.getValue()).floatValue() / 100.0f : 0.0f;
            if (f13 != 0.0f) {
                float fA = _COROUTINE.a.a(fFloatValue2, fFloatValue3, f13, fFloatValue3);
                double d4 = fA;
                float fCos = (float) (Math.cos(radians) * d4);
                float fSin = (float) (Math.sin(radians) * d4);
                path.moveTo(fCos, fSin);
                f4 = fCos;
                d = radians + ((f11 * f13) / f2);
                f3 = f;
                f5 = fSin;
                f6 = fA;
            } else {
                double d5 = fFloatValue2;
                float fCos2 = (float) (Math.cos(radians) * d5);
                float fSin2 = (float) (d5 * Math.sin(radians));
                path.moveTo(fCos2, fSin2);
                f3 = f;
                d = radians + f3;
                f4 = fCos2;
                f5 = fSin2;
                f6 = 0.0f;
            }
            double dCeil = Math.ceil(d3);
            double d6 = 2.0d;
            double d7 = dCeil * 2.0d;
            float f14 = f5;
            float f15 = f4;
            int i4 = 0;
            boolean z2 = false;
            double d8 = d;
            while (true) {
                double d9 = i4;
                if (d9 >= d7) {
                    break;
                }
                float f16 = z2 ? fFloatValue2 : fFloatValue3;
                float f17 = (f6 == 0.0f || d9 != d7 - d6) ? f3 : (f11 * f13) / f2;
                if (f6 == 0.0f || d9 != d7 - 1.0d) {
                    f7 = f16;
                    i = i4;
                    f8 = f3;
                } else {
                    f7 = f6;
                    f8 = f3;
                    i = i4;
                }
                double d10 = f7;
                float fCos3 = (float) (Math.cos(d8) * d10);
                float fSin3 = (float) (Math.sin(d8) * d10);
                if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                    path.lineTo(fCos3, fSin3);
                    f9 = f13;
                    f10 = fCos3;
                } else {
                    f9 = f13;
                    Path path2 = path;
                    float f18 = f14;
                    double dAtan2 = (float) (Math.atan2(f14, f15) - 1.5707963267948966d);
                    float fCos4 = (float) Math.cos(dAtan2);
                    float fSin4 = (float) Math.sin(dAtan2);
                    double dAtan22 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                    float fCos5 = (float) Math.cos(dAtan22);
                    float fSin5 = (float) Math.sin(dAtan22);
                    float f19 = z2 ? fFloatValue4 : fFloatValue5;
                    float f20 = z2 ? fFloatValue5 : fFloatValue4;
                    float f21 = (z2 ? fFloatValue3 : fFloatValue2) * f19 * 0.47829f;
                    float f22 = fCos4 * f21;
                    float f23 = f21 * fSin4;
                    float f24 = (z2 ? fFloatValue2 : fFloatValue3) * f20 * 0.47829f;
                    float f25 = fCos5 * f24;
                    float f26 = f24 * fSin5;
                    if (f13 != 0.0f) {
                        if (i == 0) {
                            f22 *= f9;
                            f23 *= f9;
                        } else if (d9 == d7 - 1.0d) {
                            f25 *= f9;
                            f26 *= f9;
                        }
                    }
                    f10 = fCos3;
                    path = path2;
                    path.cubicTo(f15 - f22, f18 - f23, f25 + fCos3, fSin3 + f26, f10, fSin3);
                }
                d8 += f17;
                z2 = !z2;
                i4 = i + 1;
                f15 = f10;
                f14 = fSin3;
                f13 = f9;
                f3 = f8;
                d6 = 2.0d;
            }
            PointF pointF = (PointF) baseKeyframeAnimation.getValue();
            path.offset(pointF.x, pointF.y);
            path.close();
        } else if (i3 == 2) {
            int iFloor = (int) Math.floor(((Float) baseKeyframeAnimation5.getValue()).floatValue());
            double radians2 = Math.toRadians((baseKeyframeAnimation4 != null ? ((Float) baseKeyframeAnimation4.getValue()).floatValue() : 0.0d) - 90.0d);
            double d11 = iFloor;
            float fFloatValue6 = ((Float) baseKeyframeAnimation3.getValue()).floatValue() / 100.0f;
            float fFloatValue7 = ((Float) baseKeyframeAnimation2.getValue()).floatValue();
            double d12 = fFloatValue7;
            float fCos6 = (float) (Math.cos(radians2) * d12);
            float fSin6 = (float) (Math.sin(radians2) * d12);
            path.moveTo(fCos6, fSin6);
            double d13 = (float) (6.283185307179586d / d11);
            double dCeil2 = Math.ceil(d11);
            double d14 = radians2 + d13;
            int i5 = 0;
            while (i5 < dCeil2) {
                float fCos7 = (float) (Math.cos(d14) * d12);
                BaseKeyframeAnimation baseKeyframeAnimation7 = baseKeyframeAnimation;
                float fSin7 = (float) (Math.sin(d14) * d12);
                if (fFloatValue6 != 0.0f) {
                    i2 = i5;
                    Path path3 = path;
                    double dAtan23 = (float) (Math.atan2(fSin6, fCos6) - 1.5707963267948966d);
                    float fCos8 = (float) Math.cos(dAtan23);
                    float fSin8 = (float) Math.sin(dAtan23);
                    d2 = d12;
                    double dAtan24 = (float) (Math.atan2(fSin7, fCos7) - 1.5707963267948966d);
                    float f27 = fFloatValue7 * fFloatValue6 * 0.25f;
                    float f28 = fCos8 * f27;
                    float f29 = f27 * fSin8;
                    float fCos9 = ((float) Math.cos(dAtan24)) * f27;
                    float fSin9 = fSin7 + (f27 * ((float) Math.sin(dAtan24)));
                    path = path3;
                    path.cubicTo(fCos6 - f28, fSin6 - f29, fCos9 + fCos7, fSin9, fCos7, fSin7);
                } else {
                    i2 = i5;
                    d2 = d12;
                    path.lineTo(fCos7, fSin7);
                }
                d14 += d13;
                i5 = i2 + 1;
                fCos6 = fCos7;
                fSin6 = fSin7;
                d12 = d2;
                baseKeyframeAnimation = baseKeyframeAnimation7;
            }
            PointF pointF2 = (PointF) baseKeyframeAnimation.getValue();
            path.offset(pointF2.x, pointF2.y);
            path.close();
        }
        path.close();
        this.m.apply(path);
        this.n = true;
        return path;
    }

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2535a;

        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f2535a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2535a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f2533b;
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.resolveKeyPath(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        BaseKeyframeAnimation baseKeyframeAnimation;
        BaseKeyframeAnimation baseKeyframeAnimation2;
        if (t == LottieProperty.POLYSTAR_POINTS) {
            this.f.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_ROTATION) {
            this.h.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POSITION) {
            this.f2534g.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_INNER_RADIUS && (baseKeyframeAnimation2 = this.i) != null) {
            baseKeyframeAnimation2.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_OUTER_RADIUS) {
            this.j.setValueCallback(lottieValueCallback);
            return;
        }
        if (t == LottieProperty.POLYSTAR_INNER_ROUNDEDNESS && (baseKeyframeAnimation = this.k) != null) {
            baseKeyframeAnimation.setValueCallback(lottieValueCallback);
        } else if (t == LottieProperty.POLYSTAR_OUTER_ROUNDEDNESS) {
            this.l.setValueCallback(lottieValueCallback);
        }
    }
}
