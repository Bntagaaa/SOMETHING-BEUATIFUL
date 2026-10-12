package com.google.appinventor.components.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LinearRegression implements TrendlineCalculator {
    @Override // com.google.appinventor.components.common.TrendlineCalculator
    public Map<String, Object> compute(List<Double> list, List<Double> list2) {
        if (list.isEmpty() || list2.isEmpty()) {
            throw new IllegalStateException("List must have at least one element");
        }
        if (list.size() != list2.size()) {
            throw new IllegalStateException("Must have equal X and Y data points");
        }
        int size = list.size();
        double dDoubleValue = 0.0d;
        double dDoubleValue2 = 0.0d;
        double dDoubleValue3 = 0.0d;
        double dDoubleValue4 = 0.0d;
        double dDoubleValue5 = 0.0d;
        for (int i = 0; i < size; i++) {
            dDoubleValue = list.get(i).doubleValue() + dDoubleValue;
            dDoubleValue3 = (list2.get(i).doubleValue() * list.get(i).doubleValue()) + dDoubleValue3;
            dDoubleValue2 = list2.get(i).doubleValue() + dDoubleValue2;
            dDoubleValue4 = (list.get(i).doubleValue() * list.get(i).doubleValue()) + dDoubleValue4;
            dDoubleValue5 = (list2.get(i).doubleValue() * list2.get(i).doubleValue()) + dDoubleValue5;
        }
        double d = size;
        double d2 = dDoubleValue / d;
        double d3 = dDoubleValue2 / d;
        ArrayList arrayList = new ArrayList();
        double dDoubleValue6 = 0.0d;
        double dDoubleValue7 = 0.0d;
        for (int i2 = 0; i2 < size; i2++) {
            dDoubleValue7 = ((list.get(i2).doubleValue() - d2) * (list.get(i2).doubleValue() - d2)) + dDoubleValue7;
            dDoubleValue6 = ((list2.get(i2).doubleValue() - d3) * (list.get(i2).doubleValue() - d2)) + dDoubleValue6;
        }
        double d4 = dDoubleValue6 / dDoubleValue7;
        double d5 = d3 - (d2 * d4);
        Iterator<Double> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Double.valueOf((it.next().doubleValue() * d4) + d5));
        }
        double dSqrt = ((dDoubleValue3 * d) - (dDoubleValue * dDoubleValue2)) / Math.sqrt(((d * dDoubleValue5) - (dDoubleValue2 * dDoubleValue2)) * ((dDoubleValue4 * d) - (dDoubleValue * dDoubleValue)));
        HashMap map = new HashMap();
        map.put("slope", Double.valueOf(d4));
        map.put("Yintercept", Double.valueOf(d5));
        map.put("correlation coefficient", Double.valueOf(dSqrt));
        map.put("predictions", arrayList);
        map.put("Xintercepts", Double.valueOf(d4 == 0.0d ? Double.NaN : (-d5) / d4));
        map.put("r^2", Double.valueOf(dSqrt * dSqrt));
        return map;
    }

    @Override // com.google.appinventor.components.common.TrendlineCalculator
    public float[] computePoints(Map<String, Object> map, float f, float f2, int i, int i2) {
        if (!map.containsKey("slope")) {
            return new float[0];
        }
        double dDoubleValue = ((Double) map.get("slope")).doubleValue();
        double dDoubleValue2 = ((Double) map.get("Yintercept")).doubleValue();
        return new float[]{f, (float) ((f * dDoubleValue) + dDoubleValue2), f2, (float) ((dDoubleValue * f2) + dDoubleValue2)};
    }
}
