package com.google.appinventor.components.runtime;

import android.util.Log;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.ComponentContainer;
import com.google.appinventor.components.runtime.DataModel;
import com.google.appinventor.components.runtime.util.CsvUtil;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

@SimpleObject
/* loaded from: classes.dex */
public abstract class DataCollection<C extends ComponentContainer, M extends DataModel<?>> implements Component, DataSource<Object, List<?>>, DataSourceChangeListener {
    protected final C container;
    protected List<String> dataFileColumns;
    protected M dataModel;
    private DataSource<?, ?> dataSource;
    protected String dataSourceKey;
    private String elements;
    private Object lastDataSourceValue;
    protected List<String> sheetsColumns;
    protected ExecutorService threadRunner;
    protected boolean useSheetHeaders;
    protected List<String> webColumns;
    protected final Set<DataSourceChangeListener> listeners = new HashSet();
    private boolean initialized = false;
    private int tick = 0;

    public abstract void onDataChange();

    public DataCollection(C c) {
        this.container = c;
        DataSourceKey("");
        this.threadRunner = Executors.newSingleThreadExecutor();
        this.dataFileColumns = Arrays.asList("", "");
        this.sheetsColumns = Arrays.asList("", "");
        this.webColumns = Arrays.asList("", "");
    }

    public void setExecutorService(ExecutorService executorService) {
        this.threadRunner = executorService;
    }

    public void addDataSourceChangeListener(DataSourceChangeListener dataSourceChangeListener) {
        this.listeners.add(dataSourceChangeListener);
        dataSourceChangeListener.onDataSourceValueChange(this, null, null);
    }

    public void removeDataSourceChangeListener(DataSourceChangeListener dataSourceChangeListener) {
        this.listeners.remove(dataSourceChangeListener);
    }

    @Override // com.google.appinventor.components.runtime.DataSource
    public List<?> getDataValue(Object obj) {
        return this.dataModel.entries;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void ElementsFromPairs(final String str) {
        this.elements = str;
        if (str == null || str.equals("") || !this.initialized) {
            return;
        }
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.1
            @Override // java.lang.Runnable
            public void run() {
                DataCollection.this.dataModel.setElements(str);
                DataCollection.this.onDataChange();
            }
        });
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void SpreadsheetUseHeaders(boolean z) {
        this.useSheetHeaders = z;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_DATA_FILE_COLUMN)
    public void DataFileXColumn(String str) {
        this.dataFileColumns.set(0, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets the column to parse from the attached Web component for the x values. If a column is not specified, default values for the x values will be generated instead.", userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void WebXColumn(String str) {
        this.webColumns.set(0, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SpreadsheetXColumn(String str) {
        this.sheetsColumns.set(0, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_DATA_FILE_COLUMN)
    public void DataFileYColumn(String str) {
        this.dataFileColumns.set(1, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Sets the column to parse from the attached Web component for the y values. If a column is not specified, default values for the y values will be generated instead.", userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void WebYColumn(String str) {
        this.webColumns.set(1, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void SpreadsheetYColumn(String str) {
        this.sheetsColumns.set(1, str);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void DataSourceKey(String str) {
        this.dataSourceKey = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SimpleProperty(category = PropertyCategory.BEHAVIOR, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_CHART_DATA_SOURCE)
    public <K, V> void Source(DataSource<K, V> dataSource) {
        DataSource<?, ?> dataSource2 = this.dataSource;
        if (dataSource2 != dataSource && (dataSource2 instanceof ObservableDataSource)) {
            ((ObservableDataSource) dataSource2).removeDataObserver(this);
        }
        this.dataSource = dataSource;
        if (this.initialized) {
            if (dataSource instanceof ObservableDataSource) {
                ((ObservableDataSource) dataSource).addDataObserver(this);
                if (this.dataSourceKey == null) {
                    return;
                }
            }
            if (dataSource instanceof DataFile) {
                importFromDataFileAsync((DataFile) dataSource, YailList.makeList((List) this.dataFileColumns));
                return;
            }
            if (dataSource instanceof TinyDB) {
                ImportFromTinyDB((TinyDB) dataSource, this.dataSourceKey);
                return;
            }
            if (dataSource instanceof CloudDB) {
                ImportFromCloudDB((CloudDB) dataSource, this.dataSourceKey);
            } else if (dataSource instanceof Spreadsheet) {
                importFromSpreadsheetAsync((Spreadsheet) dataSource, YailList.makeList((List) this.sheetsColumns), this.useSheetHeaders);
            } else if (dataSource instanceof Web) {
                importFromWebAsync((Web) dataSource, YailList.makeList((List) this.webColumns));
            }
        }
    }

    @SimpleFunction
    public void ImportFromList(final YailList yailList) {
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.2
            @Override // java.lang.Runnable
            public void run() {
                DataCollection.this.dataModel.importFromList(yailList);
                DataCollection.this.onDataChange();
            }
        });
    }

    @SimpleFunction(description = "Clears all of the data.")
    public void Clear() {
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.3
            @Override // java.lang.Runnable
            public void run() {
                DataCollection.this.dataModel.clearEntries();
                DataCollection.this.onDataChange();
            }
        });
    }

    @SimpleFunction
    public <K, V> void ChangeDataSource(final DataSource<K, V> dataSource, final String str) {
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.4
            @Override // java.lang.Runnable
            public void run() {
                List<String> list;
                String string;
                DataSource dataSource2 = dataSource;
                if ((dataSource2 instanceof DataFile) || (dataSource2 instanceof Web)) {
                    YailList yailList = new YailList();
                    try {
                        yailList = CsvUtil.fromCsvRow(str);
                    } catch (Exception e) {
                        Log.e(getClass().getName(), e.getMessage());
                    }
                    DataSource dataSource3 = dataSource;
                    if (dataSource3 instanceof DataFile) {
                        list = DataCollection.this.dataFileColumns;
                    } else if (dataSource3 instanceof Spreadsheet) {
                        list = DataCollection.this.sheetsColumns;
                    } else if (dataSource3 instanceof Web) {
                        list = DataCollection.this.webColumns;
                    } else {
                        throw new IllegalArgumentException(dataSource + " is not an expected DataSource");
                    }
                    for (int i = 0; i < list.size(); i++) {
                        if (yailList.size() <= i) {
                            string = "";
                        } else {
                            string = yailList.getString(i);
                        }
                        list.set(i, string);
                    }
                } else {
                    DataCollection.this.dataSourceKey = str;
                }
                DataCollection.this.lastDataSourceValue = null;
                DataCollection.this.Source(dataSource);
            }
        });
    }

    @SimpleFunction(description = "Un-links the currently associated Data Source component from the Chart.")
    public void RemoveDataSource() {
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.5
            @Override // java.lang.Runnable
            public void run() {
                DataCollection.this.Source(null);
                DataCollection dataCollection = DataCollection.this;
                dataCollection.dataSourceKey = "";
                dataCollection.lastDataSourceValue = null;
                for (int i = 0; i < DataCollection.this.dataFileColumns.size(); i++) {
                    DataCollection.this.dataFileColumns.set(i, "");
                    DataCollection.this.sheetsColumns.set(i, "");
                    DataCollection.this.webColumns.set(i, "");
                }
            }
        });
    }

    @SimpleFunction(description = "Returns a List of entries with x values matching the specified x value. A single entry is represented as a List of values of the entry.")
    public YailList GetEntriesWithXValue(final String str) {
        try {
            return (YailList) this.threadRunner.submit(new Callable<YailList>() { // from class: com.google.appinventor.components.runtime.DataCollection.6
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public YailList call() {
                    return DataCollection.this.dataModel.findEntriesByCriterion(str, DataModel.EntryCriterion.XValue);
                }
            }).get();
        } catch (InterruptedException e) {
            Log.e(getClass().getName(), e.getMessage());
            return new YailList();
        } catch (ExecutionException e2) {
            Log.e(getClass().getName(), e2.getMessage());
            return new YailList();
        }
    }

    @SimpleFunction(description = "Returns a List of entries with y values matching the specified y value. A single entry is represented as a List of values of the entry.")
    public YailList GetEntriesWithYValue(final String str) {
        try {
            return (YailList) this.threadRunner.submit(new Callable<YailList>() { // from class: com.google.appinventor.components.runtime.DataCollection.7
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public YailList call() {
                    return DataCollection.this.dataModel.findEntriesByCriterion(str, DataModel.EntryCriterion.YValue);
                }
            }).get();
        } catch (InterruptedException e) {
            Log.e(getClass().getName(), e.getMessage());
            return new YailList();
        } catch (ExecutionException e2) {
            Log.e(getClass().getName(), e2.getMessage());
            return new YailList();
        }
    }

    @SimpleFunction(description = "Returns all the entries of the Data Series. A single entry is represented as a List of values of the entry.")
    public YailList GetAllEntries() {
        try {
            return (YailList) this.threadRunner.submit(new Callable<YailList>() { // from class: com.google.appinventor.components.runtime.DataCollection.8
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public YailList call() {
                    return DataCollection.this.dataModel.getEntriesAsTuples();
                }
            }).get();
        } catch (InterruptedException e) {
            Log.e(getClass().getName(), e.getMessage());
            return new YailList();
        } catch (ExecutionException e2) {
            Log.e(getClass().getName(), e2.getMessage());
            return new YailList();
        }
    }

    @SimpleFunction
    public void ImportFromTinyDB(TinyDB tinyDB, String str) {
        final YailList dataValue = tinyDB.getDataValue(str);
        updateCurrentDataSourceValue(tinyDB, str, dataValue);
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.9
            @Override // java.lang.Runnable
            public void run() {
                DataCollection.this.dataModel.importFromList(dataValue);
                DataCollection.this.onDataChange();
            }
        });
    }

    @SimpleFunction
    public void ImportFromCloudDB(final CloudDB cloudDB, final String str) {
        final Future<YailList> dataValue = cloudDB.getDataValue(str);
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.10
            @Override // java.lang.Runnable
            public void run() {
                try {
                    YailList yailList = (YailList) dataValue.get();
                    DataCollection.this.updateCurrentDataSourceValue(cloudDB, str, yailList);
                    DataCollection.this.dataModel.importFromList(yailList);
                    DataCollection.this.onDataChange();
                } catch (InterruptedException e) {
                    Log.e(getClass().getName(), e.getMessage());
                } catch (ExecutionException e2) {
                    Log.e(getClass().getName(), e2.getMessage());
                }
            }
        });
    }

    public void importFromDataFileAsync(DataFile dataFile, YailList yailList) {
        final Future<YailList> dataValue = dataFile.getDataValue(yailList);
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.11
            @Override // java.lang.Runnable
            public void run() {
                YailList yailList2;
                try {
                    yailList2 = (YailList) dataValue.get();
                } catch (InterruptedException e) {
                    Log.e(getClass().getName(), e.getMessage());
                    yailList2 = null;
                    DataCollection.this.dataModel.importFromColumns(yailList2, true);
                    DataCollection.this.onDataChange();
                } catch (ExecutionException e2) {
                    Log.e(getClass().getName(), e2.getMessage());
                    yailList2 = null;
                    DataCollection.this.dataModel.importFromColumns(yailList2, true);
                    DataCollection.this.onDataChange();
                }
                DataCollection.this.dataModel.importFromColumns(yailList2, true);
                DataCollection.this.onDataChange();
            }
        });
    }

    public void importFromSpreadsheetAsync(final Spreadsheet spreadsheet, YailList yailList, final boolean z) {
        final Future<YailList> dataValue = spreadsheet.getDataValue(yailList, z);
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.12
            /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r4 = this;
                    r0 = 0
                    java.util.concurrent.Future r1 = r2     // Catch: java.util.concurrent.ExecutionException -> La java.lang.InterruptedException -> Lc
                    java.lang.Object r1 = r1.get()     // Catch: java.util.concurrent.ExecutionException -> La java.lang.InterruptedException -> Lc
                    com.google.appinventor.components.runtime.util.YailList r1 = (com.google.appinventor.components.runtime.util.YailList) r1     // Catch: java.util.concurrent.ExecutionException -> La java.lang.InterruptedException -> Lc
                    goto L2e
                La:
                    r1 = move-exception
                    goto Le
                Lc:
                    r1 = move-exception
                    goto L1e
                Le:
                    java.lang.Class r2 = r4.getClass()
                    java.lang.String r2 = r2.getName()
                    java.lang.String r1 = r1.getMessage()
                    android.util.Log.e(r2, r1)
                    goto L2d
                L1e:
                    java.lang.Class r2 = r4.getClass()
                    java.lang.String r2 = r2.getName()
                    java.lang.String r1 = r1.getMessage()
                    android.util.Log.e(r2, r1)
                L2d:
                    r1 = r0
                L2e:
                    com.google.appinventor.components.runtime.Spreadsheet r2 = r3
                    com.google.appinventor.components.runtime.DataCollection r3 = com.google.appinventor.components.runtime.DataCollection.this
                    com.google.appinventor.components.runtime.DataSource r3 = com.google.appinventor.components.runtime.DataCollection.a(r3)
                    if (r2 != r3) goto L41
                    com.google.appinventor.components.runtime.DataCollection r2 = com.google.appinventor.components.runtime.DataCollection.this
                    com.google.appinventor.components.runtime.DataSource r3 = com.google.appinventor.components.runtime.DataCollection.a(r2)
                    com.google.appinventor.components.runtime.DataCollection.f(r2, r3, r0, r0)
                L41:
                    com.google.appinventor.components.runtime.DataCollection r0 = com.google.appinventor.components.runtime.DataCollection.this
                    M extends com.google.appinventor.components.runtime.DataModel<?> r0 = r0.dataModel
                    boolean r2 = r4
                    r0.importFromColumns(r1, r2)
                    com.google.appinventor.components.runtime.DataCollection r0 = com.google.appinventor.components.runtime.DataCollection.this
                    r0.onDataChange()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.DataCollection.AnonymousClass12.run():void");
            }
        });
    }

    public void importFromWebAsync(final Web web, YailList yailList) {
        final Future<YailList> dataValue = web.getDataValue(yailList);
        this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.13
            /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    r4 = this;
                    r0 = 0
                    java.util.concurrent.Future r1 = r2     // Catch: java.util.concurrent.ExecutionException -> La java.lang.InterruptedException -> Lc
                    java.lang.Object r1 = r1.get()     // Catch: java.util.concurrent.ExecutionException -> La java.lang.InterruptedException -> Lc
                    com.google.appinventor.components.runtime.util.YailList r1 = (com.google.appinventor.components.runtime.util.YailList) r1     // Catch: java.util.concurrent.ExecutionException -> La java.lang.InterruptedException -> Lc
                    goto L2e
                La:
                    r1 = move-exception
                    goto Le
                Lc:
                    r1 = move-exception
                    goto L1e
                Le:
                    java.lang.Class r2 = r4.getClass()
                    java.lang.String r2 = r2.getName()
                    java.lang.String r1 = r1.getMessage()
                    android.util.Log.e(r2, r1)
                    goto L2d
                L1e:
                    java.lang.Class r2 = r4.getClass()
                    java.lang.String r2 = r2.getName()
                    java.lang.String r1 = r1.getMessage()
                    android.util.Log.e(r2, r1)
                L2d:
                    r1 = r0
                L2e:
                    com.google.appinventor.components.runtime.Web r2 = r3
                    com.google.appinventor.components.runtime.DataCollection r3 = com.google.appinventor.components.runtime.DataCollection.this
                    com.google.appinventor.components.runtime.DataSource r3 = com.google.appinventor.components.runtime.DataCollection.a(r3)
                    if (r2 != r3) goto L41
                    com.google.appinventor.components.runtime.DataCollection r2 = com.google.appinventor.components.runtime.DataCollection.this
                    com.google.appinventor.components.runtime.DataSource r3 = com.google.appinventor.components.runtime.DataCollection.a(r2)
                    com.google.appinventor.components.runtime.DataCollection.f(r2, r3, r0, r0)
                L41:
                    com.google.appinventor.components.runtime.DataCollection r0 = com.google.appinventor.components.runtime.DataCollection.this
                    M extends com.google.appinventor.components.runtime.DataModel<?> r0 = r0.dataModel
                    r2 = 1
                    r0.importFromColumns(r1, r2)
                    com.google.appinventor.components.runtime.DataCollection r0 = com.google.appinventor.components.runtime.DataCollection.this
                    r0.onDataChange()
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.appinventor.components.runtime.DataCollection.AnonymousClass13.run():void");
            }
        });
    }

    @SimpleFunction
    public void ImportFromDataFile(DataFile dataFile, String str, String str2) {
        importFromDataFileAsync(dataFile, YailList.makeList(Arrays.asList(str, str2)));
    }

    @SimpleFunction
    public void ImportFromSpreadsheet(Spreadsheet spreadsheet, String str, String str2, boolean z) {
        importFromSpreadsheetAsync(spreadsheet, YailList.makeList(Arrays.asList(str, str2)), z);
    }

    @SimpleFunction(description = "Imports data from the specified Web component, given the names of the X and Y value columns. Empty columns are filled with default values (1, 2, 3, ... for Entry 1, 2, ...). In order for the data importing to be successful, to load the data, and then this block should be used on that Web component. The usage of the gotValue event in the Web component is unnecessary.")
    public void ImportFromWeb(Web web, String str, String str2) {
        importFromWebAsync(web, YailList.makeList(Arrays.asList(str, str2)));
    }

    public void Initialize() {
        this.initialized = true;
        DataSource dataSource = this.dataSource;
        if (dataSource != null) {
            Source(dataSource);
        } else {
            ElementsFromPairs(this.elements);
        }
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this.container.$form();
    }

    @Override // com.google.appinventor.components.runtime.DataSourceChangeListener
    public void onDataSourceValueChange(final DataSource<?, ?> dataSource, final String str, final Object obj) {
        if (dataSource == this.dataSource && isKeyValid(str)) {
            this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.14
                @Override // java.lang.Runnable
                public void run() {
                    if (DataCollection.this.lastDataSourceValue instanceof List) {
                        DataCollection dataCollection = DataCollection.this;
                        dataCollection.dataModel.removeValues((List) dataCollection.lastDataSourceValue);
                    }
                    DataCollection.this.updateCurrentDataSourceValue(dataSource, str, obj);
                    if (DataCollection.this.lastDataSourceValue instanceof List) {
                        DataCollection dataCollection2 = DataCollection.this;
                        dataCollection2.dataModel.importFromList((List) dataCollection2.lastDataSourceValue);
                    }
                    DataCollection.this.onDataChange();
                }
            });
        }
    }

    @Override // com.google.appinventor.components.runtime.DataSourceChangeListener
    public void onReceiveValue(RealTimeDataSource<?, ?> realTimeDataSource, String str, final Object obj) {
        boolean zIsKeyValid;
        if (realTimeDataSource != this.dataSource) {
            return;
        }
        if (realTimeDataSource instanceof BluetoothClient) {
            String str2 = (String) obj;
            zIsKeyValid = str2.startsWith(this.dataSourceKey);
            if (zIsKeyValid) {
                obj = str2.substring(this.dataSourceKey.length());
            }
        } else {
            zIsKeyValid = isKeyValid(str);
        }
        if (zIsKeyValid) {
            this.container.$context().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.DataCollection.15
                @Override // java.lang.Runnable
                public void run() {
                    DataCollection dataCollection = DataCollection.this;
                    C c = dataCollection.container;
                    if (c instanceof Chart) {
                        dataCollection.tick = ((Chart) c).getSyncedTValue(dataCollection.tick);
                        DataCollection.this.dataModel.addTimeEntry(YailList.makeList(Arrays.asList(Integer.valueOf(DataCollection.this.tick), obj)));
                        DataCollection.this.onDataChange();
                        DataCollection.this.tick++;
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentDataSourceValue(DataSource<?, ?> dataSource, String str, Object obj) {
        if (dataSource == this.dataSource && isKeyValid(str)) {
            if (dataSource instanceof Web) {
                this.lastDataSourceValue = this.dataModel.getTuplesFromColumns(((Web) dataSource).getColumns(YailList.makeList((List) this.webColumns)), true);
            } else if (dataSource instanceof Spreadsheet) {
                this.lastDataSourceValue = this.dataModel.getTuplesFromColumns(((Spreadsheet) dataSource).getColumns(YailList.makeList((List) this.sheetsColumns), this.useSheetHeaders), this.useSheetHeaders);
            } else {
                this.lastDataSourceValue = obj;
            }
        }
    }

    private boolean isKeyValid(String str) {
        return str == null || str.equals(this.dataSourceKey);
    }

    public static List<Double> castToDouble(List<?> list) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof Number) {
                arrayList.add(Double.valueOf(((Number) obj).doubleValue()));
            } else {
                try {
                    arrayList.add(Double.valueOf(Double.parseDouble(obj.toString())));
                } catch (NumberFormatException unused) {
                }
            }
        }
        return arrayList;
    }
}
