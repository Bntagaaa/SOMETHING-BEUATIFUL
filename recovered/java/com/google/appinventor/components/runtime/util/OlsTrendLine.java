package com.google.appinventor.components.runtime.util;

import com.google.appinventor.components.common.TrendlineCalculator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.regression.OLSMultipleLinearRegression;

/* loaded from: classes.dex */
public abstract class OlsTrendLine implements TrendlineCalculator {
    private static final boolean DEBUG = false;
    private static final double SIGNIFICANCE = 1.0E14d;

    public abstract boolean logY();

    public abstract int size();

    public abstract double[] xVector(double d);

    @Override // com.google.appinventor.components.common.TrendlineCalculator
    public Map<String, Object> compute(List<Double> list, List<Double> list2) {
        if (list.isEmpty() || list2.isEmpty()) {
            throw new IllegalStateException("List must have at least one element");
        }
        if (list.size() != list2.size()) {
            throw new IllegalStateException("Must have equal X and Y data points");
        }
        double[][] dArr = new double[list.size()][];
        for (int i = 0; i < list.size(); i++) {
            dArr[i] = xVector(list.get(i).doubleValue());
        }
        double[] dArr2 = new double[list2.size()];
        if (logY()) {
            Iterator<Double> it = list2.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                dArr2[i2] = Math.log(it.next().doubleValue());
                i2++;
            }
        } else {
            Iterator<Double> it2 = list2.iterator();
            int i3 = 0;
            while (it2.hasNext()) {
                dArr2[i3] = it2.next().doubleValue();
                i3++;
            }
        }
        OLSMultipleLinearRegression oLSMultipleLinearRegression = new OLSMultipleLinearRegression();
        oLSMultipleLinearRegression.setNoIntercept(true);
        oLSMultipleLinearRegression.newSampleData(dArr2, dArr);
        RealMatrix realMatrixCreateColumnRealMatrix = MatrixUtils.createColumnRealMatrix(oLSMultipleLinearRegression.estimateRegressionParameters());
        HashMap map = new HashMap();
        map.put("intercept", Double.valueOf(round(realMatrixCreateColumnRealMatrix.getEntry(0, 0))));
        map.put("slope", Double.valueOf(round(realMatrixCreateColumnRealMatrix.getEntry(1, 0))));
        if (size() > 2) {
            map.put("x^2", Double.valueOf(round(realMatrixCreateColumnRealMatrix.getEntry(2, 0))));
        }
        map.put("r^2", Double.valueOf(oLSMultipleLinearRegression.calculateRSquared()));
        return map;
    }

    private static double round(double d) {
        return Math.round(d * SIGNIFICANCE) / SIGNIFICANCE;
    }
}
