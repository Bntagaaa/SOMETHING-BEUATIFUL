.class Lcom/google/common/collect/Collections2$e;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:[I

.field public final e:[I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 605
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Collections2$e;->c:Ljava/util/ArrayList;

    .line 607
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 608
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/Collections2$e;->d:[I

    .line 609
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/Collections2$e;->e:[I

    const/4 v1, 0x0

    .line 610
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    .line 611
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    const p1, 0x7fffffff

    .line 612
    iput p1, p0, Lcom/google/common/collect/Collections2$e;->f:I

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$e;->computeNext()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 617
    iget v0, p0, Lcom/google/common/collect/Collections2$e;->f:I

    if-gtz v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Collections2$e;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 626
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/Collections2$e;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 636
    :goto_0
    iget v3, p0, Lcom/google/common/collect/Collections2$e;->f:I

    iget-object v4, p0, Lcom/google/common/collect/Collections2$e;->d:[I

    aget v5, v4, v3

    iget-object v6, p0, Lcom/google/common/collect/Collections2$e;->e:[I

    aget v7, v6, v3

    add-int v8, v5, v7

    if-gez v8, :cond_2

    neg-int v4, v7

    .line 657
    aput v4, v6, v3

    add-int/lit8 v3, v3, -0x1

    .line 658
    iput v3, p0, Lcom/google/common/collect/Collections2$e;->f:I

    goto :goto_0

    :cond_2
    add-int/lit8 v9, v3, 0x1

    if-ne v8, v9, :cond_4

    if-nez v3, :cond_3

    :goto_1
    return-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    neg-int v4, v7

    .line 657
    aput v4, v6, v3

    add-int/lit8 v3, v3, -0x1

    .line 658
    iput v3, p0, Lcom/google/common/collect/Collections2$e;->f:I

    goto :goto_0

    :cond_4
    sub-int v5, v3, v5

    add-int/2addr v5, v2

    sub-int/2addr v3, v8

    add-int/2addr v3, v2

    .line 650
    invoke-static {v0, v5, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 651
    iget v0, p0, Lcom/google/common/collect/Collections2$e;->f:I

    aput v8, v4, v0

    return-object v1
.end method
