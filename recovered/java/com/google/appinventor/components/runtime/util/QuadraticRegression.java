package com.google.appinventor.components.runtime.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class QuadraticRegression extends OlsTrendLine {
    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public boolean logY() {
        return false;
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public int size() {
        return 3;
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public double[] xVector(double d) {
        return new double[]{1.0d, d, d * d};
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine, com.google.appinventor.components.common.TrendlineCalculator
    public Map<String, Object> compute(List<Double> list, List<Double> list2) {
        Map<String, Object> mapCompute = super.compute(list, list2);
        mapCompute.put("Yintercept", mapCompute.remove("intercept"));
        double dDoubleValue = ((Double) mapCompute.get("x^2")).doubleValue();
        double dDoubleValue2 = ((Double) mapCompute.get("slope")).doubleValue();
        double dDoubleValue3 = (dDoubleValue2 * dDoubleValue2) - ((4.0d * dDoubleValue) * ((Double) mapCompute.get("Yintercept")).doubleValue());
        if (dDoubleValue3 <= 0.0d) {
            if (dDoubleValue3 == 0.0d) {
                mapCompute.put("Xintercepts", Double.valueOf((-dDoubleValue2) / (dDoubleValue * 2.0d)));
                return mapCompute;
            }
            mapCompute.put("Xintercepts", Double.valueOf(Double.NaN));
            return mapCompute;
        }
        ArrayList arrayList = new ArrayList();
        double dSqrt = Math.sqrt(dDoubleValue3);
        double d = -dDoubleValue2;
        double d2 = dDoubleValue * 2.0d;
        arrayList.add(Double.valueOf((d + dSqrt) / d2));
        arrayList.add(Double.valueOf((d - dSqrt) / d2));
        mapCompute.put("Xintercepts", arrayList);
        return mapCompute;
    }

    @Override // com.google.appinventor.components.common.TrendlineCalculator
    public float[] computePoints(Map<String, Object> map, float f, float f2, int i, int i2) {
        if (!map.containsKey("x^2")) {
            return new float[0];
        }
        double dDoubleValue = ((Double) map.get("x^2")).doubleValue();
        double dDoubleValue2 = ((Double) map.get("slope")).doubleValue();
        double dDoubleValue3 = ((Double) map.get("Yintercept")).doubleValue();
        float[] fArr = new float[i2 * 4];
        float f3 = Float.NEGATIVE_INFINITY;
        float f4 = Float.NEGATIVE_INFINITY;
        boolean z = true;
        int i3 = 0;
        while (i3 < i2) {
            if (z) {
                f3 = (((f2 - f) * i3) / i2) + f;
                double d = f3;
                f4 = (float) ((((dDoubleValue * d) + dDoubleValue2) * d) + dDoubleValue3);
                z = false;
            }
            int i4 = i3 * 4;
            fArr[i4] = f3;
            fArr[i4 + 1] = f4;
            i3++;
            f3 = (((f2 - f) * i3) / i2) + f;
            double d2 = f3;
            f4 = (float) ((((dDoubleValue * d2) + dDoubleValue2) * d2) + dDoubleValue3);
            fArr[i4 + 2] = f3;
            fArr[i4 + 3] = f4;
        }
        return fArr;
    }
}
