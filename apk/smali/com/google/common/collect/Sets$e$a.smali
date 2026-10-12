.class Lcom/google/common/collect/Sets$e$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/BitSet;

.field public final synthetic d:Lcom/google/common/collect/Sets$e;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Sets$e;)V
    .locals 1

    .line 1557
    iput-object p1, p0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1558
    new-instance v0, Ljava/util/BitSet;

    iget-object p1, p1, Lcom/google/common/collect/Sets$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$e$a;->computeNext()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Lcom/google/common/collect/Sets$e$a;->c:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/Sets$e$a;->d:Lcom/google/common/collect/Sets$e;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1563
    iget v1, v2, Lcom/google/common/collect/Sets$e;->a:I

    invoke-virtual {v0, v3, v1}, Ljava/util/BitSet;->set(II)V

    goto :goto_0

    .line 1565
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 1566
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v4

    .line 1568
    iget-object v2, v2, Lcom/google/common/collect/Sets$e;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v4, v2, :cond_1

    .line 1569
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_1
    sub-int v1, v4, v1

    add-int/lit8 v1, v1, -0x1

    .line 1584
    invoke-virtual {v0, v3, v1}, Ljava/util/BitSet;->set(II)V

    .line 1585
    invoke-virtual {v0, v1, v4}, Ljava/util/BitSet;->clear(II)V

    .line 1586
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 1588
    :goto_0
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 1589
    new-instance v1, Lcom/google/common/collect/Sets$e$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Sets$e$a$a;-><init>(Lcom/google/common/collect/Sets$e$a;Ljava/util/BitSet;)V

    return-object v1
.end method
