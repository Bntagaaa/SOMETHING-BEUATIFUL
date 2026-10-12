package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.github.mikephil.charting.utils.EntryXComparator;
import com.google.appinventor.components.common.LineType;
import com.google.appinventor.components.runtime.LineChartViewBase;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class LineChartBaseDataModel<V extends LineChartViewBase<V>> extends PointChartDataModel<Entry, ILineDataSet, LineData, LineChart, V> {
    public LineChartBaseDataModel(LineData lineData, V v) {
        this(lineData, v, new LineDataSet(new ArrayList(), ""));
    }

    public LineChartBaseDataModel(LineData lineData, V v, ILineDataSet iLineDataSet) {
        super(lineData, v);
        this.dataset = iLineDataSet;
        this.data.addDataSet(iLineDataSet);
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
            List circleColors = this.dataset.getCircleColors();
            circleColors.add(iBinarySearch, Integer.valueOf(this.dataset.getColor()));
            this.dataset.setCircleColors(circleColors);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel
    public void setColor(int i) {
        super.setColor(i);
        LineDataSet lineDataSet = this.dataset;
        if (lineDataSet instanceof LineDataSet) {
            lineDataSet.setCircleColor(i);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel
    public void setColors(List<Integer> list) {
        super.setColors(list);
        LineDataSet lineDataSet = this.dataset;
        if (lineDataSet instanceof LineDataSet) {
            lineDataSet.setCircleColors(list);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void setDefaultStylingProperties() {
        LineDataSet lineDataSet = this.dataset;
        if (lineDataSet instanceof LineDataSet) {
            lineDataSet.setDrawCircleHole(false);
        }
    }

    public void setLineType(LineType lineType) {
        if (this.dataset instanceof LineDataSet) {
            int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$LineType[lineType.ordinal()];
            if (i == 1) {
                this.dataset.setMode(LineDataSet.Mode.LINEAR);
                return;
            }
            if (i == 2) {
                this.dataset.setMode(LineDataSet.Mode.CUBIC_BEZIER);
            } else if (i == 3) {
                this.dataset.setMode(LineDataSet.Mode.STEPPED);
            } else {
                throw new IllegalArgumentException("Unknown line type: " + lineType);
            }
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.LineChartBaseDataModel$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$LineType;

        static {
            int[] iArr = new int[LineType.values().length];
            $SwitchMap$com$google$appinventor$components$common$LineType = iArr;
            try {
                iArr[LineType.Linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$LineType[LineType.Curved.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$LineType[LineType.Stepped.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }
}
