.class Lcom/google/common/collect/k6;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lcom/google/common/collect/Range<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/collect/TreeRangeMap$d$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap$d$b;Ljava/util/Iterator;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/google/common/collect/k6;->d:Lcom/google/common/collect/TreeRangeMap$d$b;

    iput-object p2, p0, Lcom/google/common/collect/k6;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/k6;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/k6;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 665
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    .line 94
    iget-object v1, v0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    .line 94
    iget-object v1, v1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 666
    iget-object v2, p0, Lcom/google/common/collect/k6;->d:Lcom/google/common/collect/TreeRangeMap$d$b;

    iget-object v3, v2, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    .line 371
    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 666
    iget-object v3, v3, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 667
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 98
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 668
    iget-object v3, v2, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    .line 371
    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 668
    iget-object v3, v3, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v1

    if-lez v1, :cond_0

    .line 670
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    .line 371
    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 670
    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 673
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
