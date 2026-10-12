package com.airbnb.lottie.parser;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.collection.SparseArrayCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class h {

    /* renamed from: b, reason: collision with root package name */
    public static SparseArrayCompat f2685b;

    /* renamed from: a, reason: collision with root package name */
    public static final LinearInterpolator f2684a = new LinearInterpolator();
    public static final JsonReader.Options c = JsonReader.Options.of("t", "s", "e", "o", "i", "h", "to", "ti");
    public static final JsonReader.Options d = JsonReader.Options.of("x", "y");

    public static void c(int i, WeakReference weakReference) {
        synchronized (h.class) {
            f2685b.put(i, weakReference);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:97:0x021b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x022c  */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.view.animation.Interpolator] */
    /* JADX WARN: Type inference failed for: r3v8, types: [android.view.animation.Interpolator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.airbnb.lottie.value.Keyframe b(com.airbnb.lottie.parser.moshi.JsonReader r24, com.airbnb.lottie.LottieComposition r25, float r26, com.airbnb.lottie.parser.u r27, boolean r28, boolean r29) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.parser.h.b(com.airbnb.lottie.parser.moshi.JsonReader, com.airbnb.lottie.LottieComposition, float, com.airbnb.lottie.parser.u, boolean, boolean):com.airbnb.lottie.value.Keyframe");
    }

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference weakReference;
        Interpolator linearInterpolator;
        pointF.x = MiscUtils.clamp(pointF.x, -1.0f, 1.0f);
        pointF.y = MiscUtils.clamp(pointF.y, -100.0f, 100.0f);
        pointF2.x = MiscUtils.clamp(pointF2.x, -1.0f, 1.0f);
        float fClamp = MiscUtils.clamp(pointF2.y, -100.0f, 100.0f);
        pointF2.y = fClamp;
        int iHashFor = Utils.hashFor(pointF.x, pointF.y, pointF2.x, fClamp);
        synchronized (h.class) {
            if (f2685b == null) {
                f2685b = new SparseArrayCompat();
            }
            weakReference = (WeakReference) f2685b.get(iHashFor);
        }
        Interpolator interpolator = weakReference != null ? (Interpolator) weakReference.get() : null;
        if (weakReference != null && interpolator != null) {
            return interpolator;
        }
        try {
            linearInterpolator = PathInterpolatorCompat.create(pointF.x, pointF.y, pointF2.x, pointF2.y);
        } catch (IllegalArgumentException e) {
            if ("The Path cannot loop back on itself.".equals(e.getMessage())) {
                linearInterpolator = PathInterpolatorCompat.create(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
            } else {
                linearInterpolator = new LinearInterpolator();
            }
        }
        try {
            c(iHashFor, new WeakReference(linearInterpolator));
        } catch (ArrayIndexOutOfBoundsException unused) {
        }
        return linearInterpolator;
    }
}
