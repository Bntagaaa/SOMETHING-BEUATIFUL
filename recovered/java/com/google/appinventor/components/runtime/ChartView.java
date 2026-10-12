package com.google.appinventor.components.runtime;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.data.DataSet;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.google.appinventor.components.runtime.ChartView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ChartView<E extends Entry, T extends IDataSet<E>, D extends ChartData<T>, C extends com.github.mikephil.charting.charts.Chart<D>, V extends ChartView<E, T, D, C, V>> {
    protected C chart;
    protected Chart chartComponent;
    protected D data;
    protected Form form;
    protected Handler uiHandler = new Handler(Looper.myLooper());

    public abstract ChartDataModel<E, T, D, C, V> createChartModel();

    public abstract View getView();

    public ChartView(Chart chart) {
        this.chartComponent = chart;
        this.form = chart.$form();
    }

    public Form getForm() {
        return this.form;
    }

    public void setBackgroundColor(int i) {
        this.chart.setBackgroundColor(i);
    }

    public void setDescription(String str) {
        this.chart.getDescription().setText(str);
    }

    public void setLegendEnabled(boolean z) {
        this.chart.getLegend().setEnabled(z);
    }

    public void initializeDefaultSettings() {
        this.chart.getLegend().setHorizontalAlignment(Legend.LegendHorizontalAlignment.CENTER);
        this.chart.getLegend().setWordWrapEnabled(true);
    }

    public void refresh() {
        this.chart.notifyDataSetChanged();
        this.chart.invalidate();
    }

    public void refresh(ChartDataModel<E, T, D, C, V> chartDataModel) {
        new RefreshTask(chartDataModel.getEntries()).execute(chartDataModel);
    }

    @SuppressLint({"StaticFieldLeak"})
    public class RefreshTask extends android.os.AsyncTask<ChartDataModel<E, T, D, C, V>, Void, ChartDataModel<E, T, D, C, V>> {
        private final List<E> entries;

        public RefreshTask(List<E> list) {
            this.entries = new ArrayList(list);
        }

        @Override // android.os.AsyncTask
        @SafeVarargs
        public final ChartDataModel<E, T, D, C, V> doInBackground(ChartDataModel<E, T, D, C, V>... chartDataModelArr) {
            return chartDataModelArr[0];
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(ChartDataModel<E, T, D, C, V> chartDataModel) {
            ChartView.this.refresh(chartDataModel, this.entries);
        }
    }

    public void refresh(ChartDataModel<E, T, D, C, V> chartDataModel, List<E> list) {
        DataSet dataset = chartDataModel.getDataset();
        if (dataset instanceof DataSet) {
            dataset.setValues(list);
        }
        this.chart.getData().notifyDataChanged();
        this.chart.notifyDataSetChanged();
        this.chart.invalidate();
    }
}
