package com.google.appinventor.components.runtime.util;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ExponentialRegression extends OlsTrendLine {
    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public boolean logY() {
        return true;
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public int size() {
        return 2;
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public double[] xVector(double d) {
        return new double[]{1.0d, d};
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine, com.google.appinventor.components.common.TrendlineCalculator
    public Map<String, Object> compute(List<Double> list, List<Double> list2) {
        Map<String, Object> mapCompute = super.compute(list, list2);
        mapCompute.remove("x^2");
        double dDoubleValue = ((Double) mapCompute.remove("slope")).doubleValue();
        mapCompute.put("a", Double.valueOf(Math.exp(((Double) mapCompute.remove("intercept")).doubleValue())));
        mapCompute.put("b", Double.valueOf(Math.exp(dDoubleValue)));
        return mapCompute;
    }

    @Override // com.google.appinventor.components.common.TrendlineCalculator
    public float[] computePoints(Map<String, Object> map, float f, float f2, int i, int i2) {
        if (!map.containsKey("a")) {
            return new float[0];
        }
        double dDoubleValue = ((Double) map.get("a")).doubleValue();
        double dDoubleValue2 = ((Double) map.get("b")).doubleValue();
        float[] fArr = new float[i2 * 4];
        float f3 = Float.NEGATIVE_INFINITY;
        float fPow = Float.NEGATIVE_INFINITY;
        boolean z = true;
        int i3 = 0;
        while (i3 < i2) {
            if (z) {
                f3 = (((f2 - f) * i3) / i2) + f;
                fPow = (float) (Math.pow(dDoubleValue2, f3) * dDoubleValue);
                z = false;
            }
            int i4 = i3 * 4;
            fArr[i4] = f3;
            fArr[i4 + 1] = fPow;
            i3++;
            f3 = (((f2 - f) * i3) / i2) + f;
            fPow = (float) (Math.pow(dDoubleValue2, f3) * dDoubleValue);
            fArr[i4 + 2] = f3;
            fArr[i4 + 3] = fPow;
        }
        return fArr;
    }
}
