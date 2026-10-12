.class final Lcom/google/common/collect/TreeRangeSet$g;
.super Lcom/google/common/collect/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
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
.field public final a:Lcom/google/common/collect/Range;

.field public final b:Lcom/google/common/collect/Range;

.field public final c:Ljava/util/NavigableMap;

.field public final d:Ljava/util/NavigableMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V
    .locals 0

    .line 698
    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    .line 699
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    .line 700
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    .line 701
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableMap;

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    .line 702
    new-instance p1, Lcom/google/common/collect/TreeRangeSet$e;

    invoke-direct {p1, p3}, Lcom/google/common/collect/TreeRangeSet$e;-><init>(Ljava/util/NavigableMap;)V

    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$g;->d:Ljava/util/NavigableMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v2, v1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    iget-object v3, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/w0;->g(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0

    .line 783
    :cond_1
    iget-object v2, v1, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/w0;->g(Ljava/lang/Comparable;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 785
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->d:Ljava/util/NavigableMap;

    .line 786
    invoke-interface {v2, v3, v5}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    .line 792
    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/w0;->e()Ljava/lang/Comparable;

    move-result-object v2

    .line 793
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v5, 0x1

    .line 791
    :cond_3
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    invoke-interface {v3, v2, v5}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    .line 794
    invoke-interface {v2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 795
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 798
    :goto_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 799
    invoke-static {v0}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object v0

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    invoke-virtual {v3, v1, v0}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w0;

    .line 800
    new-instance v1, Lcom/google/common/collect/p6;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/common/collect/p6;-><init>(Lcom/google/common/collect/TreeRangeSet$g;Ljava/util/Iterator;Lcom/google/common/collect/w0;)V

    return-object v1
.end method

.method public final b()Ljava/util/Iterator;
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v0, Lcom/google/common/collect/Iterators$j;->d:Lcom/google/common/collect/UnmodifiableListIterator;

    return-object v0

    .line 823
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 824
    invoke-static {v0}, Lcom/google/common/collect/w0;->a(Ljava/lang/Comparable;)Lcom/google/common/collect/w0$e;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w0;

    .line 828
    invoke-virtual {v0}, Lcom/google/common/collect/w0;->e()Ljava/lang/Comparable;

    move-result-object v1

    .line 829
    invoke-virtual {v0}, Lcom/google/common/collect/w0;->j()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 827
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    invoke-interface {v2, v1, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 830
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 831
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 832
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 833
    new-instance v1, Lcom/google/common/collect/q6;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/q6;-><init>(Lcom/google/common/collect/TreeRangeSet$g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1

    .line 709
    :cond_0
    new-instance v1, Lcom/google/common/collect/TreeRangeSet$g;

    .line 710
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    invoke-direct {v1, p1, v0, v2}, Lcom/google/common/collect/TreeRangeSet$g;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-object v1
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

    .line 737
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 742
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
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

    .line 748
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$g;->b:Lcom/google/common/collect/Range;

    instance-of v1, p1, Lcom/google/common/collect/w0;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 751
    :try_start_0
    check-cast p1, Lcom/google/common/collect/w0;

    .line 752
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$g;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    .line 753
    invoke-virtual {p1, v1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, v0, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    .line 754
    invoke-virtual {p1, v1}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_1

    .line 756
    :cond_0
    iget-object v1, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/w0;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$g;->c:Ljava/util/NavigableMap;

    if-eqz v1, :cond_2

    .line 758
    :try_start_1
    invoke-interface {v3, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_0

    .line 3566
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 758
    :goto_0
    check-cast p1, Lcom/google/common/collect/Range;

    if-eqz p1, :cond_3

    .line 759
    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lcom/google/common/collect/w0;

    iget-object v3, v0, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/w0;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/w0;->compareTo(Lcom/google/common/collect/w0;)I

    move-result v1

    if-lez v1, :cond_3

    .line 760
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1

    return-object p1

    .line 763
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Range;

    if-eqz p1, :cond_3

    .line 765
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    :cond_3
    :goto_1
    return-object v2
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 678
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

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

    .line 727
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 678
    check-cast p1, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$g;->headMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$g;->a()Ljava/util/Iterator;

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

    .line 720
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    .line 722
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p4

    .line 718
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    .line 717
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 678
    check-cast p1, Lcom/google/common/collect/w0;

    check-cast p3, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$g;->subMap(Lcom/google/common/collect/w0;ZLcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

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

    .line 732
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$g;->c(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 678
    check-cast p1, Lcom/google/common/collect/w0;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$g;->tailMap(Lcom/google/common/collect/w0;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
