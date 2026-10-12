.class public Lcom/google/appinventor/components/runtime/PieChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
        "Lcom/github/mikephil/charting/data/PieData;",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        "Lcom/google/appinventor/components/runtime/PieChartView;",
        ">;"
    }
.end annotation


# instance fields
.field private final legendEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/PieData;Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/charts/PieChart;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 53
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v1, Lcom/github/mikephil/charting/data/PieData;

    check-cast v0, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/PieData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 57
    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->setDefaultStylingProperties()V

    .line 60
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    return-void
.end method

.method private updateLegendColors()V
    .locals 4

    const/4 v0, 0x0

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v0, v1

    .line 234
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v0}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 81
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColors()Ljava/util/List;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr p1, v2

    .line 90
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 94
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast p1, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/PieChartView;->addLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V

    :cond_0
    return-void
.end method

.method public areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3

    .line 207
    instance-of v0, p1, Lcom/github/mikephil/charting/data/PieEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    .line 213
    check-cast p2, Lcom/github/mikephil/charting/data/PieEntry;

    .line 215
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public clearEntries()V
    .locals 2

    .line 116
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->clearEntries()V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/PieChartView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->removeLegendEntries(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    const-string v3, "GetEntryFromTuple"

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    :try_start_1
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 138
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-direct {v7, v6, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v7

    .line 141
    :catch_0
    :try_start_2
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/PieChartView;

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

    .line 151
    :catch_1
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PieChartView;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/ChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    .line 154
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

    .line 151
    invoke-virtual {v4, v5, v3, p1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :catch_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast p1, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/ChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/PieChartView;

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

    .line 163
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    .line 167
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Serializable;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public removeEntry(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 107
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/PieChartView;->removeLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V

    .line 110
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->updateLegendColors()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->setColors(Ljava/util/List;)V

    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 186
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->setColors(Ljava/util/List;)V

    .line 190
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->updateLegendColors()V

    return-void
.end method

.method public setDefaultStylingProperties()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v1, v0, Lcom/github/mikephil/charting/data/PieDataSet;

    if-eqz v1, :cond_0

    .line 175
    check-cast v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    :cond_0
    return-void
.end method
