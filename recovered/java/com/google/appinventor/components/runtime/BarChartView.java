package com.google.appinventor.components.runtime;

import android.view.View;
import android.view.ViewGroup;
import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class BarChartView extends AxisChartView<BarEntry, IBarDataSet, BarData, BarChart, BarChartView> {
    private static final float GROUP_SPACE = 0.08f;
    private static final float START_X_VALUE = 0.0f;
    private float barSpace;
    private float barWidth;

    public BarChartView(Chart chart) {
        super(chart);
        this.barSpace = 0.0f;
        this.barWidth = 0.3f;
        this.chart = new BarChart(this.form);
        BarData barData = new BarData();
        this.data = barData;
        this.chart.setData(barData);
        initializeDefaultSettings();
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public View getView() {
        return this.chart;
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public ChartDataModel<BarEntry, IBarDataSet, BarData, BarChart, BarChartView> createChartModel() {
        BarChartDataModel barChartDataModel = new BarChartDataModel(this.data, this);
        recalculateBarSpaceAndWidth();
        return barChartDataModel;
    }

    private void recalculateBarSpaceAndWidth() {
        int dataSetCount = this.chart.getData().getDataSetCount();
        if (dataSetCount > 1) {
            float f = 0.92f / dataSetCount;
            this.barSpace = 0.1f * f;
            this.barWidth = f * 0.9f;
            this.chart.getData().setBarWidth(this.barWidth);
        }
        if (dataSetCount == 2) {
            this.chart.getXAxis().setCenterAxisLabels(true);
        }
    }

    @Override // com.google.appinventor.components.runtime.AxisChartView, com.google.appinventor.components.runtime.ChartView
    public void initializeDefaultSettings() {
        super.initializeDefaultSettings();
        this.chart.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.chart.getXAxis().setGranularity(1.0f);
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public void refresh(ChartDataModel<BarEntry, IBarDataSet, BarData, BarChart, BarChartView> chartDataModel, List<BarEntry> list) {
        BarDataSet barDataSet = (IBarDataSet) chartDataModel.getDataset();
        if (barDataSet instanceof BarDataSet) {
            barDataSet.setValues(list);
        }
        regroupBars();
        this.chart.getData().notifyDataChanged();
        this.chart.notifyDataSetChanged();
        this.chart.invalidate();
    }

    private void regroupBars() {
        if (this.chart.getData().getDataSetCount() > 1) {
            this.chart.groupBars(0.0f, GROUP_SPACE, this.barSpace);
            Iterator it = this.chart.getData().getDataSets().iterator();
            int iMax = 0;
            while (it.hasNext()) {
                iMax = Math.max(iMax, ((IBarDataSet) it.next()).getEntryCount());
            }
            this.chart.getXAxis().setAxisMinimum(0.0f);
            this.chart.getXAxis().setAxisMaximum((this.chart.getData().getGroupWidth(GROUP_SPACE, this.barSpace) * iMax) + 0.0f);
        }
    }
}
