package com.google.appinventor.components.runtime;

import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.runtime.util.YailList;
import gnu.lists.LList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

@DesignerComponent(category = ComponentCategory.CHARTS, description = "A component that holds (x, y)-coordinate based data", iconName = "images/web.png", version = 1)
@SimpleObject
/* loaded from: classes.dex */
public final class ChartData2D extends ChartDataBase {
    public ChartData2D(Chart chart) {
        super(chart);
    }

    @SimpleFunction
    public void AddEntry(final String str, final String str2) {
        synchronized (this) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.ChartData2D.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ((ChartDataModel) ChartData2D.this.dataModel).addEntryFromTuple(YailList.makeList(Arrays.asList(str, str2)));
                        ChartData2D.this.onDataChange();
                        synchronized (ChartData2D.this) {
                            atomicBoolean.set(true);
                            ChartData2D.this.notifyAll();
                        }
                    } catch (Throwable th) {
                        synchronized (ChartData2D.this) {
                            atomicBoolean.set(true);
                            ChartData2D.this.notifyAll();
                            throw th;
                        }
                    }
                }
            });
            try {
                if (!atomicBoolean.get()) {
                    wait();
                }
            } catch (InterruptedException unused) {
            }
        }
    }

    @SimpleFunction
    public void RemoveEntry(final String str, final String str2) {
        synchronized (this) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            this.threadRunner.execute(new Runnable() { // from class: com.google.appinventor.components.runtime.ChartData2D.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        YailList yailListMakeList = YailList.makeList(Arrays.asList(str, str2));
                        int iFindEntryIndex = ((ChartDataModel) ChartData2D.this.dataModel).findEntryIndex(new Entry(Float.parseFloat(str), Float.parseFloat(str2)));
                        ((ChartDataModel) ChartData2D.this.dataModel).removeEntryFromTuple(yailListMakeList);
                        ChartData2D.this.resetHighlightAtIndex(iFindEntryIndex);
                        ChartData2D.this.onDataChange();
                        synchronized (ChartData2D.this) {
                            atomicBoolean.set(true);
                            ChartData2D.this.notifyAll();
                        }
                    } catch (Throwable th) {
                        synchronized (ChartData2D.this) {
                            atomicBoolean.set(true);
                            ChartData2D.this.notifyAll();
                            throw th;
                        }
                    }
                }
            });
            try {
                if (!atomicBoolean.get()) {
                    wait();
                }
            } catch (InterruptedException unused) {
            }
        }
    }

    @SimpleFunction(description = "Checks whether an (x, y) entry exists in the Coordinate Data.Returns true if the Entry exists, and false otherwise.")
    public boolean DoesEntryExist(final String str, final String str2) {
        try {
            return ((Boolean) this.threadRunner.submit(new Callable<Boolean>() { // from class: com.google.appinventor.components.runtime.ChartData2D.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Boolean call() {
                    return Boolean.valueOf(((ChartDataModel) ChartData2D.this.dataModel).doesEntryExist(YailList.makeList(Arrays.asList(str, str2))));
                }
            }).get()).booleanValue();
        } catch (InterruptedException e) {
            Log.e(ChartData2D.class.getName(), e.getMessage());
            return false;
        } catch (ExecutionException e2) {
            Log.e(ChartData2D.class.getName(), e2.getMessage());
            return false;
        }
    }

    @SimpleFunction(description = "Draws the corresponding line of best fit on the graph")
    @Deprecated
    public void DrawLineOfBestFit(YailList yailList, YailList yailList2) {
        List list = (List) Regression.computeLineOfBestFit(DataCollection.castToDouble((LList) yailList.getCdr()), DataCollection.castToDouble((LList) yailList2.getCdr())).get("predictions");
        ArrayList arrayList = new ArrayList();
        List list2 = (List) yailList.getCdr();
        for (int i = 0; i < list2.size(); i++) {
            arrayList.add(Arrays.asList(list2.get(i), list.get(i)));
        }
        ((ChartDataModel) this.dataModel).importFromList(YailList.makeList((List) arrayList));
        if (((ChartDataModel) this.dataModel).getDataset() instanceof LineDataSet) {
            ((ChartDataModel) this.dataModel).getDataset().setDrawCircles(false);
            ((ChartDataModel) this.dataModel).getDataset().setDrawValues(false);
        }
        onDataChange();
    }

    public static class AnomalyManager {
        Set<Integer> indexes;
        Set<Double> xValues;

        public /* synthetic */ AnomalyManager(int i) {
            this();
        }

        private AnomalyManager() {
            this.indexes = new HashSet();
            this.xValues = new HashSet();
        }

        public String toString() {
            return "{indexes: " + this.indexes + ", xValues: " + this.xValues + "}";
        }
    }

    @SimpleFunction(description = "Highlights data points of choice on the Chart in the color of choice. This block expects a list of data points, each data point is an index, value pair")
    public void HighlightDataPoints(YailList yailList, int i) {
        LList lList = (LList) yailList.getCdr();
        if (!yailList.isEmpty()) {
            List entries = ((ChartDataModel) this.dataModel).getEntries();
            HashMap map = new HashMap();
            int i2 = 0;
            int i3 = 0;
            for (Entry entry : ((ChartDataModel) this.dataModel).getEntries()) {
                if (!map.containsKey(Double.valueOf(entry.getY()))) {
                    map.put(Double.valueOf(entry.getY()), new AnomalyManager(i2));
                }
                ((AnomalyManager) map.get(Double.valueOf(entry.getY()))).xValues.add(Double.valueOf(entry.getX()));
                ((AnomalyManager) map.get(Double.valueOf(entry.getY()))).indexes.add(Integer.valueOf(i3));
                i3++;
            }
            int[] iArr = new int[entries.size()];
            Arrays.fill(iArr, ((ChartDataModel) this.dataModel).getDataset().getColor());
            for (Object obj : lList) {
                if (obj instanceof YailList) {
                    YailList yailList2 = (YailList) obj;
                    AnomalyManager anomalyManager = (AnomalyManager) map.get(Double.valueOf(((Number) yailList2.getObject(1)).doubleValue()));
                    if (anomalyManager != null) {
                        Number number = (Number) yailList2.getObject(0);
                        if (anomalyManager.xValues.contains(Double.valueOf(number.doubleValue())) || anomalyManager.indexes.contains(Integer.valueOf(number.intValue() - 1))) {
                            Iterator<Integer> it = anomalyManager.indexes.iterator();
                            while (it.hasNext()) {
                                iArr[it.next().intValue()] = i;
                            }
                        }
                    }
                }
            }
            ((ChartDataModel) this.dataModel).getDataset().setCircleColors(iArr);
            onDataChange();
            return;
        }
        throw new IllegalStateException("Anomalies list is Empty. Nothing to highlight!");
    }

    public List<Double> getYValues() {
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ChartDataModel) this.dataModel).getEntries().iterator();
        while (it.hasNext()) {
            arrayList.add(Double.valueOf(((Entry) it.next()).getY()));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetHighlightAtIndex(int i) {
        ((ChartDataModel) this.dataModel).getDataset().getCircleColors().remove(i);
    }
}
