package com.google.zxing;

import com.google.zxing.common.detector.MathUtils;

/* loaded from: classes.dex */
public class ResultPoint {

    /* renamed from: a, reason: collision with root package name */
    public final float f5087a;

    /* renamed from: b, reason: collision with root package name */
    public final float f5088b;

    public ResultPoint(float f, float f2) {
        this.f5087a = f;
        this.f5088b = f2;
    }

    public final float getX() {
        return this.f5087a;
    }

    public final float getY() {
        return this.f5088b;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ResultPoint) {
            ResultPoint resultPoint = (ResultPoint) obj;
            if (this.f5087a == resultPoint.f5087a && this.f5088b == resultPoint.f5088b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.f5088b) + (Float.floatToIntBits(this.f5087a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(25);
        sb.append('(');
        sb.append(this.f5087a);
        sb.append(',');
        sb.append(this.f5088b);
        sb.append(')');
        return sb.toString();
    }

    public static void orderBestPatterns(ResultPoint[] resultPointArr) {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        ResultPoint resultPoint3;
        float fDistance = distance(resultPointArr[0], resultPointArr[1]);
        float fDistance2 = distance(resultPointArr[1], resultPointArr[2]);
        float fDistance3 = distance(resultPointArr[0], resultPointArr[2]);
        if (fDistance2 >= fDistance && fDistance2 >= fDistance3) {
            resultPoint = resultPointArr[0];
            resultPoint2 = resultPointArr[1];
            resultPoint3 = resultPointArr[2];
        } else if (fDistance3 >= fDistance2 && fDistance3 >= fDistance) {
            resultPoint = resultPointArr[1];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[2];
        } else {
            resultPoint = resultPointArr[2];
            resultPoint2 = resultPointArr[0];
            resultPoint3 = resultPointArr[1];
        }
        float f = resultPoint.f5087a;
        float f2 = resultPoint3.f5087a - f;
        float f3 = resultPoint2.f5088b;
        float f4 = resultPoint.f5088b;
        if (((f3 - f4) * f2) - ((resultPoint2.f5087a - f) * (resultPoint3.f5088b - f4)) < 0.0f) {
            ResultPoint resultPoint4 = resultPoint3;
            resultPoint3 = resultPoint2;
            resultPoint2 = resultPoint4;
        }
        resultPointArr[0] = resultPoint2;
        resultPointArr[1] = resultPoint;
        resultPointArr[2] = resultPoint3;
    }

    public static float distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.distance(resultPoint.f5087a, resultPoint.f5088b, resultPoint2.f5087a, resultPoint2.f5088b);
    }
}
