.class final Lcom/google/common/collect/TreeRangeSet$d;
.super Lcom/google/common/collect/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/n<",
        "Lcom/google/common/collect/w0<",
        "TC;>;",
        "Lcom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/AbstractMap;

.field public final b:Ljava/util/NavigableMap;

.field public final c:Lcom/google/common/collect/Range;


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V
    .locals 1

    .line 464
    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    .line 465
    move-object v0, p1

    check-cast v0, Ljava/util/AbstractMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/AbstractMap;

    .line 466
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$e;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeRangeSet$e;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Ljava/util/NavigableMap;

    .line 467
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 5

    .line 515
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Ljava/util/NavigableMap;

    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    .line 520
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 518
    :goto_0
    invoke-interface {v2, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    .line 521
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    goto :goto_1

    .line 523
    :cond_1
    check-cast v2, Ljava/util/AbstractMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 526
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 119
    sget-object v2, Lcom/google/common/collect/w0$d;->b:Lcom/google/common/collect/w0$d;

    .line 528
    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    if-eq v0, v2, :cond_2

    goto :goto_2

    .line 531
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 532
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v2, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 536
    :cond_3
    :goto_2
    new-instance v0, Lcom/google/common/collect/l6;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/common/collect/l6;-><init>(Lcom/google/common/collect/TreeRangeSet$d;Lcom/google/common/collect/w0;Lcom/google/common/collect/PeekingIterator;)V

    return-object v0

    .line 88
    :cond_4
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method public final b()Ljava/util/Iterator;
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/w0;

    goto :goto_0

    .line 218
    :cond_0
    sget-object v1, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    .line 574
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 576
    :goto_1
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Ljava/util/NavigableMap;

    .line 579
    invoke-interface {v3, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v1

    .line 580
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    .line 581
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 582
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 577
    invoke-static {v1}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/AbstractMap;

    if-eqz v2, :cond_3

    .line 586
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 218
    sget-object v2, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    if-ne v0, v2, :cond_2

    .line 587
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    goto :goto_2

    .line 588
    :cond_2
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-interface {v3, v0}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w0;

    goto :goto_2

    .line 119
    :cond_3
    sget-object v2, Lcom/google/common/collect/w0$d;->b:Lcom/google/common/collect/w0$d;

    .line 589
    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 593
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w0;

    .line 218
    :goto_2
    sget-object v2, Lcom/google/common/collect/w0$b;->b:Lcom/google/common/collect/w0$b;

    .line 596
    invoke-static {v0, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w0;

    .line 597
    new-instance v2, Lcom/google/common/collect/m6;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/m6;-><init>(Lcom/google/common/collect/TreeRangeSet$d;Lcom/google/common/collect/w0;Lcom/google/common/collect/PeekingIterator;)V

    return-object v2

    .line 88
    :cond_5
    :goto_3
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0
.end method

.method public final c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 2

    .line 471
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 472
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 474
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 475
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$d;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/AbstractMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/TreeRangeSet$d;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/google/common/collect/w0<",
            "TC;>;>;"
        }
    .end annotation

    .line 500
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 648
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 630
    instance-of v0, p1, Lcom/google/common/collect/w0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 633
    :try_start_0
    check-cast p1, Lcom/google/common/collect/w0;

    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeRangeSet$d;->tailMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/w0;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/w0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 637
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 447
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w0<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/w0<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 490
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 447
    check-cast p1, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$d;->headMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Lcom/google/common/collect/w0;ZLcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w0<",
            "TC;>;Z",
            "Lcom/google/common/collect/w0<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/w0<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 484
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    .line 485
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    .line 483
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 482
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 447
    check-cast p1, Lcom/google/common/collect/w0;

    check-cast p3, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$d;->subMap(Lcom/google/common/collect/w0;ZLcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w0<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/w0<",
            "TC;>;",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 495
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 447
    check-cast p1, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$d;->tailMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
