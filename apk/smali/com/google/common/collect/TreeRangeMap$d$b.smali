.class Lcom/google/common/collect/TreeRangeMap$d$b;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/TreeRangeMap$d;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap$d;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/collect/TreeRangeMap$d$b;Lcom/google/common/base/Predicate;)Z
    .locals 4

    .line 594
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 595
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$d$b;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 596
    invoke-interface {p1, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 597
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 600
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 601
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$d;->b:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_1

    .line 603
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public b()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    iget-object v1, v0, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 652
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0

    .line 655
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$d;->b:Lcom/google/common/collect/TreeRangeMap;

    .line 657
    iget-object v2, v1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    iget-object v3, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v3, v2}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, v1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 656
    invoke-static {v2, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/w0;

    const/4 v2, 0x1

    .line 659
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/google/common/collect/k6;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/k6;-><init>(Lcom/google/common/collect/TreeRangeMap$d$b;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public clear()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$d;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 540
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$d$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 623
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$d$b$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$d$b$b;-><init>(Lcom/google/common/collect/TreeRangeMap$d$b;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p1, Lcom/google/common/collect/Range;

    if-eqz v2, :cond_3

    .line 548
    check-cast p1, Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    iget-object v2, v0, Lcom/google/common/collect/TreeRangeMap$d;->a:Lcom/google/common/collect/Range;

    .line 549
    :try_start_1
    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, p1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    :try_start_2
    iget-object v3, v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$d;->b:Lcom/google/common/collect/TreeRangeMap;

    if-nez v3, :cond_2

    .line 53
    :try_start_3
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    .line 556
    invoke-interface {v0, v4}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/TreeMap;

    .line 561
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$c;

    :goto_0
    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getKey()Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 567
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_1
    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Range<",
            "TK;>;>;"
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$d$b$a;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$d$b$a;-><init>(Lcom/google/common/collect/TreeRangeMap$d$b;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 578
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$d$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    check-cast p1, Lcom/google/common/collect/Range;

    .line 582
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$d$b;->a:Lcom/google/common/collect/TreeRangeMap$d;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeMap$d;->b:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 680
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$d$b$c;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$d$b$c;-><init>(Lcom/google/common/collect/TreeRangeMap$d$b;Ljava/util/Map;)V

    return-object v0
.end method
