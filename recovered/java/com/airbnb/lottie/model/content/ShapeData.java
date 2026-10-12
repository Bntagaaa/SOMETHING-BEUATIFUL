package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeData {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2623a;

    /* renamed from: b, reason: collision with root package name */
    public PointF f2624b;
    public boolean c;

    public ShapeData(PointF pointF, boolean z, List<CubicCurveData> list) {
        this.f2624b = pointF;
        this.c = z;
        this.f2623a = new ArrayList(list);
    }

    public ShapeData() {
        this.f2623a = new ArrayList();
    }

    public PointF getInitialPoint() {
        return this.f2624b;
    }

    public boolean isClosed() {
        return this.c;
    }

    public List<CubicCurveData> getCurves() {
        return this.f2623a;
    }

    public void interpolateBetween(ShapeData shapeData, ShapeData shapeData2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.f2624b == null) {
            this.f2624b = new PointF();
        }
        this.c = shapeData.isClosed() || shapeData2.isClosed();
        if (shapeData.getCurves().size() != shapeData2.getCurves().size()) {
            Logger.warning("Curves must have the same number of control points. Shape 1: " + shapeData.getCurves().size() + "\tShape 2: " + shapeData2.getCurves().size());
        }
        int iMin = Math.min(shapeData.getCurves().size(), shapeData2.getCurves().size());
        ArrayList arrayList = this.f2623a;
        if (arrayList.size() < iMin) {
            for (int size = arrayList.size(); size < iMin; size++) {
                arrayList.add(new CubicCurveData());
            }
        } else if (arrayList.size() > iMin) {
            for (int size2 = arrayList.size() - 1; size2 >= iMin; size2--) {
                arrayList.remove(arrayList.size() - 1);
            }
        }
        PointF initialPoint = shapeData.getInitialPoint();
        PointF initialPoint2 = shapeData2.getInitialPoint();
        float fLerp = MiscUtils.lerp(initialPoint.x, initialPoint2.x, f);
        float fLerp2 = MiscUtils.lerp(initialPoint.y, initialPoint2.y, f);
        if (this.f2624b == null) {
            this.f2624b = new PointF();
        }
        this.f2624b.set(fLerp, fLerp2);
        for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
            CubicCurveData cubicCurveData = shapeData.getCurves().get(size3);
            CubicCurveData cubicCurveData2 = shapeData2.getCurves().get(size3);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            PointF controlPoint12 = cubicCurveData2.getControlPoint1();
            PointF controlPoint22 = cubicCurveData2.getControlPoint2();
            PointF vertex2 = cubicCurveData2.getVertex();
            ((CubicCurveData) arrayList.get(size3)).setControlPoint1(MiscUtils.lerp(controlPoint1.x, controlPoint12.x, f), MiscUtils.lerp(controlPoint1.y, controlPoint12.y, f));
            ((CubicCurveData) arrayList.get(size3)).setControlPoint2(MiscUtils.lerp(controlPoint2.x, controlPoint22.x, f), MiscUtils.lerp(controlPoint2.y, controlPoint22.y, f));
            ((CubicCurveData) arrayList.get(size3)).setVertex(MiscUtils.lerp(vertex.x, vertex2.x, f), MiscUtils.lerp(vertex.y, vertex2.y, f));
        }
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f2623a.size() + "closed=" + this.c + '}';
    }
}
