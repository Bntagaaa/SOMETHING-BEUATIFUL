package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.data.DataSet;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.google.appinventor.components.runtime.ChartView;
import com.google.appinventor.components.runtime.DataModel;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ChartDataModel<E extends Entry, T extends IDataSet<E>, D extends ChartData<T>, C extends com.github.mikephil.charting.charts.Chart<D>, V extends ChartView<E, T, D, C, V>> extends DataModel<E> {
    protected D data;
    protected T dataset;
    protected V view;

    @Override // com.google.appinventor.components.runtime.DataModel
    public abstract int getTupleSize();

    @Override // com.google.appinventor.components.runtime.DataModel
    public void setDefaultStylingProperties() {
    }

    public ChartDataModel(D d, V v) {
        this.data = d;
        this.view = v;
        this.entries = new ArrayList();
    }

    public T getDataset() {
        return this.dataset;
    }

    public D getData() {
        return this.data;
    }

    public void setColor(int i) {
        DataSet dataSet = this.dataset;
        if (dataSet instanceof DataSet) {
            dataSet.setColor(i);
        }
    }

    public void setColors(List<Integer> list) {
        DataSet dataSet = this.dataset;
        if (dataSet instanceof DataSet) {
            dataSet.setColors(list);
        }
    }

    public void setLabel(String str) {
        getDataset().setLabel(str);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void setElements(String str) {
        int tupleSize = getTupleSize();
        String[] strArrSplit = str.split(",");
        int i = tupleSize - 1;
        for (int i2 = i; i2 < strArrSplit.length; i2 += tupleSize) {
            ArrayList arrayList = new ArrayList();
            for (int i3 = i; i3 >= 0; i3--) {
                arrayList.add(strArrSplit[i2 - i3]);
            }
            addEntryFromTuple(YailList.makeList((List) arrayList));
        }
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void removeEntryFromTuple(YailList yailList) {
        Entry entryFromTuple = getEntryFromTuple(yailList);
        if (entryFromTuple != null) {
            removeEntry(findEntryIndex(entryFromTuple));
        }
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void removeEntry(int i) {
        if (i >= 0) {
            this.entries.remove(i);
        }
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public boolean doesEntryExist(YailList yailList) {
        return findEntryIndex(getEntryFromTuple(yailList)) >= 0;
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public YailList findEntriesByCriterion(String str, DataModel.EntryCriterion entryCriterion) {
        ArrayList arrayList = new ArrayList();
        for (E e : this.entries) {
            if (isEntryCriterionSatisfied(e, entryCriterion, str)) {
                arrayList.add(getTupleFromEntry(e));
            }
        }
        return YailList.makeList((List) arrayList);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public YailList getEntriesAsTuples() {
        return findEntriesByCriterion("0", DataModel.EntryCriterion.All);
    }

    /* renamed from: com.google.appinventor.components.runtime.ChartDataModel$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion;

        static {
            int[] iArr = new int[DataModel.EntryCriterion.values().length];
            $SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion = iArr;
            try {
                iArr[DataModel.EntryCriterion.All.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion[DataModel.EntryCriterion.XValue.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion[DataModel.EntryCriterion.YValue.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public boolean isEntryCriterionSatisfied(Entry entry, DataModel.EntryCriterion entryCriterion, String str) throws NumberFormatException {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion[entryCriterion.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            if (i == 3) {
                return entry.getY() == Float.parseFloat(str);
            }
            throw new IllegalArgumentException("Unknown criterion: " + entryCriterion);
        }
        if (entry instanceof PieEntry) {
            return ((PieEntry) entry).getLabel().equals(str);
        }
        float f = Float.parseFloat(str);
        float x = entry.getX();
        if (entry instanceof BarEntry) {
            x = (float) Math.floor(x);
        }
        return x == f;
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public int findEntryIndex(Entry entry) {
        for (int i = 0; i < this.entries.size(); i++) {
            if (areEntriesEqual(this.entries.get(i), entry)) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void clearEntries() {
        this.entries.clear();
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void addTimeEntry(YailList yailList) {
        if (this.entries.size() >= this.maximumTimeEntries) {
            this.entries.remove(0);
        }
        addEntryFromTuple(yailList);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public void setMaximumTimeEntries(int i) {
        this.maximumTimeEntries = i;
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public String getDefaultValue(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        return sb.toString();
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public boolean areEntriesEqual(Entry entry, Entry entry2) {
        return entry.equalTo(entry2);
    }

    @Override // com.google.appinventor.components.runtime.DataModel
    public List<E> getEntries() {
        return Collections.unmodifiableList(this.entries);
    }
}
