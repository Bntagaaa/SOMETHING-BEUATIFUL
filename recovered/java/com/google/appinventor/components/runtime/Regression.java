package com.google.appinventor.components.runtime;

import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.LOBFValues;
import com.google.appinventor.components.common.LinearRegression;
import com.google.appinventor.components.runtime.util.YailDictionary;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.lists.LList;
import java.util.List;

@DesignerComponent(category = ComponentCategory.DATASCIENCE, description = "A component that contains regression models", iconName = "images/regression.png", nonVisible = true, version = 2)
@SimpleObject
/* loaded from: classes.dex */
public final class Regression extends DataCollection<ComponentContainer, DataModel<?>> {
    private static final LinearRegression LINEAR_REGRESSION = new LinearRegression();

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

    public Regression(ComponentContainer componentContainer) {
        super(componentContainer);
    }

    public static YailDictionary computeLineOfBestFit(List<Double> list, List<Double> list2) {
        return new YailDictionary(LINEAR_REGRESSION.compute(list, list2));
    }

    @SimpleFunction(description = "Returns one of the Line of Best Fit values. A value could be\"slope\", \"Yintercept\", \"correlation coefficient\"or \"predictions\". The block returns the complete dictionary with all values if no specific value string is provided")
    public Object CalculateLineOfBestFitValue(YailList yailList, YailList yailList2, @Options(LOBFValues.class) String str) {
        YailDictionary yailDictionaryComputeLineOfBestFit = computeLineOfBestFit(DataCollection.castToDouble((LList) yailList.getCdr()), DataCollection.castToDouble((LList) yailList2.getCdr()));
        return yailDictionaryComputeLineOfBestFit.containsKey(str) ? yailDictionaryComputeLineOfBestFit.get(str) : yailDictionaryComputeLineOfBestFit;
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
