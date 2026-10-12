.class public abstract Lcom/google/appinventor/components/runtime/LineChartViewBase;
.super Lcom/google/appinventor/components/runtime/PointChartView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/google/appinventor/components/runtime/LineChartViewBase<",
        "TV;>;>",
        "Lcom/google/appinventor/components/runtime/PointChartView<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;",
        "Lcom/github/mikephil/charting/data/LineData;",
        "Lcom/github/mikephil/charting/charts/LineChart;",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 4

    .line 30
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 32
    new-instance p1, Lcom/github/mikephil/charting/charts/LineChart;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    new-instance v0, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    move-object v2, v1

    check-cast v2, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    check-cast v1, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/LineChart;->getAnimator()Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v3, Lcom/github/mikephil/charting/charts/LineChart;

    .line 34
    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getViewPortHandler()Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/google/appinventor/components/runtime/util/LineWithTrendlineRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 33
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setRenderer(Lcom/github/mikephil/charting/renderer/DataRenderer;)V

    .line 36
    new-instance p1, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {p1}, Lcom/github/mikephil/charting/data/LineData;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 37
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    move-object v1, p1

    check-cast v1, Lcom/github/mikephil/charting/data/LineData;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PointChartView;->initializeDefaultSettings()V

    return-void
.end method
