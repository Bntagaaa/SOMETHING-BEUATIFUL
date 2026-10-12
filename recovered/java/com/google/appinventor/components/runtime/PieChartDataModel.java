package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.components.LegendEntry;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.PieData;
import com.github.mikephil.charting.data.PieDataSet;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.interfaces.datasets.IPieDataSet;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class PieChartDataModel extends Chart2DDataModel<PieEntry, IPieDataSet, PieData, PieChart, PieChartView> {
    private final List<LegendEntry> legendEntries;

    public PieChartDataModel(PieData pieData, PieChartView pieChartView, PieChart pieChart) {
        super(pieData, pieChartView);
        this.legendEntries = new ArrayList();
        IPieDataSet pieDataSet = new PieDataSet(new ArrayList(), "");
        this.dataset = pieDataSet;
        this.data.addDataSet(pieDataSet);
        pieChart.setData(pieData);
        setDefaultStylingProperties();
        this.view = pieChartView;
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void addEntryFromTuple(YailList yailList) {
        PieEntry entryFromTuple = getEntryFromTuple(yailList);
        if (entryFromTuple != null) {
            this.entries.add(entryFromTuple);
            LegendEntry legendEntry = new LegendEntry();
            legendEntry.label = yailList.getString(0);
            int size = this.entries.size();
            List colors = ((IPieDataSet) getDataset()).getColors();
            legendEntry.formColor = ((Integer) colors.get((size - 1) % colors.size())).intValue();
            this.legendEntries.add(legendEntry);
            ((PieChartView) this.view).addLegendEntry(legendEntry);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void removeEntry(int i) {
        if (i >= 0) {
            this.entries.remove(i);
            ((PieChartView) this.view).removeLegendEntry(this.legendEntries.remove(i));
            updateLegendColors();
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void clearEntries() {
        super.clearEntries();
        ((PieChartView) this.view).removeLegendEntries(this.legendEntries);
        this.legendEntries.clear();
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public Entry getEntryFromTuple(YailList yailList) {
        try {
            String string = yailList.getString(0);
            String string2 = yailList.getString(1);
            try {
                return new PieEntry(Float.parseFloat(string2), string);
            } catch (NumberFormatException unused) {
                ((PieChartView) this.view).getForm().dispatchErrorOccurredEvent(((PieChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INVALID_CHART_ENTRY_VALUES, string, string2);
                return null;
            }
        } catch (IndexOutOfBoundsException unused2) {
            ((PieChartView) this.view).getForm().dispatchErrorOccurredEvent(((PieChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_INSUFFICIENT_CHART_ENTRY_VALUES, Integer.valueOf(getTupleSize()), Integer.valueOf(yailList.size()));
            return null;
        } catch (NullPointerException unused3) {
            ((PieChartView) this.view).getForm().dispatchErrorOccurredEvent(((PieChartView) this.view).chartComponent, "GetEntryFromTuple", ErrorMessages.ERROR_NULL_CHART_ENTRY_VALUES, new Object[0]);
            return null;
        }
    }

    @Override // com.google.appinventor.components.runtime.Chart2DDataModel, com.google.appinventor.components.runtime.DataModel
    public YailList getTupleFromEntry(Entry entry) {
        PieEntry pieEntry = (PieEntry) entry;
        return YailList.makeList(Arrays.asList(pieEntry.getLabel(), Float.valueOf(pieEntry.getY())));
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public void setDefaultStylingProperties() {
        PieDataSet pieDataSet = this.dataset;
        if (pieDataSet instanceof PieDataSet) {
            pieDataSet.setSliceSpace(3.0f);
        }
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel
    public void setColors(List<Integer> list) {
        super.setColors(list);
        updateLegendColors();
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel
    public void setColor(int i) {
        setColors(Collections.singletonList(Integer.valueOf(i)));
    }

    @Override // com.google.appinventor.components.runtime.ChartDataModel, com.google.appinventor.components.runtime.DataModel
    public boolean areEntriesEqual(Entry entry, Entry entry2) {
        if ((entry instanceof PieEntry) && (entry2 instanceof PieEntry)) {
            PieEntry pieEntry = (PieEntry) entry;
            PieEntry pieEntry2 = (PieEntry) entry2;
            if (pieEntry.getLabel().equals(pieEntry2.getLabel()) && pieEntry.getY() == pieEntry2.getY()) {
                return true;
            }
        }
        return false;
    }

    private void updateLegendColors() {
        for (int i = 0; i < this.legendEntries.size(); i++) {
            int size = i % ((IPieDataSet) getDataset()).getColors().size();
            this.legendEntries.get(i).formColor = ((Integer) ((IPieDataSet) getDataset()).getColors().get(size)).intValue();
        }
    }
}
