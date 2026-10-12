.class public Lcom/google/appinventor/components/runtime/PieChartView;
.super Lcom/google/appinventor/components/runtime/ChartView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/ChartView<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
        "Lcom/github/mikephil/charting/data/PieData;",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        "Lcom/google/appinventor/components/runtime/PieChartView;",
        ">;"
    }
.end annotation


# instance fields
.field private bottomOffset:F

.field private final legendEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final pieCharts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/charts/PieChart;",
            ">;"
        }
    .end annotation
.end field

.field private pieHoleRadius:I

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartView;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    .line 65
    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->rootView:Landroid/widget/RelativeLayout;

    .line 66
    new-instance p1, Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    .line 69
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartView;->initializeDefaultSettings()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/google/appinventor/components/runtime/PieChartView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    return-object p0
.end method

.method private changePieChartRadius(Lcom/github/mikephil/charting/charts/PieChart;FZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 265
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 266
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    const/4 p2, 0x1

    .line 270
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    return-void

    .line 273
    :cond_0
    iget p3, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    if-nez p3, :cond_1

    const/4 p2, 0x0

    .line 274
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawHoleEnabled(Z)V

    return-void

    :cond_1
    int-to-float v0, p3

    sub-float/2addr p2, v0

    int-to-float p3, p3

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    mul-float p2, p2, p3

    .line 297
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setTransparentCircleRadius(F)V

    .line 298
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/charts/PieChart;->setHoleRadius(F)V

    return-void
.end method

.method private changePieChartSize(Lcom/github/mikephil/charting/charts/PieChart;II)V
    .locals 1

    .line 311
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 315
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 316
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 317
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createPieChartRing()Lcom/github/mikephil/charting/charts/PieChart;
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/charts/PieChart;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 117
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 122
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/PieChartView;->setPieChartProperties(Lcom/github/mikephil/charting/charts/PieChart;)V

    .line 127
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 130
    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/PieChart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private setPieChartProperties(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setDrawEntryLabels(Z)V

    return-void
.end method

.method private updatePieChartRingOffset(Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    if-ne v0, p1, :cond_0

    .line 346
    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    iget v0, v0, Lcom/github/mikephil/charting/components/Legend;->mNeededHeight:F

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertPixelsToDp(F)F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    div-float/2addr v0, v1

    .line 347
    iput v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    const/high16 v1, 0x41c80000    # 25.0f

    .line 348
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    .line 364
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->bottomOffset:F

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->setExtraBottomOffset(F)V

    .line 365
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/PieChart;->calculateOffsets()V

    return-void
.end method


# virtual methods
.method public addLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartView$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/PieChartView$1;-><init>(Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/components/LegendEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createChartModel()Lcom/google/appinventor/components/runtime/ChartDataModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            "Lcom/github/mikephil/charting/data/PieData;",
            "Lcom/github/mikephil/charting/charts/PieChart;",
            "Lcom/google/appinventor/components/runtime/PieChartView;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PieChartView;->createPieChartRing()Lcom/github/mikephil/charting/charts/PieChart;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartDataModel;

    new-instance v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-direct {v2}, Lcom/github/mikephil/charting/data/PieData;-><init>()V

    invoke-direct {v1, v2, p0, v0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;-><init>(Lcom/github/mikephil/charting/data/PieData;Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/charts/PieChart;)V

    return-object v1
.end method

.method public getLegendEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initializeDefaultSettings()V
    .locals 2

    .line 74
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/ChartView;->initializeDefaultSettings()V

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setDrawInside(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/Legend;->setCustom(Ljava/util/List;)V

    return-void
.end method

.method public refresh(Lcom/google/appinventor/components/runtime/ChartDataModel;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ChartDataModel<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
            "Lcom/github/mikephil/charting/data/PieData;",
            "Lcom/github/mikephil/charting/charts/PieChart;",
            "Lcom/google/appinventor/components/runtime/PieChartView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/data/PieEntry;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 156
    instance-of v1, v0, Lcom/github/mikephil/charting/data/PieDataSet;

    if-eqz v1, :cond_0

    .line 157
    check-cast v0, Lcom/github/mikephil/charting/data/PieDataSet;

    invoke-virtual {v0, p2}, Lcom/github/mikephil/charting/data/PieDataSet;->setValues(Ljava/util/List;)V

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    check-cast p2, Lcom/github/mikephil/charting/charts/PieChart;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/charts/PieChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->legendEntries:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/github/mikephil/charting/components/Legend;->setCustom(Ljava/util/List;)V

    .line 164
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/PieChart;

    .line 168
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartView;->chart:Lcom/github/mikephil/charting/charts/Chart;

    if-eq v0, v1, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    :cond_1
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieData;->notifyDataChanged()V

    .line 176
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->notifyDataSetChanged()V

    .line 180
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/PieChartView;->updatePieChartRingOffset(Lcom/github/mikephil/charting/charts/PieChart;)V

    .line 184
    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeLegendEntries(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 414
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartView$3;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/PieChartView$3;-><init>(Lcom/google/appinventor/components/runtime/PieChartView;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartView;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/PieChartView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/PieChartView$2;-><init>(Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/components/LegendEntry;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resizePieRings()V
    .locals 10

    .line 207
    iget v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x3f400000    # 0.75f

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 212
    iget v2, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    mul-float v2, v2, v0

    sub-float v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 220
    :goto_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 221
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/charts/PieChart;

    .line 225
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieCharts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-ne v3, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 226
    :goto_1
    invoke-direct {p0, v6, v0, v8}, Lcom/google/appinventor/components/runtime/PieChartView;->changePieChartRadius(Lcom/github/mikephil/charting/charts/PieChart;FZ)V

    if-eqz v3, :cond_1

    div-float v7, v0, v1

    int-to-float v4, v4

    mul-float v4, v4, v7

    float-to-int v4, v4

    int-to-float v5, v5

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 241
    invoke-direct {p0, v6, v4, v5}, Lcom/google/appinventor/components/runtime/PieChartView;->changePieChartSize(Lcom/github/mikephil/charting/charts/PieChart;II)V

    goto :goto_2

    .line 244
    :cond_1
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getHeight()I

    move-result v4

    .line 245
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->getWidth()I

    move-result v5

    move v9, v5

    move v5, v4

    move v4, v9

    .line 249
    :goto_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/PieChart;->invalidate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setPieRadius(I)V
    .locals 1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    sub-int/2addr v0, p1

    .line 439
    iput v0, p0, Lcom/google/appinventor/components/runtime/PieChartView;->pieHoleRadius:I

    .line 442
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartView;->resizePieRings()V

    return-void
.end method
