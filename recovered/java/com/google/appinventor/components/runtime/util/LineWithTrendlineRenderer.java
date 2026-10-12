package com.google.appinventor.components.runtime.util;

import android.graphics.Canvas;
import android.graphics.Paint;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.renderer.LineChartRenderer;
import com.github.mikephil.charting.utils.Transformer;
import com.github.mikephil.charting.utils.ViewPortHandler;

/* loaded from: classes.dex */
public class LineWithTrendlineRenderer extends LineChartRenderer {
    private static final boolean DEBUG = false;
    private static final String LOG_TAG = "LineWithTrendlineRenderer";

    public LineWithTrendlineRenderer(LineDataProvider lineDataProvider, ChartAnimator chartAnimator, ViewPortHandler viewPortHandler) {
        super(lineDataProvider, chartAnimator, viewPortHandler);
    }

    public void drawData(Canvas canvas) {
        for (ILineDataSet iLineDataSet : this.mChart.getLineData().getDataSets()) {
            if (iLineDataSet.isVisible() && (iLineDataSet instanceof HasTrendline)) {
                drawTrendline(canvas, iLineDataSet);
            }
        }
        super.drawData(canvas);
    }

    public void drawTrendline(Canvas canvas, ILineDataSet iLineDataSet) {
        if (iLineDataSet instanceof HasTrendline) {
            Transformer transformer = this.mChart.getTransformer(iLineDataSet.getAxisDependency());
            HasTrendline hasTrendline = (HasTrendline) iLineDataSet;
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
