package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.data.Entry;
import com.google.appinventor.components.runtime.util.ChartDataSourceUtil;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.mapping.Symbol;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class DataModel<E> {
    protected int maximumTimeEntries = 200;
    protected List<E> entries = new ArrayList();

    public enum EntryCriterion {
        All,
        XValue,
        YValue
    }

    public abstract void addEntryFromTuple(YailList yailList);

    public abstract void addTimeEntry(YailList yailList);

    public abstract void clearEntries();

    public abstract boolean doesEntryExist(YailList yailList);

    public abstract YailList findEntriesByCriterion(String str, EntryCriterion entryCriterion);

    public abstract int findEntryIndex(Entry entry);

    public abstract List<E> getEntries();

    public abstract Entry getEntryFromTuple(YailList yailList);

    public abstract YailList getTupleFromEntry(Entry entry);

    public abstract int getTupleSize();

    public abstract boolean isEntryCriterionSatisfied(Entry entry, EntryCriterion entryCriterion, String str);

    public abstract void removeEntry(int i);

    public abstract void removeEntryFromTuple(YailList yailList);

    public void setDefaultStylingProperties() {
    }

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

    public void importFromList(List<?> list) {
        YailList yailListMakeList;
        for (Object obj : list) {
            if (obj instanceof YailList) {
                yailListMakeList = (YailList) obj;
            } else {
                yailListMakeList = obj instanceof List ? YailList.makeList((List) obj) : null;
            }
            if (yailListMakeList != null) {
                addEntryFromTuple(yailListMakeList);
            }
        }
    }

    public void removeValues(List<?> list) {
        YailList yailListMakeList;
        for (Object obj : list) {
            if (obj instanceof YailList) {
                yailListMakeList = (YailList) obj;
            } else if (obj instanceof List) {
                yailListMakeList = YailList.makeList((List) obj);
            } else if (!(obj instanceof Symbol)) {
                yailListMakeList = null;
            }
            if (yailListMakeList != null) {
                removeEntryFromTuple(yailListMakeList);
            }
        }
    }

    public void importFromColumns(YailList yailList, boolean z) {
        importFromList(getTuplesFromColumns(yailList, z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.google.appinventor.components.runtime.util.YailList] */
    /* JADX WARN: Type inference failed for: r8v1, types: [int] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    public YailList getTuplesFromColumns(YailList yailList, boolean z) {
        int iDetermineMaximumListSize = ChartDataSourceUtil.determineMaximumListSize(yailList);
        ArrayList arrayList = new ArrayList();
        for (?? r8 = z; r8 < iDetermineMaximumListSize; r8++) {
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < yailList.size(); i++) {
                Object object = yailList.getObject(i);
                if (!(object instanceof YailList)) {
                    arrayList2.add(getDefaultValue(r8 - 1));
                } else {
                    ?? r4 = (YailList) object;
                    if (r4.size() > r8) {
                        arrayList2.add(r4.getString(r8));
                    } else if (r4.size() == 0) {
                        arrayList2.add(getDefaultValue(r8 - 1));
                    } else {
                        arrayList2.add("");
                    }
                }
            }
            arrayList.add(YailList.makeList((List) arrayList2));
        }
        return YailList.makeList((List) arrayList);
    }

    public YailList getEntriesAsTuples() {
        return findEntriesByCriterion("0", EntryCriterion.All);
    }

    public void setMaximumTimeEntries(int i) {
        this.maximumTimeEntries = i;
    }

    public String getDefaultValue(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        return sb.toString();
    }

    public boolean areEntriesEqual(Entry entry, Entry entry2) {
        return entry.equalTo(entry2);
    }
}
