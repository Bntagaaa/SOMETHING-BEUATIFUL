.class public Lcom/google/appinventor/components/runtime/BarChartView;
.super Lcom/google/appinventor/components/runtime/AxisChartView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/AxisChartView<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        "Lcom/github/mikephil/charting/data/BarData;",
        "Lcom/github/mikephil/charting/charts/BarChart;",
        "Lcom/google/appinventor/components/runtime/BarChartView;",
        ">;"
    }
.end annotation


# static fields
.field private static final GROUP_SPACE:F = 0.08f

.field private static final START_X_VALUE:F


# instance fields
.field private barSpace:F

.field private barWidth:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AxisChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    const p1, 0x3e99999a    # 0.3f

    .line 34
    iput p1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barWidth:F

    .line 47
    new-instance p1, Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 50
    new-instance p1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {p1}, Lcom/github/mikephil/charting/data/BarData;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    move-object v1, p1

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BarChartView;->initializeDefaultSettings()V

    return-void
.end method

.method private recalculateBarSpaceAndWidth()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const v2, 0x3f6b851f    # 0.92f

    int-to-float v3, v0

    div-float/2addr v2, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v2

    .line 96
    iput v3, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    const v3, 0x3f666666    # 0.9f

    mul-float v2, v2, v3

    .line 97
    iput v2, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barWidth:F

    .line 100
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v2, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/BarData;

    iget v3, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barWidth:F

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/data/BarData;->setBarWidth(F)V

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setCenterAxisLabels(Z)V

    :cond_1
    return-void
.end method

.method private regroupBars()V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iget v1, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    const/4 v2, 0x0

    const v3, 0x3da3d70a    # 0.08f

    invoke-virtual {v0, v2, v3, v1}, Lcom/github/mikephil/charting/charts/BarChart;->groupBars(FFF)V

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 170
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMinimum(F)V

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v4, Lcom/github/mikephil/charting/charts/BarChart;

    .line 180
    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/BarData;

    iget v5, p0, Lcom/google/appinventor/components/runtime/BarChartView;->barSpace:F

    invoke-virtual {v4, v3, v5}, Lcom/github/mikephil/charting/data/BarData;->getGroupWidth(FF)F

    move-result v3

    int-to-float v1, v1

    mul-float v3, v3, v1

    add-float/2addr v3, v2

    .line 179
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisMaximum(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            "Lcom/github/mikephil/charting/data/BarData;",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "Lcom/google/appinventor/components/runtime/BarChartView;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/BarChartDataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0, v1, p0}, Lcom/google/appinventor/components/runtime/BarChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarData;Lcom/google/appinventor/components/runtime/BarChartView;)V

    .line 70
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BarChartView;->recalculateBarSpaceAndWidth()V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    return-object v0
.end method

.method public initializeDefaultSettings()V
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/AxisChartView;->initializeDefaultSettings()V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    return-void
.end method

.method public refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
            "Lcom/github/mikephil/charting/data/BarData;",
            "Lcom/github/mikephil/charting/charts/BarChart;",
            "Lcom/google/appinventor/components/runtime/BarChartView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/BarEntry;",
            ">;)V"
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 131
    instance-of v0, p1, Lcom/github/mikephil/charting/data/BarDataSet;

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Lcom/github/mikephil/charting/data/BarDataSet;

    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/BarDataSet;->setValues(Ljava/util/List;)V

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BarChartView;->regroupBars()V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarData;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarData;->notifyDataChanged()V

    .line 144
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->notifyDataSetChanged()V

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p1, Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    return-void
.end method
