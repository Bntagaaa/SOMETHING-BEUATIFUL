.class public abstract Lcom/google/appinventor/components/runtime/DataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected maximumTimeEntries:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 31
    iput v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/DataModel;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public abstract addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 0

    .line 381
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result p1

    return p1
.end method

.method public abstract clearEntries()V
.end method

.method public abstract doesEntryExist(Lcom/google/appinventor/components/runtime/util/YailList;)Z
.end method

.method public abstract findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getEntries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end method

.method public getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2

    .line 281
    const-string v0, "0"

    sget-object v1, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
.end method

.method public abstract getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
.end method

.method public abstract getTupleSize()I
.end method

.method public getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 6

    .line 188
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ChartDataSourceUtil;->determineMaximumListSize(Lcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p2, v0, :cond_4

    .line 194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 198
    :goto_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 199
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 203
    instance-of v5, v4, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v5, :cond_0

    add-int/lit8 v4, p2, -0x1

    .line 204
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/DataModel;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 209
    :cond_0
    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 211
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    if-le v5, p2, :cond_1

    .line 213
    invoke-virtual {v4, p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_1
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-nez v4, :cond_2

    add-int/lit8 v4, p2, -0x1

    .line 217
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/DataModel;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :cond_2
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_3
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 236
    :cond_4
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public importFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)V
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/DataModel;->getTuplesFromColumns(Lcom/google/appinventor/components/runtime/util/YailList;Z)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    return-void
.end method

.method public importFromList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 112
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_1

    .line 114
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_1

    .line 115
    :cond_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 117
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public abstract isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z
.end method

.method public abstract removeEntry(I)V
.end method

.method public abstract removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
.end method

.method public removeValues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 140
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    if-eqz v1, :cond_0

    .line 141
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    goto :goto_1

    .line 142
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 144
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    goto :goto_1

    .line 145
    :cond_1
    instance-of v0, v0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/DataModel;->removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setDefaultStylingProperties()V
    .locals 0

    return-void
.end method

.method public setElements(Ljava/lang/String;)V
    .locals 6

    .line 76
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/DataModel;->getTupleSize()I

    move-result v0

    .line 79
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v0, -0x1

    move v2, v1

    .line 86
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :goto_1
    if-ltz v4, :cond_0

    sub-int v5, v2, v4

    .line 93
    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/DataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaximumTimeEntries(I)V
    .locals 0

    .line 340
    iput p1, p0, Lcom/google/appinventor/components/runtime/DataModel;->maximumTimeEntries:I

    return-void
.end method
