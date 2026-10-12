package com.google.appinventor.components.runtime;

import android.app.Activity;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleObject;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.ChartType;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.runtime.util.ElementsUtil;
import com.google.appinventor.components.runtime.util.OnInitializeListener;
import com.google.appinventor.components.runtime.util.YailList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@DesignerComponent(category = ComponentCategory.CHARTS, description = "A component that allows visualizing data", version = 3)
@UsesLibraries(libraries = "mpandroidchart.jar")
@SimpleObject
/* loaded from: classes.dex */
public class Chart extends AndroidViewComponent implements ComponentContainer, OnInitializeListener {
    private int backgroundColor;
    private ChartView<?, ?, ?, ?, ?> chartView;
    private final List<ChartComponent> dataComponents;
    private String description;
    private boolean gridEnabled;
    private YailList labels;
    private boolean legendEnabled;
    private int pieRadius;
    private int tick;
    private ChartType type;
    private final RelativeLayout view;
    private boolean zeroX;
    private boolean zeroY;

    public Chart(ComponentContainer componentContainer) {
        super(componentContainer);
        this.tick = 1;
        this.view = new RelativeLayout(componentContainer.$context());
        componentContainer.$add(this);
        this.dataComponents = new ArrayList();
        Type(ChartType.Line);
        Width(176);
        Height(144);
        BackgroundColor(0);
        Description("");
        PieRadius(100);
        LegendEnabled(true);
        GridEnabled(true);
        Labels(new YailList());
        XFromZero(false);
        YFromZero(false);
        $form().registerForOnInitialize(this);
    }

    @Override // com.google.appinventor.components.runtime.AndroidViewComponent
    public View getView() {
        return this.view;
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Activity $context() {
        return this.container.$context();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public Form $form() {
        return this.container.$form();
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void $add(AndroidViewComponent androidViewComponent) {
        throw new UnsupportedOperationException("ChartBase.$add() called");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildWidth(AndroidViewComponent androidViewComponent, int i) {
        throw new UnsupportedOperationException("ChartBase.setChildWidth called");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public void setChildHeight(AndroidViewComponent androidViewComponent, int i) {
        throw new UnsupportedOperationException("ChartBase.setChildHeight called");
    }

    @Override // com.google.appinventor.components.runtime.ComponentContainer
    public List<Component> getChildren() {
        return new ArrayList(this.dataComponents);
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Specifies the chart's type (area, bar, pie, scatter), which determines how to visualize the data.")
    public ChartType Type() {
        return this.type;
    }

    @DesignerProperty(defaultValue = "0", editorType = PropertyTypeConstants.PROPERTY_TYPE_CHART_TYPE)
    public void Type(ChartType chartType) {
        boolean z = this.chartView != null;
        ChartView<?, ?, ?, ?, ?> chartViewCreateChartViewFromType = createChartViewFromType(chartType);
        if (z) {
            this.view.removeView(this.chartView.getView());
        }
        this.type = chartType;
        this.chartView = chartViewCreateChartViewFromType;
        this.view.addView(chartViewCreateChartViewFromType.getView(), 0);
        if (z) {
            reinitializeChart();
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.Chart$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$ChartType;

        static {
            int[] iArr = new int[ChartType.values().length];
            $SwitchMap$com$google$appinventor$components$common$ChartType = iArr;
            try {
                iArr[ChartType.Line.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ChartType[ChartType.Scatter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ChartType[ChartType.Area.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ChartType[ChartType.Bar.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$ChartType[ChartType.Pie.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private ChartView<?, ?, ?, ?, ?> createChartViewFromType(ChartType chartType) {
        int i = AnonymousClass1.$SwitchMap$com$google$appinventor$components$common$ChartType[chartType.ordinal()];
        if (i == 1) {
            return new LineChartView(this);
        }
        if (i == 2) {
            return new ScatterChartView(this);
        }
        if (i == 3) {
            return new AreaChartView(this);
        }
        if (i == 4) {
            return new BarChartView(this);
        }
        if (i == 5) {
            return new PieChartView(this);
        }
        throw new IllegalArgumentException("Invalid Chart type specified: " + chartType);
    }

    private void reinitializeChart() {
        Iterator<ChartComponent> it = this.dataComponents.iterator();
        while (it.hasNext()) {
            it.next().initChartData();
        }
        Description(this.description);
        BackgroundColor(this.backgroundColor);
        LegendEnabled(this.legendEnabled);
        GridEnabled(this.gridEnabled);
        Labels(this.labels);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public String Description() {
        return this.description;
    }

    @SimpleProperty
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void Description(String str) {
        this.description = str;
        this.chartView.setDescription(str);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public int BackgroundColor() {
        return this.backgroundColor;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void BackgroundColor(int i) {
        if (i == 0) {
            i = $form().isDarkTheme() ? -16777216 : -1;
        }
        this.backgroundColor = i;
        this.chartView.setBackgroundColor(i);
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "Sets the Pie Radius of a Pie Chart from 0% to 100%, where the percentage indicates the percentage of the hole fill. 100% means that a full Pie Chart is drawn, while values closer to 0% correspond to hollow Pie Charts.", userVisible = false)
    @DesignerProperty(defaultValue = "100", editorType = PropertyTypeConstants.PROPERTY_TYPE_CHART_PIE_RADIUS)
    public void PieRadius(int i) {
        this.pieRadius = i;
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof PieChartView) {
            ((PieChartView) chartView).setPieRadius(i);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public boolean LegendEnabled() {
        return this.legendEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void LegendEnabled(boolean z) {
        this.legendEnabled = z;
        this.chartView.setLegendEnabled(z);
        this.view.invalidate();
        this.chartView.refresh();
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    public boolean GridEnabled() {
        return this.gridEnabled;
    }

    @SimpleProperty
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void GridEnabled(boolean z) {
        this.gridEnabled = z;
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            ((AxisChartView) chartView).setGridEnabled(z);
            this.view.invalidate();
            this.chartView.refresh();
        }
    }

    @SimpleProperty
    public YailList Labels() {
        return this.labels;
    }

    @SimpleProperty(description = "Changes the Chart's X axis labels to the specified List of Strings,  provided that the Chart Type is set to a Chart with an Axis (applies to Area, Bar, Line, Scatter Charts). The labels are applied in order, starting from the smallest x value on the Chart, and continuing in order. If a label is not specified for an x value, a default value is used (the x value of the axis tick at that location).")
    public void Labels(YailList yailList) {
        this.labels = yailList;
        if (this.chartView instanceof AxisChartView) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < yailList.size(); i++) {
                arrayList.add(yailList.getString(i));
            }
            ((AxisChartView) this.chartView).setLabels(arrayList);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, userVisible = false)
    @DesignerProperty(editorType = PropertyTypeConstants.PROPERTY_TYPE_STRING)
    public void LabelsFromString(String str) {
        Labels(ElementsUtil.elementsFromString(str));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void XFromZero(boolean z) {
        this.zeroX = z;
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            ((AxisChartView) chartView).setXMinimum(z);
        }
    }

    @SimpleProperty
    public boolean XFromZero() {
        return this.zeroX;
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR)
    @DesignerProperty(defaultValue = "False", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void YFromZero(boolean z) {
        this.zeroY = z;
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            ((AxisChartView) chartView).setYMinimum(z);
        }
    }

    @SimpleProperty
    public boolean YFromZero() {
        return this.zeroY;
    }

    @SimpleFunction
    public void ExtendDomainToInclude(double d) {
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            double[] xBounds = ((AxisChartView) chartView).getXBounds();
            double d2 = xBounds[0];
            if (d < d2) {
                ((AxisChartView) this.chartView).setXBounds(d, xBounds[1]);
            } else if (d <= xBounds[1]) {
                return;
            } else {
                ((AxisChartView) this.chartView).setXBounds(d2, d);
            }
            this.chartView.refresh();
        }
    }

    @SimpleFunction
    public void ExtendRangeToInclude(double d) {
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            double[] yBounds = ((AxisChartView) chartView).getYBounds();
            double d2 = yBounds[0];
            if (d < d2) {
                ((AxisChartView) this.chartView).setYBounds(d, yBounds[1]);
            } else if (d <= yBounds[1]) {
                return;
            } else {
                ((AxisChartView) this.chartView).setYBounds(d2, d);
            }
            this.chartView.refresh();
        }
    }

    @SimpleFunction
    public void ResetAxes() {
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            ((AxisChartView) chartView).resetAxes();
            refresh();
        }
    }

    @SimpleFunction
    public void SetDomain(double d, double d2) {
        this.zeroX = d == 0.0d;
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            ((AxisChartView) chartView).setXBounds(d, d2);
            refresh();
        }
    }

    @SimpleFunction
    public void SetRange(double d, double d2) {
        this.zeroY = d == 0.0d;
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof AxisChartView) {
            ((AxisChartView) chartView).setYBounds(d, d2);
            refresh();
        }
    }

    @SimpleEvent
    public void EntryClick(Component component, Object obj, double d) {
        EventDispatcher.dispatchEvent(this, "EntryClick", component, obj, Double.valueOf(d));
    }

    public ChartDataModel<?, ?, ?, ?, ?> createChartModel() {
        return this.chartView.createChartModel();
    }

    public void refresh() {
        this.chartView.refresh();
    }

    public ChartView<?, ?, ?, ?, ?> getChartView() {
        return this.chartView;
    }

    public void addDataComponent(ChartComponent chartComponent) {
        this.dataComponents.add(chartComponent);
    }

    @Override // com.google.appinventor.components.runtime.util.OnInitializeListener
    public void onInitialize() {
        ChartView<?, ?, ?, ?, ?> chartView = this.chartView;
        if (chartView instanceof PieChartView) {
            ((PieChartView) chartView).setPieRadius(this.pieRadius);
            this.chartView.refresh();
        }
    }

    public int getSyncedTValue(int i) {
        int i2 = this.tick;
        if (i2 - i > 1) {
            i = i2;
        }
        this.tick = i + 1;
        return i;
    }
}
