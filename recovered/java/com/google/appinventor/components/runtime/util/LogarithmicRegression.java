package com.google.appinventor.components.runtime.util;

import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LogarithmicRegression extends OlsTrendLine {
    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public boolean logY() {
        return false;
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public int size() {
        return 2;
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine
    public double[] xVector(double d) {
        return new double[]{1.0d, Math.log(d)};
    }

    @Override // com.google.appinventor.components.runtime.util.OlsTrendLine, com.google.appinventor.components.common.TrendlineCalculator
    public Map<String, Object> compute(List<Double> list, List<Double> list2) {
        Map<String, Object> mapCompute = super.compute(list, list2);
        mapCompute.remove("x^2");
        Double d = (Double) mapCompute.remove("slope");
        d.doubleValue();
        Double d2 = (Double) mapCompute.remove("intercept");
        d2.doubleValue();
        mapCompute.put("a", d2);
        mapCompute.put("b", d);
        return mapCompute;
    }

    @Override // com.google.appinventor.components.common.TrendlineCalculator
    public float[] computePoints(Map<String, Object> map, float f, float f2, int i, int i2) {
        if (!map.containsKey("b")) {
            return new float[0];
        }
        if (f2 <= 0.0f) {
            return new float[0];
        }
        float fMin = f <= 0.0f ? Math.min(1.0E-4f, f2 / (i2 + 1)) : f;
        double dDoubleValue = ((Double) map.get("b")).doubleValue();
        double dDoubleValue2 = ((Double) map.get("a")).doubleValue();
        float[] fArr = new float[i2 * 4];
        float f3 = Float.NEGATIVE_INFINITY;
        float fLog = Float.NEGATIVE_INFINITY;
        boolean z = true;
        int i3 = 0;
        while (i3 < i2) {
            if (z) {
                f3 = (((f2 - fMin) * i3) / i2) + fMin;
                fLog = (float) ((Math.log(f3) * dDoubleValue) + dDoubleValue2);
                z = false;
            }
            int i4 = i3 * 4;
            fArr[i4] = f3;
            fArr[i4 + 1] = fLog;
            i3++;
            f3 = (((f2 - fMin) * i3) / i2) + fMin;
            fLog = (float) ((Math.log(f3) * dDoubleValue) + dDoubleValue2);
            fArr[i4 + 2] = f3;
            fArr[i4 + 3] = fLog;
        }
        return fArr;
    }
}
