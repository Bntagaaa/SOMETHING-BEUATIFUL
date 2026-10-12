.class Lcom/google/common/collect/m6;
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

    .line 597
    iput-object p1, p0, Lcom/google/common/collect/m6;->e:Lcom/google/common/collect/TreeRangeSet$d;

    iput-object p3, p0, Lcom/google/common/collect/m6;->d:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 598
    iput-object p2, p0, Lcom/google/common/collect/m6;->c:Lcom/google/common/collect/w0;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/google/common/collect/m6;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 5
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

    .line 602
    iget-object v0, p0, Lcom/google/common/collect/m6;->c:Lcom/google/common/collect/w0;

    .line 119
    sget-object v1, Lcom/google/common/collect/w0$d;->b:Lcom/google/common/collect/w0$d;

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/m6;->d:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/m6;->e:Lcom/google/common/collect/TreeRangeSet$d;

    if-eqz v2, :cond_1

    .line 605
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 606
    iget-object v1, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    iget-object v2, p0, Lcom/google/common/collect/m6;->c:Lcom/google/common/collect/w0;

    .line 155
    new-instance v4, Lcom/google/common/collect/Range;

    invoke-direct {v4, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 608
    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iput-object v0, p0, Lcom/google/common/collect/m6;->c:Lcom/google/common/collect/w0;

    .line 447
    iget-object v0, v3, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    .line 609
    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object v1, v4, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/w0;->g(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 610
    invoke-static {v1, v4}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 447
    :cond_1
    iget-object v0, v3, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    .line 612
    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/w0;->g(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/m6;->c:Lcom/google/common/collect/w0;

    .line 155
    new-instance v2, Lcom/google/common/collect/Range;

    invoke-direct {v2, v1, v0}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/w0;Lcom/google/common/collect/w0;)V

    .line 614
    iput-object v1, p0, Lcom/google/common/collect/m6;->c:Lcom/google/common/collect/w0;

    .line 615
    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 617
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
