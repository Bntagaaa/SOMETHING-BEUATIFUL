.class Lcom/google/common/collect/j6;
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

.field public final synthetic d:Lcom/google/common/collect/TreeRangeMap$d$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap$d$a;Ljava/util/Iterator;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/google/common/collect/j6;->d:Lcom/google/common/collect/TreeRangeMap$d$a;

    iput-object p2, p0, Lcom/google/common/collect/j6;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/common/collect/j6;->computeNext()Ljava/util/Map$Entry;

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

    .line 503
    iget-object v0, p0, Lcom/google/common/collect/j6;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    .line 98
    iget-object v1, v0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/Range;

    .line 98
    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 505
    iget-object v2, p0, Lcom/google/common/collect/j6;->d:Lcom/google/common/collect/TreeRangeMap$d$a;

    iget-object v3, v2, Lcom/google/common/collect/TreeRangeMap$d$a;->b:Lcom/google/common/collect/TreeRangeMap$d;

    .line 371
    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 505
    iget-object v3, v3, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 508
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$d$a;->b:Lcom/google/common/collect/TreeRangeMap$d;

    .line 371
    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 508
    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
