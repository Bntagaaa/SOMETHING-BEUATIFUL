package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.ScatterChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.ScatterData;
import com.github.mikephil.charting.data.ScatterDataSet;
import com.github.mikephil.charting.interfaces.datasets.IScatterDataSet;
import com.github.mikephil.charting.utils.EntryXComparator;
import com.google.appinventor.components.common.PointStyle;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class ScatterChartDataModel extends PointChartDataModel<Entry, IScatterDataSet, ScatterData, ScatterChart, ScatterChartView> {
    public ScatterChartDataModel(ScatterData scatterData, ScatterChartView scatterChartView) {
        this(scatterData, scatterChartView, new ScatterDataSet(new ArrayList(), ""));
    }

    public ScatterChartDataModel(ScatterData scatterData, ScatterChartView scatterChartView, IScatterDataSet iScatterDataSet) {
        super(scatterData, scatterChartView);
        this.dataset = iScatterDataSet;
        this.data.addDataSet(iScatterDataSet);
        setDefaultStylingProperties();
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void addEntryFromTuple(YailList yailList) {
        Entry entryFromTuple = getEntryFromTuple(yailList);
        if (entryFromTuple != null) {
            int iBinarySearch = Collections.binarySearch(this.entries, entryFromTuple, new EntryXComparator());
            if (iBinarySearch < 0) {
                iBinarySearch = (-iBinarySearch) - 1;
            } else {
                int size = this.entries.size();
                while (iBinarySearch < size && ((Entry) this.entries.get(iBinarySearch)).getX() == entryFromTuple.getX()) {
                    iBinarySearch++;
                }
            }
            this.entries.add(iBinarySearch, entryFromTuple);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void setDefaultStylingProperties() {
        ScatterDataSet scatterDataSet = this.dataset;
        if (scatterDataSet instanceof ScatterDataSet) {
            scatterDataSet.setScatterShape(ScatterChart.ScatterShape.CIRCLE);
        }
    }

    public void setPointShape(PointStyle pointStyle) {
        if (this.dataset instanceof ScatterDataSet) {
            int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$PointStyle[pointStyle.ordinal()];
            if (i == 1) {
                this.dataset.setScatterShape(ScatterChart.ScatterShape.CIRCLE);
                return;
            }
            if (i == 2) {
                this.dataset.setScatterShape(ScatterChart.ScatterShape.SQUARE);
                return;
            }
            if (i == 3) {
                this.dataset.setScatterShape(ScatterChart.ScatterShape.TRIANGLE);
                return;
            }
            if (i == 4) {
                this.dataset.setScatterShape(ScatterChart.ScatterShape.CROSS);
            } else if (i == 5) {
                this.dataset.setScatterShape(ScatterChart.ScatterShape.X);
            } else {
                throw new IllegalArgumentException("Unknown shape type: " + pointStyle);
            }
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.ScatterChartDataModel$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$PointStyle;

        static {
            int[] iArr = new int[PointStyle.values().length];
            $SwitchMap$com$google$appinventor$components$common$PointStyle = iArr;
            try {
                iArr[PointStyle.Circle.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$PointStyle[PointStyle.Square.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$PointStyle[PointStyle.Triangle.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$PointStyle[PointStyle.Cross.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$PointStyle[PointStyle.X.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }
}
