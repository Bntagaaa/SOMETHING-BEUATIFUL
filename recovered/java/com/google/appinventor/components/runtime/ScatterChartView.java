package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.ScatterChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.ScatterData;
import com.github.mikephil.charting.interfaces.datasets.IScatterDataSet;
import com.google.appinventor.components.runtime.util.ScatterWithTrendlineRenderer;

/* loaded from: classes.dex */
public class ScatterChartView extends PointChartView<Entry, IScatterDataSet, ScatterData, ScatterChart, ScatterChartView> {
    public ScatterChartView(Chart chart) {
        super(chart);
        ScatterChart scatterChart = new ScatterChart(this.form);
        this.chart = scatterChart;
        ScatterChart scatterChart2 = this.chart;
        scatterChart.setRenderer(new ScatterWithTrendlineRenderer(scatterChart2, scatterChart2.getAnimator(), this.chart.getViewPortHandler()));
        ScatterData scatterData = new ScatterData();
        this.data = scatterData;
        this.chart.setData(scatterData);
        initializeDefaultSettings();
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public ChartDataModel<Entry, IScatterDataSet, ScatterData, ScatterChart, ScatterChartView> createChartModel() {
        return new ScatterChartDataModel(this.data, this);
    }
}
