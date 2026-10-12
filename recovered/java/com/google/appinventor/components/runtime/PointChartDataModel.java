package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.data.BarLineScatterCandleBubbleData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.google.appinventor.components.runtime.PointChartView;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;

/* loaded from: classes.dex */
public abstract class PointChartDataModel<E extends Entry, T extends IBarLineScatterCandleBubbleDataSet<E>, D extends BarLineScatterCandleBubbleData<T>, C extends BarLineChartBase<D>, V extends PointChartView<E, T, D, C, V>> extends Chart2DDataModel<E, T, D, C, V> {
    public PointChartDataModel(D d, V v) {
        super(d, v);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public Entry getEntryFromTuple(YailList yailList) {
        try {
            String string = yailList.getString(0);
            String string2 = yailList.getString(1);
            try {
                return new Entry(Float.parseFloat(string), Float.parseFloat(string2));
            } catch (NumberFormatException unused) {
                ((PointChartView) this.view).getForm().dispatchErrorOccurredEvent(((PointChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INVALID_CHART_ENTRY_VALUES, string, string2);
                return null;
            }
        } catch (IndexOutOfBoundsException unused2) {
            ((PointChartView) this.view).getForm().dispatchErrorOccurredEvent(((PointChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INSUFFICIENT_CHART_ENTRY_VALUES, Integer.valueOf(getTupleSize()), Integer.valueOf(yailList.size()));
            return null;
        } catch (NullPointerException unused3) {
            ((PointChartView) this.view).getForm().dispatchErrorOccurredEvent(((PointChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_NULL_CHART_ENTRY_VALUES, new Object[0]);
            return null;
        }
    }
}
