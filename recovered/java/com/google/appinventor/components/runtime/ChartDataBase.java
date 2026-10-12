package com.google.appinventor.components.runtime;

import android.view.MotionEvent;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.listener.OnChartGestureListener;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.common.LineType;
import com.google.appinventor.components.common.PointStyle;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ErrorMessages;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SimpleObject
/* loaded from: classes.dex */
public abstract class ChartDataBase extends DataCollection<Chart, ChartDataModel<?, ?, ?, ?, ?>> implements ChartComponent, OnChartGestureListener, OnChartValueSelectedListener {
    private int color;
    private YailList colors;
    private String label;

    public void onChartDoubleTapped(MotionEvent motionEvent) {
    }

    public void onChartFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
    }

    public void onChartGestureEnd(MotionEvent motionEvent, ChartTouchListener.ChartGesture chartGesture) {
    }

    public void onChartGestureStart(MotionEvent motionEvent, ChartTouchListener.ChartGesture chartGesture) {
    }

    public void onChartLongPressed(MotionEvent motionEvent) {
    }

    public void onChartScale(MotionEvent motionEvent, float f, float f2) {
    }

    public void onChartSingleTapped(MotionEvent motionEvent) {
    }

    public void onChartTranslate(MotionEvent motionEvent, float f, float f2) {
    }

    public void onNothingSelected() {
    }

    public ChartDataBase(Chart chart) {
        super(chart);
        chart.addDataComponent(this);
        initChartData();
        Color(-16777216);
        DataSourceKey("");
        Label("");
    }

    @Override // com.google.appinventor.components.runtime.ChartComponent
    public void initChartData() {
        ChartDataModel<?, ?, ?, ?, ?> chartDataModelCreateChartModel = ((Chart) this.container).createChartModel();
        this.dataModel = chartDataModelCreateChartModel;
        chartDataModelCreateChartModel.view.chart.setOnChartGestureListener(this);
        ((ChartDataModel) this.dataModel).view.chart.setOnChartValueSelectedListener(this);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int Color() {
        return this.color;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_BLACK, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void Color(int i) {
        this.color = i;
        ((ChartDataModel) this.dataModel).setColor(i);
        onDataChange();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public YailList Colors() {
        return this.colors;
    }

    @SimpleProperty
    public void Colors(YailList yailList) throws NumberFormatException {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < yailList.size(); i++) {
            String string = yailList.getString(i);
            try {
                long j = Long.parseLong(string);
                if (j > 2147483647L) {
                    j -= 4294967296L;
                }
                arrayList.add(Integer.valueOf((int) j));
            } catch (NumberFormatException unused) {
                ((Chart) this.container).$form().dispatchErrorOccurredEvent((Component) this.container, "Colors", ErrorMessages.ERROR_INVALID_CHART_DATA_COLOR, string);
            }
        }
        this.colors = YailList.makeList((List) arrayList);
        ((ChartDataModel) this.dataModel).setColors(arrayList);
        onDataChange();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Label() {
        return this.label;
    }

    @SimpleProperty
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Label(String str) {
        this.label = str;
        ((ChartDataModel) this.dataModel).setLabel(str);
        onDataChange();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_CHART_POINT_SHAPE)
    public void PointShape(PointStyle pointStyle) {
        M m = this.dataModel;
        if (m instanceof ScatterChartDataModel) {
            ((ScatterChartDataModel) m).setPointShape(pointStyle);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_CHART_LINE_TYPE)
    public void LineType(LineType lineType) {
        M m = this.dataModel;
        if (m instanceof LineChartBaseDataModel) {
            ((LineChartBaseDataModel) m).setLineType(lineType);
        }
    }

    @Override // com.google.appinventor.components.runtime.DataCollection
    public void onDataChange() {
        ((Chart) this.container).getChartView().refresh((ChartDataModel) this.dataModel);
        Iterator<DataSourceChangeListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onDataSourceValueChange(this, null, null);
        }
    }

    public void onValueSelected(final Entry entry, Highlight highlight) {
        ((Chart) this.container).$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.ChartDataBase.1
            @Override // java.lang.Runnable
            public void run() {
                PieEntry pieEntry = entry;
                if (pieEntry instanceof PieEntry) {
                    ChartDataBase.this.EntryClick(pieEntry.getLabel(), entry.getValue());
                } else {
                    ChartDataBase.this.EntryClick(Float.valueOf(pieEntry.getX()), entry.getY());
                }
            }
        });
    }

    @SimpleEvent
    public void EntryClick(Object obj, double d) {
        EventDispatcher.dispatchEvent(this, "EntryClick", obj, Double.valueOf(d));
        ((Chart) this.container).EntryClick(this, obj, d);
    }
}
