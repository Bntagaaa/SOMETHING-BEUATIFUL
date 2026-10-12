.class public abstract Lcom/google/appinventor/components/runtime/ChartDataModel;
.super Lcom/google/appinventor/components/runtime/DataModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "TE;>;D:",
        "Lcom/github/mikephil/charting/data/ChartData<",
        "TT;>;C:",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TD;>;V:",
        "Lcom/google/appinventor/components/runtime/ChartView<",
        "TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected data:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected view:Lcom/google/appinventor/components/runtime/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/DataModel;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 51
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 0

    .line 399
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result p1

    return p1
.end method

.method public clearEntries()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public doesEntryExist(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 214
    invoke-virtual {p0, v2, p2, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/DataModel;->getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .locals 2

    const/4 v0, 0x0

    .line 309
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 315
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .line 230
    const-string v0, "0"

    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTupleSize()I
.end method

.method public isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z
    .locals 6

    .line 245
    sget-object v0, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 284
    :try_start_0
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 285
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v3

    .line 292
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown criterion: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_2
    instance-of p2, p1, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz p2, :cond_3

    .line 256
    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    .line 257
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 263
    :cond_3
    :try_start_1
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 264
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result p3

    .line 269
    instance-of p1, p1, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz p1, :cond_4

    float-to-double v4, p3

    .line 270
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    double-to-float p3, v4

    :cond_4
    cmpl-float p1, p3, p2

    if-nez p1, :cond_5

    return v1

    :catch_0
    :cond_5
    return v3

    :cond_6
    return v1
.end method

.method public removeEntry(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result p1

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntry(I)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v1, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v1, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColors(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setDefaultStylingProperties()V
    .locals 0

    return-void
.end method

.method public setElements(Ljava/lang/String;)V
    .locals 6

    .line 123
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleSize()I

    move-result v0

    .line 126
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v0, -0x1

    move v2, v1

    .line 133
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1
    if-ltz v4, :cond_0

    sub-int v5, v2, v4

    .line 140
    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 144
    :cond_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method public setMaximumTimeEntries(I)V
    .locals 0

    .line 358
    iput p1, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    return-void
.end method
