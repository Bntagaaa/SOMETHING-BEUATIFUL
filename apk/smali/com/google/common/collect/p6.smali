.class Lcom/google/common/collect/p6;
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
.field public final synthetic c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/collect/w0;

.field public final synthetic e:Lcom/google/common/collect/TreeRangeSet$g;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeSet$g;Ljava/util/Iterator;Lcom/google/common/collect/w0;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/google/common/collect/p6;->e:Lcom/google/common/collect/TreeRangeSet$g;

    iput-object p2, p0, Lcom/google/common/collect/p6;->c:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/p6;->d:Lcom/google/common/collect/w0;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/google/common/collect/p6;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 3
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

    .line 803
    iget-object v0, p0, Lcom/google/common/collect/p6;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 806
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 807
    iget-object v1, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object v2, p0, Lcom/google/common/collect/p6;->d:Lcom/google/common/collect/w0;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/w0;->g(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/p6;->e:Lcom/google/common/collect/TreeRangeSet$g;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    .line 810
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 811
    iget-object v1, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
