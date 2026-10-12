package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;

/* loaded from: classes.dex */
public class LineChartDataModel extends LineChartBaseDataModel<LineChartView> {
    public LineChartDataModel(LineData lineData, LineChartView lineChartView) {
        super(lineData, lineChartView);
    }

    public LineChartDataModel(LineData lineData, LineChartView lineChartView, ILineDataSet iLineDataSet) {
        super(lineData, lineChartView, iLineDataSet);
    }
}
