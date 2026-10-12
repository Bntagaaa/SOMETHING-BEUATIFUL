.class final Lcom/google/common/collect/ImmutableRangeSet$a;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSortedSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/common/collect/DiscreteDomain;

.field public transient f:Ljava/lang/Integer;

.field public final synthetic g:Lcom/google/common/collect/ImmutableRangeSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    .line 527
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 528
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->e:Lcom/google/common/collect/DiscreteDomain;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 624
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Comparable;

    .line 625
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 573
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$a$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$a$b;-><init>(Lcom/google/common/collect/ImmutableRangeSet$a;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$a;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final isPartialView()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    .line 656
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$a$a;-><init>(Lcom/google/common/collect/ImmutableRangeSet$a;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .line 651
    new-instance v0, Lcom/google/common/collect/a1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a1;-><init>(Lcom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public final l(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 523
    check-cast p1, Ljava/lang/Comparable;

    .line 597
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 592
    iget-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1

    .line 523
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 603
    sget-object v0, Lcom/google/common/collect/Range;->c:Lcom/google/common/collect/Range;

    .line 695
    invoke-interface {p1, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1

    .line 608
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    .line 609
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    .line 607
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 592
    iget-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 523
    check-cast p1, Ljava/lang/Comparable;

    .line 614
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 592
    iget-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {p1, p2}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 6

    .line 536
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->f:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    .line 539
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    .line 540
    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->e:Lcom/google/common/collect/DiscreteDomain;

    invoke-static {v3, v4}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 545
    :cond_1
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->f:Ljava/lang/Integer;

    .line 547
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a;->g:Lcom/google/common/collect/ImmutableRangeSet;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableList;

    .line 661
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
