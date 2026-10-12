.class Lcom/google/common/collect/l6;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/w0<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Lcom/google/common/collect/Range<",
        "Ljava/lang/Comparable<",
        "*>;>;>;>;"
    }
.end annotation


# instance fields
.field public c:Lcom/google/common/collect/w0;

.field public final synthetic d:Lcom/google/common/collect/PeekingIterator;

.field public final synthetic e:Lcom/google/common/collect/TreeRangeSet$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeSet$d;Lcom/google/common/collect/w0;Lcom/google/common/collect/PeekingIterator;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/google/common/collect/l6;->e:Lcom/google/common/collect/TreeRangeSet$d;

    iput-object p3, p0, Lcom/google/common/collect/l6;->d:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 537
    iput-object p2, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 536
    invoke-virtual {p0}, Lcom/google/common/collect/l6;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/w0<",
            "Ljava/lang/Comparable<",
            "*>;>;",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable<",
            "*>;>;>;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/l6;->e:Lcom/google/common/collect/TreeRangeSet$d;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    .line 541
    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    iget-object v1, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/w0;->g(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    .line 218
    sget-object v1, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/l6;->d:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 547
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 548
    iget-object v1, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    iget-object v2, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 155
    new-instance v3, Lcom/google/common/collect/Range;

    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 549
    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    iput-object v0, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    .line 155
    new-instance v3, Lcom/google/common/collect/Range;

    invoke-direct {v3, v0, v1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 552
    iput-object v1, p0, Lcom/google/common/collect/l6;->c:Lcom/google/common/collect/w0;

    .line 554
    :goto_0
    iget-object v0, v3, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-static {v0, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 543
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
