package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import java.util.List;

/* loaded from: classes.dex */
public class AreaChartDataModel extends LineChartBaseDataModel<AreaChartView> {
    public AreaChartDataModel(LineData lineData, AreaChartView areaChartView) {
        super(lineData, areaChartView);
    }

    @Override // com.google.appinventor.components.runtime.LineChartBaseDataModel, com.google.appinventor.components.runtime.ChartDataModel
    public void setColor(int i) {
        super.setColor(i);
        LineDataSet lineDataSet = this.dataset;
        if (lineDataSet instanceof LineDataSet) {
            lineDataSet.setFillColor(i);
        }
    }

    @Override // com.google.appinventor.components.runtime.LineChartBaseDataModel, com.google.appinventor.components.runtime.ChartDataModel
    public void setColors(List<Integer> list) {
        super.setColors(list);
        if (list.isEmpty()) {
            return;
        }
        LineDataSet lineDataSet = this.dataset;
        if (lineDataSet instanceof LineDataSet) {
            lineDataSet.setFillColor(list.get(0).intValue());
        }
    }

    @Override // com.google.appinventor.components.runtime.LineChartBaseDataModel, com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void setDefaultStylingProperties() {
        super.setDefaultStylingProperties();
        this.dataset.setDrawFilled(true);
        LineDataSet lineDataSet = this.dataset;
        if (lineDataSet instanceof LineDataSet) {
            lineDataSet.setFillAlpha(100);
        }
    }
}
