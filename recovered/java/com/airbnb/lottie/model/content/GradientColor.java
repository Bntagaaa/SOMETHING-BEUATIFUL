package com.airbnb.lottie.model.content;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes.dex */
public class GradientColor {

    /* renamed from: a, reason: collision with root package name */
    public final float[] f2599a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f2600b;

    public GradientColor(float[] fArr, int[] iArr) {
        this.f2599a = fArr;
        this.f2600b = iArr;
    }

    public float[] getPositions() {
        return this.f2599a;
    }

    public int[] getColors() {
        return this.f2600b;
    }

    public int getSize() {
        return this.f2600b.length;
    }

    public void lerp(GradientColor gradientColor, GradientColor gradientColor2, float f) {
        int length = gradientColor.f2600b.length;
        int length2 = gradientColor2.f2600b.length;
        int[] iArr = gradientColor.f2600b;
        int[] iArr2 = gradientColor2.f2600b;
        if (length != length2) {
            throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + iArr.length + " vs " + iArr2.length + ")");
        }
        for (int i = 0; i < iArr.length; i++) {
            this.f2599a[i] = MiscUtils.lerp(gradientColor.f2599a[i], gradientColor2.f2599a[i], f);
            this.f2600b[i] = GammaEvaluator.evaluate(f, iArr[i], iArr2[i]);
        }
    }
}
