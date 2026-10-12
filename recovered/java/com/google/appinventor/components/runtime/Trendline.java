package com.google.appinventor.components.runtime;

import android.graphics.DashPathEffect;
import android.util.Log;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.data.ScatterDataSet;
import com.google.appinventor.components.annotations.DesignerComponent;
import com.google.appinventor.components.annotations.DesignerProperty;
import com.google.appinventor.components.annotations.Options;
import com.google.appinventor.components.annotations.PropertyCategory;
import com.google.appinventor.components.annotations.SimpleEvent;
import com.google.appinventor.components.annotations.SimpleFunction;
import com.google.appinventor.components.annotations.SimpleProperty;
import com.google.appinventor.components.annotations.UsesLibraries;
import com.google.appinventor.components.common.BestFitModel;
import com.google.appinventor.components.common.ComponentCategory;
import com.google.appinventor.components.common.LOBFValues;
import com.google.appinventor.components.common.LinearRegression;
import com.google.appinventor.components.common.OptionList;
import com.google.appinventor.components.common.PropertyTypeConstants;
import com.google.appinventor.components.common.StrokeStyle;
import com.google.appinventor.components.common.TrendlineCalculator;
import com.google.appinventor.components.runtime.util.ExponentialRegression;
import com.google.appinventor.components.runtime.util.HasTrendline;
import com.google.appinventor.components.runtime.util.LogarithmicRegression;
import com.google.appinventor.components.runtime.util.QuadraticRegression;
import com.google.appinventor.components.runtime.util.YailDictionary;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@DesignerComponent(category = ComponentCategory.CHARTS, description = "A component that predicts a best fit model for a given data series.", iconName = "images/trendline.png", version = 1)
@UsesLibraries({"commons-math3.jar"})
/* loaded from: classes.dex */
public class Trendline implements ChartComponent, DataSourceChangeListener {
    private static final boolean DEBUG = false;
    private static final YailDictionary.KeyTransformer ENUM_KEY_TRANSFORMER = new YailDictionary.KeyTransformer() { // from class: com.google.appinventor.components.runtime.Trendline.1
        @Override // com.google.appinventor.components.runtime.util.YailDictionary.KeyTransformer
        public Object transform(Object obj) {
            return obj instanceof OptionList ? ((OptionList) obj).toUnderlyingValue() : obj;
        }
    };
    private static final String LOG_TAG = "Trendline";
    private final Chart container;
    private TrendlineCalculator currentModel;
    private final DashPathEffect dashed;
    private DataModel<?> dataModel;
    private final float density;
    private final DashPathEffect dotted;
    private final ExponentialRegression exponentialRegression;
    private boolean initialized;
    private java.util.Map<String, Object> lastResults;
    private final LogarithmicRegression logarithmicRegression;
    private double maxX;
    private double minX;
    private final QuadraticRegression quadraticRegression;
    private final LinearRegression regression;
    private ChartData2D chartData = null;
    private int color = 0;
    private boolean extend = true;
    private BestFitModel model = BestFitModel.Linear;
    private double strokeWidth = 1.0d;
    private StrokeStyle strokeStyle = StrokeStyle.Solid;
    private boolean visible = true;

    @Override // com.google.appinventor.components.runtime.DataSourceChangeListener
    public void onReceiveValue(RealTimeDataSource<?, ?> realTimeDataSource, String str, Object obj) {
    }

    public Trendline(Chart chart) {
        LinearRegression linearRegression = new LinearRegression();
        this.regression = linearRegression;
        this.quadraticRegression = new QuadraticRegression();
        this.exponentialRegression = new ExponentialRegression();
        this.logarithmicRegression = new LogarithmicRegression();
        this.currentModel = linearRegression;
        this.lastResults = new HashMap();
        this.initialized = false;
        this.dataModel = null;
        this.minX = Double.POSITIVE_INFINITY;
        this.maxX = Double.NEGATIVE_INFINITY;
        float fDeviceDensity = chart.$form().deviceDensity();
        this.density = fDeviceDensity;
        this.container = chart;
        chart.addDataComponent(this);
        this.dashed = new DashPathEffect(new float[]{fDeviceDensity * 10.0f, fDeviceDensity * 10.0f}, 0.0f);
        this.dotted = new DashPathEffect(new float[]{2.0f * fDeviceDensity, fDeviceDensity * 10.0f}, 0.0f);
    }

    public void Initialize() {
        this.initialized = true;
        if (this.dataModel == null) {
            initChartData();
        }
    }

    @Override // com.google.appinventor.components.runtime.Component
    public HandlesEventDispatching getDispatchDelegate() {
        return this.container.getDispatchDelegate();
    }

    @Override // com.google.appinventor.components.runtime.DataSourceChangeListener
    public void onDataSourceValueChange(DataSource<?, ?> dataSource, String str, Object obj) {
        this.lastResults.clear();
        Object dataValue = dataSource.getDataValue(null);
        if (dataValue instanceof List) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            this.minX = Double.POSITIVE_INFINITY;
            this.maxX = Double.NEGATIVE_INFINITY;
            for (Object obj2 : (List) dataValue) {
                if (obj2 instanceof Entry) {
                    double x = ((Entry) obj2).getX();
                    if (x < this.minX) {
                        this.minX = x;
                    }
                    if (x > this.maxX) {
                        this.maxX = x;
                    }
                    arrayList.add(Double.valueOf(x));
                    arrayList2.add(Double.valueOf(r0.getY()));
                }
            }
            if (arrayList.isEmpty()) {
                Log.w(LOG_TAG, "No entries in the data source");
                return;
            }
            if (arrayList.size() < 2) {
                Log.w(LOG_TAG, "Not enough entries in the data source");
                return;
            }
            if (arrayList.size() != arrayList2.size()) {
                Log.w(LOG_TAG, "Must have equal X and Y data points");
                return;
            }
            this.lastResults = this.currentModel.compute(arrayList, arrayList2);
            if (this.initialized) {
                final YailDictionary yailDictionary = new YailDictionary(this.lastResults, ENUM_KEY_TRANSFORMER);
                this.container.$form().runOnUiThread(new Runnable() { // from class: com.google.appinventor.components.runtime.Trendline.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Trendline.this.Updated(yailDictionary);
                        if (Trendline.this.visible) {
                            Trendline.this.container.getChartView().getView().invalidate();
                        }
                    }
                });
            }
        }
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The data series for which to compute the line of best fit.")
    @DesignerProperty(editorType = "component:com.google.appinventor.component.runtime.ChartData2D")
    public void ChartData(ChartData2D chartData2D) {
        ChartData2D chartData2D2 = this.chartData;
        if (chartData2D2 != null) {
            chartData2D2.removeDataSourceChangeListener(this);
        }
        this.chartData = chartData2D;
        if (chartData2D != null) {
            chartData2D.addDataSourceChangeListener(this);
        }
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The color of the line of best fit.")
    @DesignerProperty(defaultValue = Component.DEFAULT_VALUE_COLOR_DEFAULT, editorType = PropertyTypeConstants.PROPERTY_TYPE_COLOR)
    public void Color(int i) {
        this.color = i;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public int Color() {
        return this.color;
    }

    @SimpleProperty
    public double CorrelationCoefficient() {
        return resultOrNan((Double) this.lastResults.get("correlation coefficient"));
    }

    @SimpleProperty
    public double ExponentialBase() {
        return resultOrNan((Double) this.lastResults.get("b"));
    }

    @SimpleProperty
    public double ExponentialCoefficient() {
        return resultOrNan((Double) this.lastResults.get("a"));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "Whether to extend the line of best fit beyond the data.")
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Extend(boolean z) {
        this.extend = z;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public boolean Extend() {
        return this.extend;
    }

    @SimpleProperty
    public double LinearCoefficient() {
        return resultOrNan((Double) this.lastResults.get("slope"));
    }

    @SimpleProperty
    public double LogarithmCoefficient() {
        return resultOrNan((Double) this.lastResults.get("b"));
    }

    @SimpleProperty
    public double LogarithmConstant() {
        return resultOrNan((Double) this.lastResults.get("a"));
    }

    @SimpleProperty(category = PropertyCategory.BEHAVIOR, description = "The model to use for the line of best fit.")
    @DesignerProperty(defaultValue = "Linear", editorType = PropertyTypeConstants.PROPERTY_TYPE_BEST_FIT_MODEL)
    public void Model(BestFitModel bestFitModel) {
        this.model = bestFitModel;
        int i = AnonymousClass3.$SwitchMap$com$google$appinventor$components$common$BestFitModel[bestFitModel.ordinal()];
        if (i == 1) {
            this.currentModel = this.regression;
        } else if (i == 2) {
            this.currentModel = this.quadraticRegression;
        } else if (i == 3) {
            this.currentModel = this.exponentialRegression;
        } else if (i == 4) {
            this.currentModel = this.logarithmicRegression;
        } else {
            throw new IllegalArgumentException("Unknown model: " + bestFitModel);
        }
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public BestFitModel Model() {
        return this.model;
    }

    @SimpleProperty
    public List<Double> Predictions() {
        Object obj = this.lastResults.get("predictions");
        if (obj instanceof List) {
            return (List) obj;
        }
        return new ArrayList();
    }

    @SimpleProperty
    public double QuadraticCoefficient() {
        return resultOrZero((Double) this.lastResults.get("x^2"));
    }

    @SimpleProperty
    public YailDictionary Results() {
        return new YailDictionary(this.lastResults, ENUM_KEY_TRANSFORMER);
    }

    @SimpleProperty
    public double RSquared() {
        return resultOrNan((Double) this.lastResults.get("r^2"));
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The style of the best fit line.")
    @DesignerProperty(defaultValue = "1", editorType = PropertyTypeConstants.PROPERTY_TYPE_STROKE_STYLE)
    public void StrokeStyle(StrokeStyle strokeStyle) {
        this.strokeStyle = strokeStyle;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    public void StrokeStyle(int i) {
        StrokeStyle strokeStyleFromUnderlyingValue = StrokeStyle.fromUnderlyingValue(Integer.valueOf(i));
        if (strokeStyleFromUnderlyingValue != null) {
            StrokeStyle(strokeStyleFromUnderlyingValue);
        }
    }

    public void StrokeStyle(String str) {
        try {
            StrokeStyle(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
        }
    }

    @SimpleProperty
    public StrokeStyle StrokeStyle() {
        return this.strokeStyle;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE, description = "The width of the best fit line.")
    @DesignerProperty(defaultValue = "1.0", editorType = PropertyTypeConstants.PROPERTY_TYPE_NON_NEGATIVE_FLOAT)
    public void StrokeWidth(double d) {
        this.strokeWidth = d;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public double StrokeWidth() {
        return this.strokeWidth;
    }

    @SimpleProperty(category = PropertyCategory.APPEARANCE)
    @DesignerProperty(defaultValue = "True", editorType = PropertyTypeConstants.PROPERTY_TYPE_BOOLEAN)
    public void Visible(boolean z) {
        this.visible = z;
        if (this.initialized) {
            this.container.refresh();
        }
    }

    @SimpleProperty
    public boolean Visible() {
        return this.visible;
    }

    @SimpleProperty
    public Object XIntercepts() {
        Object obj = this.lastResults.get("Xintercepts");
        return obj == null ? Double.valueOf(Double.NaN) : obj;
    }

    @SimpleProperty
    public double YIntercept() {
        if (this.lastResults.containsKey("Yintercept")) {
            return ((Double) this.lastResults.get("Yintercept")).doubleValue();
        }
        if (this.lastResults.containsKey("intercept")) {
            return ((Double) this.lastResults.get("intercept")).doubleValue();
        }
        return Double.NaN;
    }

    @SimpleFunction
    public void DisconnectFromChartData() {
        ChartData2D chartData2D = this.chartData;
        if (chartData2D != null) {
            chartData2D.removeDataSourceChangeListener(this);
        }
        this.lastResults.clear();
        this.container.refresh();
    }

    @SimpleFunction
    public Object GetResultValue(@Options(LOBFValues.class) String str) {
        if (this.lastResults.containsKey(str)) {
            return this.lastResults.get(str);
        }
        return Double.valueOf(Double.NaN);
    }

    @SimpleEvent
    public void Updated(YailDictionary yailDictionary) {
        EventDispatcher.dispatchEvent(this, "Updated", yailDictionary);
    }

    @Override // com.google.appinventor.components.runtime.ChartComponent
    public void initChartData() {
        Log.d(LOG_TAG, "initChartData view is " + this.container.getChartView());
        if (this.container.getChartView() instanceof ScatterChartView) {
            this.dataModel = new ScatterChartBestFitModel();
        } else if (this.container.getChartView() instanceof PointChartView) {
            this.dataModel = new LineChartBestFitModel();
        }
    }

    /* renamed from: com.google.appinventor.components.runtime.Trendline$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$BestFitModel;
        static final /* synthetic */ int[] $SwitchMap$com$google$appinventor$components$common$StrokeStyle;

        static {
            int[] iArr = new int[StrokeStyle.values().length];
            $SwitchMap$com$google$appinventor$components$common$StrokeStyle = iArr;
            try {
                iArr[StrokeStyle.Dashed.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$StrokeStyle[StrokeStyle.Dotted.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$StrokeStyle[StrokeStyle.Solid.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[BestFitModel.values().length];
            $SwitchMap$com$google$appinventor$components$common$BestFitModel = iArr2;
            try {
                iArr2[BestFitModel.Linear.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$BestFitModel[BestFitModel.Quadratic.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$BestFitModel[BestFitModel.Exponential.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$appinventor$components$common$BestFitModel[BestFitModel.Logarithmic.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DashPathEffect getDashPathEffect() {
        int i = AnonymousClass3.$SwitchMap$com$google$appinventor$components$common$StrokeStyle[this.strokeStyle.ordinal()];
        if (i == 1) {
            return this.dashed;
        }
        if (i != 2) {
            return null;
        }
        return this.dotted;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float[] getPoints(float f, float f2, int i) {
        if (!this.initialized || this.chartData == null) {
            return new float[0];
        }
        if (!this.extend) {
            f = Math.max(f, (float) this.minX);
            f2 = Math.min(f2, (float) this.maxX);
        }
        float f3 = f;
        float f4 = f2;
        int i2 = AnonymousClass3.$SwitchMap$com$google$appinventor$components$common$StrokeStyle[this.strokeStyle.ordinal()];
        int i3 = 1;
        if (i2 == 1) {
            i3 = 20;
        } else if (i2 == 2) {
            i3 = 12;
        }
        return this.currentModel.computePoints(this.lastResults, f3, f4, i, (int) Math.ceil(i / (this.density * i3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColor() {
        ChartData2D chartData2D;
        int i = this.color;
        if (i != 0 || (chartData2D = this.chartData) == null) {
            return i;
        }
        int iColor = chartData2D.Color();
        return (iColor & 16777215) | ((((iColor >> 24) & 255) / 2) << 24);
    }

    private static double resultOrNan(Double d) {
        if (d == null) {
            return Double.NaN;
        }
        return d.doubleValue();
    }

    private static double resultOrZero(Double d) {
        if (d == null) {
            return 0.0d;
        }
        return d.doubleValue();
    }

    public class ScatterChartBestFitDataSet extends ScatterDataSet implements HasTrendline<Entry> {
        public ScatterChartBestFitDataSet() {
            super(new ArrayList(), "Best Fit");
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float[] getPoints(float f, float f2, int i) {
            return Trendline.this.getPoints(f, f2, i);
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public int getColor() {
            return Trendline.this.getColor();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public DashPathEffect getDashPathEffect() {
            return Trendline.this.getDashPathEffect();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float getLineWidth() {
            return Trendline.this.container.$form().deviceDensity() * ((float) Trendline.this.strokeWidth);
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public boolean isVisible() {
            return Trendline.this.visible;
        }

        public String toString() {
            if (Trendline.this.chartData != null) {
                return ((ChartDataModel) Trendline.this.chartData.dataModel).dataset.toString();
            }
            return super.toString();
        }
    }

    public class ScatterChartBestFitModel extends ScatterChartDataModel {
        public ScatterChartBestFitModel() {
            super(Trendline.this.container.getChartView().data, (ScatterChartView) Trendline.this.container.getChartView(), Trendline.this.new ScatterChartBestFitDataSet());
        }
    }

    public class LineChartBestFitDataSet extends LineDataSet implements HasTrendline<Entry> {
        public LineChartBestFitDataSet() {
            super(new ArrayList(), "Best Fit");
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float[] getPoints(float f, float f2, int i) {
            return Trendline.this.getPoints(f, f2, i);
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public int getColor() {
            return Trendline.this.getColor();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public DashPathEffect getDashPathEffect() {
            return Trendline.this.getDashPathEffect();
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public float getLineWidth() {
            return Trendline.this.container.$form().deviceDensity() * ((float) Trendline.this.strokeWidth);
        }

        @Override // com.google.appinventor.components.runtime.util.HasTrendline
        public boolean isVisible() {
            return Trendline.this.visible;
        }

        public String toString() {
            if (Trendline.this.chartData != null) {
                return ((ChartDataModel) Trendline.this.chartData.dataModel).dataset.toString();
            }
            return super.toString();
        }
    }

    public class LineChartBestFitModel extends LineChartDataModel {
        public LineChartBestFitModel() {
            super(Trendline.this.container.getChartView().data, (LineChartView) Trendline.this.container.getChartView(), Trendline.this.new LineChartBestFitDataSet());
        }
    }
}
