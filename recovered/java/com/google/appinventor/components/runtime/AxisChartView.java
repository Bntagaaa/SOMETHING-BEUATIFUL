package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.BarLineScatterCandleBubbleData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.ValueFormatter;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.google.appinventor.components.runtime.AxisChartView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class AxisChartView<E extends Entry, T extends IBarLineScatterCandleBubbleDataSet<E>, D extends BarLineScatterCandleBubbleData<T>, C extends BarLineChartBase<D>, V extends AxisChartView<E, T, D, C, V>> extends ChartView<E, T, D, C, V> {
    private List<String> axisLabels;

    public AxisChartView(Chart chart) {
        super(chart);
        this.axisLabels = new ArrayList();
    }

    @Override // com.google.appinventor.components.runtime.ChartView
    public void initializeDefaultSettings() {
        super.initializeDefaultSettings();
        this.chart.getXAxis().setPosition(XAxis.XAxisPosition.BOTTOM);
        this.chart.getAxisRight().setEnabled(false);
        this.chart.getAxisLeft().setGranularity(1.0f);
        this.chart.getXAxis().setGranularity(1.0f);
        this.chart.getXAxis().setValueFormatter(new ValueFormatter() { // from class: com.google.appinventor.components.runtime.AxisChartView.1
            public String getFormattedValue(float f) {
                int iRound = Math.round(f) - ((int) AxisChartView.this.chart.getXAxis().getAxisMinimum());
                if (iRound >= 0 && iRound < AxisChartView.this.axisLabels.size()) {
                    return (String) AxisChartView.this.axisLabels.get(iRound);
                }
                return super.getFormattedValue(f);
            }
        });
        if (this.chartComponent.XFromZero()) {
            this.chart.getXAxis().setAxisMaximum(0.0f);
        }
        if (this.chartComponent.YFromZero()) {
            this.chart.getAxisLeft().setAxisMinimum(0.0f);
        }
    }

    public void resetAxes() {
        this.chart.getXAxis().resetAxisMaximum();
        this.chart.getXAxis().resetAxisMinimum();
        this.chart.getAxisLeft().resetAxisMaximum();
        this.chart.getAxisLeft().resetAxisMinimum();
        this.chart.invalidate();
    }

    public void setXMinimum(boolean z) {
        if (z) {
            this.chart.getXAxis().setAxisMinimum(0.0f);
        } else {
            this.chart.getXAxis().resetAxisMinimum();
        }
        this.chart.invalidate();
    }

    public void setYMinimum(boolean z) {
        if (z) {
            this.chart.getAxisLeft().setAxisMinimum(0.0f);
        } else {
            this.chart.getAxisLeft().resetAxisMinimum();
        }
        this.chart.invalidate();
    }

    public double[] getXBounds() {
        return new double[]{this.chart.getXAxis().getAxisMinimum(), this.chart.getXAxis().getAxisMaximum()};
    }

    public void setXBounds(double d, double d2) {
        this.chart.getXAxis().setAxisMinimum((float) d);
        this.chart.getXAxis().setAxisMaximum((float) d2);
        this.chart.invalidate();
    }

    public double[] getYBounds() {
        return new double[]{this.chart.getAxisLeft().getAxisMinimum(), this.chart.getAxisLeft().getAxisMaximum()};
    }

    public void setYBounds(double d, double d2) {
        this.chart.getAxisLeft().setAxisMinimum((float) d);
        this.chart.getAxisLeft().setAxisMaximum((float) d2);
        this.chart.invalidate();
    }

    public void setGridEnabled(boolean z) {
        this.chart.getXAxis().setDrawGridLines(z);
        this.chart.getAxisLeft().setDrawGridLines(z);
        this.chart.invalidate();
    }

    public void setLabels(List<String> list) {
        this.axisLabels = list;
    }
}
