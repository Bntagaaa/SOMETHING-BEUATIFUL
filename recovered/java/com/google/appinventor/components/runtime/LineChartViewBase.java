package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.interfaces.dataprovider.LineDataProvider;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.google.appinventor.components.runtime.LineChartViewBase;
import com.google.appinventor.components.runtime.util.LineWithTrendlineRenderer;

/* loaded from: classes.dex */
public abstract class LineChartViewBase<V extends LineChartViewBase<V>> extends PointChartView<Entry, ILineDataSet, LineData, LineChart, V> {
    public LineChartViewBase(Chart chart) {
        super(chart);
        LineChart lineChart = new LineChart(this.form);
        this.chart = lineChart;
        LineChart lineChart2 = this.chart;
        lineChart.setRenderer(new LineWithTrendlineRenderer((LineDataProvider) lineChart2, lineChart2.getAnimator(), this.chart.getViewPortHandler()));
        LineData lineData = new LineData();
        this.data = lineData;
        this.chart.setData(lineData);
        initializeDefaultSettings();
    }
}
