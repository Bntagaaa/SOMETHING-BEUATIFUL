package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public class BarChartDataModel extends Chart2DDataModel<BarEntry, IBarDataSet, BarData, BarChart, BarChartView> {
    public BarChartDataModel(BarData barData, BarChartView barChartView) {
        super(barData, barChartView);
        IBarDataSet barDataSet = new BarDataSet(new ArrayList(), "");
        this.dataset = barDataSet;
        this.data.addDataSet(barDataSet);
        setDefaultStylingProperties();
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void addEntryFromTuple(YailList yailList) {
        int x;
        BarEntry entryFromTuple = getEntryFromTuple(yailList);
        if (entryFromTuple == null || (x = (int) entryFromTuple.getX()) < 0) {
            return;
        }
        if (x < this.entries.size()) {
            this.entries.set(x, entryFromTuple);
            return;
        }
        while (this.entries.size() < x) {
            this.entries.add(new BarEntry(this.entries.size(), 0.0f));
        }
        this.entries.add(entryFromTuple);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public Entry getEntryFromTuple(YailList yailList) {
        try {
            String string = yailList.getString(0);
            String string2 = yailList.getString(1);
            try {
                return new BarEntry((int) Math.floor(Float.parseFloat(string)), Float.parseFloat(string2));
            } catch (NumberFormatException unused) {
                ((BarChartView) this.view).getForm().dispatchErrorOccurredEvent(((BarChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INVALID_CHART_ENTRY_VALUES, string, string2);
                return null;
            }
        } catch (IndexOutOfBoundsException unused2) {
            ((BarChartView) this.view).getForm().dispatchErrorOccurredEvent(((BarChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INSUFFICIENT_CHART_ENTRY_VALUES, Integer.valueOf(getTupleSize()), Integer.valueOf(yailList.size()));
            return null;
        } catch (NullPointerException unused3) {
            ((BarChartView) this.view).getForm().dispatchErrorOccurredEvent(((BarChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_NULL_CHART_ENTRY_VALUES, new Object[0]);
            return null;
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void removeEntry(int i) {
        if (i >= 0) {
            if (i == this.entries.size() - 1) {
                this.entries.remove(i);
            } else {
                ((BarEntry) this.entries.get(i)).setY(0.0f);
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void addTimeEntry(YailList yailList) {
        if (this.entries.size() >= this.maximumTimeEntries) {
            this.entries.remove(0);
        }
        this.entries.add(getEntryFromTuple(yailList));
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public boolean areEntriesEqual(Entry entry, Entry entry2) {
        return (entry instanceof BarEntry) && (entry2 instanceof BarEntry) && Math.floor((double) entry.getX()) == Math.floor((double) entry2.getX()) && entry.getY() == entry2.getY();
    }

    @Override // com.google.appinventor.components.runtime.Chart2DDataModel, com.google.appinventor.components.runtime.DataModel
    public YailList getTupleFromEntry(Entry entry) {
        return YailList.makeList(Arrays.asList(Float.valueOf((float) Math.floor(entry.getX())), Float.valueOf(entry.getY())));
    }
}
