.class Lcom/google/common/collect/h6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/common/collect/Multiset$Entry<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/TreeMultiset$c;

.field public b:Lcom/google/common/collect/Multiset$Entry;

.field public final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 6

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/h6;->c:Lcom/google/common/collect/TreeMultiset;

    .line 383
    iget-object v0, p1, Lcom/google/common/collect/TreeMultiset;->e:Lcom/google/common/collect/TreeMultiset$d;

    .line 383
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$c;

    if-nez v1, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    iget-object v1, p1, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    iget-boolean v2, v1, Lcom/google/common/collect/b2;->b:Z

    .line 388
    iget-object v3, p1, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-eqz v2, :cond_2

    .line 390
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$d;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeMultiset$c;

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 557
    iget-object v4, v1, Lcom/google/common/collect/b2;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lcom/google/common/collect/TreeMultiset$c;->e(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$c;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 394
    :cond_1
    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    iget-object v5, v1, Lcom/google/common/collect/b2;->d:Lcom/google/common/collect/BoundType;

    if-ne v5, v2, :cond_3

    .line 395
    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iget-object v2, v0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    invoke-interface {p1, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_3

    .line 557
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    goto :goto_0

    .line 557
    :cond_2
    iget-object v0, v3, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    :cond_3
    :goto_0
    if-eq v0, v3, :cond_4

    .line 964
    iget-object p1, v0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    .line 401
    invoke-virtual {v1, p1}, Lcom/google/common/collect/b2;->a(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    :goto_1
    const/4 v0, 0x0

    .line 435
    :cond_5
    iput-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/h6;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, v2, Lcom/google/common/collect/TreeMultiset;->f:Lcom/google/common/collect/b2;

    .line 964
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$c;->a:Ljava/lang/Object;

    .line 442
    invoke-virtual {v2, v0}, Lcom/google/common/collect/b2;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public next()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p0}, Lcom/google/common/collect/h6;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    sget v1, Lcom/google/common/collect/TreeMultiset;->h:I

    .line 58
    iget-object v1, p0, Lcom/google/common/collect/h6;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 362
    new-instance v2, Lcom/google/common/collect/g6;

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/g6;-><init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$c;)V

    .line 456
    iput-object v2, p0, Lcom/google/common/collect/h6;->b:Lcom/google/common/collect/Multiset$Entry;

    .line 457
    iget-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    .line 557
    iget-object v0, v0, Lcom/google/common/collect/TreeMultiset$c;->i:Lcom/google/common/collect/TreeMultiset$c;

    .line 457
    iget-object v1, v1, Lcom/google/common/collect/TreeMultiset;->g:Lcom/google/common/collect/TreeMultiset$c;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    return-object v2

    .line 460
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/h6;->a:Lcom/google/common/collect/TreeMultiset$c;

    return-object v2

    .line 453
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 434
    invoke-virtual {p0}, Lcom/google/common/collect/h6;->next()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/google/common/collect/h6;->b:Lcom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 468
    iget-object v0, p0, Lcom/google/common/collect/h6;->b:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/h6;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    const/4 v0, 0x0

    .line 469
    iput-object v0, p0, Lcom/google/common/collect/h6;->b:Lcom/google/common/collect/Multiset$Entry;

    return-void
.end method
