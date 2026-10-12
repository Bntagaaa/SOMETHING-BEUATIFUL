.class public Lcom/google/appinventor/components/runtime/BarChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        "Lcom/github/mikephil/charting/data/BarData;",
        "Lcom/github/mikephil/charting/charts/BarChart;",
        "Lcom/google/appinventor/components/runtime/BarChartView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/BarData;Lcom/google/appinventor/components/runtime/BarChartView;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 40
    new-instance p1, Lcom/github/mikephil/charting/data/BarDataSet;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 41
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast p2, Lcom/github/mikephil/charting/data/BarData;

    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {p2, p1}, Lcom/github/mikephil/charting/data/BarData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setDefaultStylingProperties()V

    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 5

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v0

    float-to-int v0, v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 78
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_2

    .line 79
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    new-instance v2, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 6

    .line 171
    instance-of v0, p1, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    const-string v3, "GetEntryFromTuple"

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 106
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 108
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v6, v6

    invoke-direct {v8, v6, v7}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v8

    .line 111
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v5, v8, v1

    const/16 v4, 0x1005

    invoke-virtual {v6, v7, v3, v4, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 121
    :catch_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;->getTupleSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v6, v0, v2

    aput-object p1, v0, v1

    const/16 p1, 0x1007

    .line 121
    invoke-virtual {v4, v5, v3, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    :catch_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast p1, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v1, 0x1006

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3

    .line 190
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public removeEntry(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    :cond_1
    return-void
.end method
