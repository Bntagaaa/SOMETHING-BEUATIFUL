package com.google.appinventor.components.runtime;

import com.github.mikephil.charting.data.Entry;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.lists.LList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

@DesignerComponent(category = ComponentCategory.DATASCIENCE, description = "A component that contains anomaly detection models", iconName = "images/anomaly.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class AnomalyDetection extends DataCollection<ComponentContainer, DataModel<?>> {
    @Override // com.google.appinventor.components.runtime.DataCollection
    public <K, V> void ChangeDataSource(DataSource<K, V> dataSource, String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void Clear() {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void DataFileXColumn(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void DataFileYColumn(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void DataSourceKey(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ElementsFromPairs(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ImportFromCloudDB(CloudDB cloudDB, String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ImportFromDataFile(DataFile dataFile, String str, String str2) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ImportFromList(YailList yailList) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ImportFromSpreadsheet(Spreadsheet spreadsheet, String str, String str2, boolean z) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ImportFromTinyDB(TinyDB tinyDB, String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void ImportFromWeb(Web web, String str, String str2) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void RemoveDataSource() {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public <K, V> void Source(DataSource<K, V> dataSource) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void SpreadsheetUseHeaders(boolean z) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void SpreadsheetXColumn(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void SpreadsheetYColumn(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void WebXColumn(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void WebYColumn(String str) {
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void onDataChange() {
    }

    public AnomalyDetection(ComponentContainer componentContainer) {
        super(componentContainer);
    }

    @SimpleFunction(description = "Z-Score Anomaly Detection: checks each data point's Z-scoreagainst the given threshold if a data point's Z-score is greater than the threshold, the data point is labeled as anomaly and returned in a list of pairs (anomaly index, anomaly value)")
    public List<List<?>> DetectAnomalies(YailList yailList, double d) {
        ArrayList arrayList = new ArrayList();
        List<Double> listCastToDouble = DataCollection.castToDouble((LList) yailList.getCdr());
        double dPow = 0.0d;
        double dDoubleValue = 0.0d;
        for (int i = 0; i < listCastToDouble.size(); i++) {
            dDoubleValue += listCastToDouble.get(i).doubleValue();
        }
        double size = dDoubleValue / listCastToDouble.size();
        for (int i2 = 0; i2 < listCastToDouble.size(); i2++) {
            dPow += Math.pow(listCastToDouble.get(i2).doubleValue() - size, 2.0d);
        }
        double dSqrt = Math.sqrt(dPow / listCastToDouble.size());
        for (int i3 = 0; i3 < listCastToDouble.size(); i3++) {
            if (Math.abs((listCastToDouble.get(i3).doubleValue() - size) / dSqrt) > d) {
                arrayList.add(Arrays.asList(Integer.valueOf(i3 + 1), listCastToDouble.get(i3)));
            }
        }
        return arrayList;
    }

    @SimpleFunction
    public List<List<?>> DetectAnomaliesInChartData(ChartData2D chartData2D, double d) {
        List<?> dataValue = chartData2D.getDataValue((Object) null);
        double dPow = 0.0d;
        double y = 0.0d;
        while (dataValue.iterator().hasNext()) {
            y += ((Entry) r0.next()).getY();
        }
        double size = y / dataValue.size();
        Iterator<?> it = dataValue.iterator();
        while (it.hasNext()) {
            dPow += Math.pow(((Entry) it.next()).getY() - size, 2.0d);
        }
        double dSqrt = Math.sqrt(dPow / dataValue.size());
        ArrayList arrayList = new ArrayList();
        Iterator<?> it2 = dataValue.iterator();
        while (it2.hasNext()) {
            Entry entry = (Entry) it2.next();
            if (Math.abs((entry.getY() - size) / dSqrt) > d) {
                arrayList.add(Arrays.asList(Float.valueOf(entry.getX()), Float.valueOf(entry.getY())));
            }
        }
        return arrayList;
    }

    @SimpleFunction(description = "Given a single anomaly and the x and y values of your data. This block will return the x and y value pairs of your data without the anomaly")
    public List<List<?>> CleanData(YailList yailList, YailList yailList2, YailList yailList3) {
        List<Double> listCastToDouble = DataCollection.castToDouble((LList) yailList2.getCdr());
        List<Double> listCastToDouble2 = DataCollection.castToDouble((LList) yailList3.getCdr());
        if (listCastToDouble.size() != listCastToDouble2.size()) {
            throw new IllegalStateException("Must have equal X and Y data points");
        }
        if (listCastToDouble.size() == 0 || listCastToDouble2.size() == 0) {
            throw new IllegalStateException("List must have at least one element");
        }
        int anomalyIndex = ((int) getAnomalyIndex(yailList)) - 1;
        listCastToDouble.remove(anomalyIndex);
        listCastToDouble2.remove(anomalyIndex);
        ArrayList arrayList = new ArrayList();
        if (listCastToDouble.size() == listCastToDouble2.size()) {
            for (int i = 0; i < listCastToDouble.size(); i++) {
                arrayList.add(YailList.makeList(Arrays.asList(listCastToDouble.get(i), listCastToDouble2.get(i))));
            }
        }
        return arrayList;
    }

    public static double getAnomalyIndex(YailList yailList) {
        if (!yailList.isEmpty()) {
            return DataCollection.castToDouble((LList) yailList.getCdr()).get(0).doubleValue();
        }
        throw new IllegalStateException("Must have equal X and Y data points");
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public YailList GetEntriesWithXValue(String str) {
        return YailList.makeEmptyList();
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public YailList GetEntriesWithYValue(String str) {
        return YailList.makeEmptyList();
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public YailList GetAllEntries() {
        return YailList.makeEmptyList();
    }
}
