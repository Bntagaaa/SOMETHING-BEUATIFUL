package androidx.transition;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ArcMotion extends PathMotion {

    /* renamed from: g, reason: collision with root package name */
    public static final float f2213g = (float) Math.tan(Math.toRadians(35.0d));

    /* renamed from: a, reason: collision with root package name */
    public float f2214a;

    /* renamed from: b, reason: collision with root package name */
    public float f2215b;
    public float c;
    public float d;
    public float e;
    public float f;

    public ArcMotion() {
        this.f2214a = 0.0f;
        this.f2215b = 0.0f;
        this.c = 70.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = f2213g;
    }

    @SuppressLint({"RestrictedApi"})
    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2214a = 0.0f;
        this.f2215b = 0.0f;
        this.c = 70.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = f2213g;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, q.j);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(typedArrayObtainStyledAttributes, xmlPullParser, "maximumAngle", 2, 70.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setMinimumHorizontalAngle(float f) {
        this.f2214a = f;
        this.d = a(f);
    }

    public float getMinimumHorizontalAngle() {
        return this.f2214a;
    }

    public void setMinimumVerticalAngle(float f) {
        this.f2215b = f;
        this.e = a(f);
    }

    public float getMinimumVerticalAngle() {
        return this.f2215b;
    }

    public void setMaximumAngle(float f) {
        this.c = f;
        this.f = a(f);
    }

    public float getMaximumAngle() {
        return this.c;
    }

    public static float a(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    @Override // androidx.transition.PathMotion
    public Path getPath(float f, float f2, float f3, float f4) {
        float fA;
        float fA2;
        float f5;
        Path path = new Path();
        path.moveTo(f, f2);
        float f6 = f3 - f;
        float f7 = f4 - f2;
        float f8 = (f7 * f7) + (f6 * f6);
        float f9 = (f + f3) / 2.0f;
        float f10 = (f2 + f4) / 2.0f;
        float f11 = 0.25f * f8;
        boolean z = f2 > f4;
        if (Math.abs(f6) < Math.abs(f7)) {
            float fAbs = Math.abs(f8 / (f7 * 2.0f));
            if (z) {
                fA2 = fAbs + f4;
                fA = f3;
            } else {
                fA2 = fAbs + f2;
                fA = f;
            }
            f5 = this.e;
        } else {
            float f12 = f8 / (f6 * 2.0f);
            if (z) {
                fA2 = f2;
                fA = f12 + f;
            } else {
                fA = f3 - f12;
                fA2 = f4;
            }
            f5 = this.d;
        }
        float f13 = f11 * f5 * f5;
        float f14 = f9 - fA;
        float f15 = f10 - fA2;
        float f16 = (f15 * f15) + (f14 * f14);
        float f17 = this.f;
        float f18 = f11 * f17 * f17;
        if (f16 >= f13) {
            f13 = f16 > f18 ? f18 : 0.0f;
        }
        if (f13 != 0.0f) {
            float fSqrt = (float) Math.sqrt(f13 / f16);
            fA = _COROUTINE.a.a(fA, f9, fSqrt, f9);
            fA2 = _COROUTINE.a.a(fA2, f10, fSqrt, f10);
        }
        path.cubicTo((f + fA) / 2.0f, (f2 + fA2) / 2.0f, (fA + f3) / 2.0f, (fA2 + f4) / 2.0f, f3, f4);
        return path;
    }
}
