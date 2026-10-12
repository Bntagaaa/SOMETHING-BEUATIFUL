package com.google.appinventor.components.runtime;

import android.view.View;
import android.widget.RelativeLayout;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.components.LegendEntry;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.github.mikephil.charting.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PieChartView extends ChartView<PieEntry, IPieDataSet, PieData, PieChart, PieChartView> {
    private float bottomOffset;
    private final List<LegendEntry> legendEntries;
    private final List<PieChart> pieCharts;
    private int pieHoleRadius;
    private final RelativeLayout rootView;

    public PieChartView(Chart chart) {
        super(chart);
        this.pieCharts = new ArrayList();
        this.pieHoleRadius = 0;
        this.legendEntries = new ArrayList();
        this.bottomOffset = 0.0f;
        this.rootView = new RelativeLayout(this.form);
        this.chart = new PieChart(this.form);
        initializeDefaultSettings();
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public void initializeDefaultSettings() {
        super.initializeDefaultSettings();
        this.chart.getLegend().setDrawInside(true);
        this.chart.getLegend().setCustom(this.legendEntries);
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public View getView() {
        return this.rootView;
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public ChartDataModel<PieEntry, IPieDataSet, PieData, PieChart, PieChartView> createChartModel() {
        return new PieChartDataModel(new PieData(), this, createPieChartRing());
    }

    private PieChart createPieChartRing() {
        PieChart pieChart;
        if (this.pieCharts.isEmpty()) {
            pieChart = this.chart;
        } else {
            pieChart = new PieChart(this.form);
            pieChart.getDescription().setEnabled(false);
            pieChart.getLegend().setEnabled(false);
        }
        setPieChartProperties(pieChart);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13, -1);
        pieChart.setLayoutParams(layoutParams);
        this.pieCharts.add(pieChart);
        this.rootView.addView(pieChart);
        return pieChart;
    }

    private void setPieChartProperties(PieChart pieChart) {
        pieChart.setDrawEntryLabels(false);
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public void refresh(ChartDataModel<PieEntry, IPieDataSet, PieData, PieChart, PieChartView> chartDataModel, List<PieEntry> list) {
        PieDataSet pieDataSet = (IPieDataSet) chartDataModel.getDataset();
        if (pieDataSet instanceof PieDataSet) {
            pieDataSet.setValues(list);
        }
        this.chart.getLegend().setCustom(this.legendEntries);
        for (PieChart pieChart : this.pieCharts) {
            if (pieChart == this.chart || pieChart.getData().getDataSet().equals(chartDataModel.getDataset())) {
                pieChart.getData().notifyDataChanged();
                pieChart.notifyDataSetChanged();
            }
            updatePieChartRingOffset(pieChart);
            pieChart.invalidate();
        }
    }

    public void resizePieRings() {
        float size = 100.0f - ((100.0f - this.pieHoleRadius) * (((this.pieHoleRadius / 100.0f) + 0.75f) / this.pieCharts.size()));
        int i = 0;
        int width = 0;
        int height = 0;
        while (i < this.pieCharts.size()) {
            PieChart pieChart = this.pieCharts.get(i);
            changePieChartRadius(pieChart, size, i == this.pieCharts.size() - 1);
            if (i != 0) {
                float f = size / 100.0f;
                width = (int) (width * f);
                height = (int) (height * f);
                changePieChartSize(pieChart, width, height);
            } else {
                height = pieChart.getHeight();
                width = pieChart.getWidth();
            }
            pieChart.invalidate();
            i++;
        }
    }

    private void changePieChartRadius(PieChart pieChart, float f, boolean z) {
        if (!z) {
            pieChart.setTransparentCircleRadius(f);
            pieChart.setHoleRadius(f);
            pieChart.setDrawHoleEnabled(true);
            return;
        }
        int i = this.pieHoleRadius;
        if (i == 0) {
            pieChart.setDrawHoleEnabled(false);
            return;
        }
        float f2 = (((f - i) / 100.0f) + 1.0f) * i;
        pieChart.setTransparentCircleRadius(f2);
        pieChart.setHoleRadius(f2);
    }

    private void changePieChartSize(PieChart pieChart, int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) pieChart.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        pieChart.setLayoutParams(layoutParams);
    }

    private void updatePieChartRingOffset(PieChart pieChart) {
        PieChart pieChart2 = this.chart;
        if (pieChart2 == pieChart) {
            float fConvertPixelsToDp = Utils.convertPixelsToDp(pieChart2.getLegend().mNeededHeight) / 2.5f;
            this.bottomOffset = fConvertPixelsToDp;
            this.bottomOffset = Math.min(25.0f, fConvertPixelsToDp);
        }
        pieChart.setExtraBottomOffset(this.bottomOffset);
        pieChart.calculateOffsets();
    }

    public void addLegendEntry(final LegendEntry legendEntry) {
        this.uiHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.PieChartView.1
            @Override // java.lang.Runnable
            public void run() {
                PieChartView.this.legendEntries.add(legendEntry);
            }
        });
    }

    public void removeLegendEntry(final LegendEntry legendEntry) {
        this.uiHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.PieChartView.2
            @Override // java.lang.Runnable
            public void run() {
                PieChartView.this.legendEntries.remove(legendEntry);
            }
        });
    }

    public void removeLegendEntries(List<LegendEntry> list) {
        final ArrayList arrayList = new ArrayList(list);
        this.uiHandler.post(new Runnable() { // from class: com.google.appinventor.components.runtime.PieChartView.3
            @Override // java.lang.Runnable
            public void run() {
                PieChartView.this.legendEntries.removeAll(arrayList);
            }
        });
    }

    public void setPieRadius(int i) {
        if (i > 100) {
            i = 100;
        } else if (i < 0) {
            i = 0;
        }
        this.pieHoleRadius = 100 - i;
        resizePieRings();
    }

    public List<LegendEntry> getLegendEntries() {
        return this.legendEntries;
    }
}
