package com.airbnb.lottie.model;

import android.graphics.PointF;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class CubicCurveData {

    /* renamed from: a, reason: collision with root package name */
    public final PointF f2576a;

    /* renamed from: b, reason: collision with root package name */
    public final PointF f2577b;
    public final PointF c;

    public CubicCurveData() {
        this.f2576a = new PointF();
        this.f2577b = new PointF();
        this.c = new PointF();
    }

    public CubicCurveData(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f2576a = pointF;
        this.f2577b = pointF2;
        this.c = pointF3;
    }

    public void setControlPoint1(float f, float f2) {
        this.f2576a.set(f, f2);
    }

    public PointF getControlPoint1() {
        return this.f2576a;
    }

    public void setControlPoint2(float f, float f2) {
        this.f2577b.set(f, f2);
    }

    public PointF getControlPoint2() {
        return this.f2577b;
    }

    public void setVertex(float f, float f2) {
        this.c.set(f, f2);
    }

    public PointF getVertex() {
        return this.c;
    }
}
