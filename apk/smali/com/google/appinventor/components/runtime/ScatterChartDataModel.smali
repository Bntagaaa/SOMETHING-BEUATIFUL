.class public Lcom/google/appinventor/components/runtime/ScatterChartDataModel;
.super Lcom/google/appinventor/components/runtime/PointChartDataModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/PointChartDataModel<",
        "Lcom/github/mikephil/charting/data/Entry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;",
        "Lcom/github/mikephil/charting/data/ScatterData;",
        "Lcom/github/mikephil/charting/charts/ScatterChart;",
        "Lcom/google/appinventor/components/runtime/ScatterChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;)V
    .locals 3

    .line 36
    new-instance v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;-><init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/mikephil/charting/data/ScatterData;Lcom/google/appinventor/components/runtime/ScatterChartView;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/PointChartDataModel;-><init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V

    .line 42
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 43
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterData;

    invoke-virtual {p1, p3}, Lcom/github/mikephil/charting/data/ScatterData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScatterChartDataModel;->setDefaultStylingProperties()V

    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 4

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    new-instance v1, Lcom/github/mikephil/charting/utils/EntryXComparator;

    invoke-direct {v1}, Lcom/github/mikephil/charting/utils/EntryXComparator;-><init>()V

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 80
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setDefaultStylingProperties()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v1, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v1, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    :cond_0
    return-void
.end method

.method public setPointShape(Lcom/google/appinventor/components/common/PointStyle;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/ScatterDataSet;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/ScatterChartDataModel$1;->$SwitchMap$com$google$appinventor$components$common$PointStyle:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->X:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown shape type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CROSS:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    return-void

    .line 115
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->TRIANGLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    return-void

    .line 111
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->SQUARE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    return-void

    .line 107
    :cond_5
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast p1, Lcom/github/mikephil/charting/data/ScatterDataSet;

    sget-object v0, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->CIRCLE:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->setScatterShape(Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;)V

    return-void
.end method
