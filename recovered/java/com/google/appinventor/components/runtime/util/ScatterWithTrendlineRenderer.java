package com.google.appinventor.components.runtime.util;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.charts.ScatterChart;
import com.github.mikephil.charting.interfaces.datasets.IScatterDataSet;
import com.github.mikephil.charting.renderer.ScatterChartRenderer;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* loaded from: classes.dex */
public class ScatterWithTrendlineRenderer extends ScatterChartRenderer {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "ScatterWithTrendlineRenderer";

    public ScatterWithTrendlineRenderer(ScatterChart scatterChart, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(scatterChart, chartAnimator, viewPortHandler);
    }

    public void drawData(Canvas canvas) {
        for (IScatterDataSet iScatterDataSet : this.mChart.getScatterData().getDataSets()) {
            if (iScatterDataSet.isVisible() && (iScatterDataSet instanceof HasTrendline)) {
                drawTrendline(canvas, iScatterDataSet);
            }
        }
        super.drawData(canvas);
    }

    public void drawTrendline(Canvas canvas, IScatterDataSet iScatterDataSet) {
        if (iScatterDataSet instanceof HasTrendline) {
            Transformer transformer = this.mChart.getTransformer(iScatterDataSet.getAxisDependency());
            HasTrendline hasTrendline = (HasTrendline) iScatterDataSet;
            if (hasTrendline.isVisible()) {
                Paint paint = new Paint();
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(hasTrendline.getLineWidth());
                paint.setColor(hasTrendline.getColor());
                paint.setAlpha((hasTrendline.getColor() >> 24) & 255);
                paint.setPathEffect(hasTrendline.getDashPathEffect());
                float[] points = hasTrendline.getPoints(this.mChart.getXChartMin(), this.mChart.getXChartMax(), this.mChart.getWidth());
                transformer.pointValuesToPixel(points);
                canvas.drawLines(points, 0, points.length, paint);
            }
        }
    }
}
