.class final Lcom/google/common/collect/d3;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/Iterator;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/google/common/collect/d3;->a:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/d3;->b:I

    iput-boolean p3, p0, Lcom/google/common/collect/d3;->c:Z

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/common/collect/d3;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/google/common/collect/d3;->next()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/d3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    iget v0, p0, Lcom/google/common/collect/d3;->b:I

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 610
    iget-object v4, p0, Lcom/google/common/collect/d3;->a:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 611
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_1

    const/4 v5, 0x0

    .line 614
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 618
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 619
    iget-boolean v4, p0, Lcom/google/common/collect/d3;->c:Z

    if-nez v4, :cond_3

    if-ne v3, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_2
    return-object v1

    .line 606
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
