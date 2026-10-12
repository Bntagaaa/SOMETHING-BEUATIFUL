.class Lcom/google/common/collect/TreeRangeMap$d$a;
.super Lcom/google/common/collect/TreeRangeMap$d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$d;->asDescendingMapOfRanges()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeRangeMap<",
        "TK;TV;>.d.b;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/TreeRangeMap$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap$d;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$d$a;->b:Lcom/google/common/collect/TreeRangeMap$d;

    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$d$b;-><init>(Lcom/google/common/collect/TreeRangeMap$d;)V

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$a;->b:Lcom/google/common/collect/TreeRangeMap$d;

    iget-object v1, v0, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 490
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0

    .line 493
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$d;->b:Lcom/google/common/collect/TreeRangeMap;

    .line 495
    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 499
    new-instance v1, Lcom/google/common/collect/j6;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/j6;-><init>(Lcom/google/common/collect/TreeRangeMap$d$a;Ljava/util/Iterator;)V

    return-object v1
.end method
