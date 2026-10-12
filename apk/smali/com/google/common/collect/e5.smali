.class final Lcom/google/common/collect/e5;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final j:[J

.field public static final k:Lcom/google/common/collect/ImmutableSortedMultiset;


# instance fields
.field public final transient f:Lcom/google/common/collect/f5;

.field public final transient g:[J

.field public final transient h:I

.field public final transient i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [J

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    sput-object v0, Lcom/google/common/collect/e5;->j:[J

    .line 37
    new-instance v0, Lcom/google/common/collect/e5;

    .line 38
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e5;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/e5;->k:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/f5;[JII)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    .line 55
    iput-object p2, p0, Lcom/google/common/collect/e5;->g:[J

    .line 56
    iput p3, p0, Lcom/google/common/collect/e5;->h:I

    .line 57
    iput p4, p0, Lcom/google/common/collect/e5;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->k(Ljava/util/Comparator;)Lcom/google/common/collect/f5;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    .line 47
    sget-object p1, Lcom/google/common/collect/e5;->j:[J

    iput-object p1, p0, Lcom/google/common/collect/e5;->g:[J

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/google/common/collect/e5;->h:I

    .line 49
    iput p1, p0, Lcom/google/common/collect/e5;->i:I

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/common/collect/f5;->e:Lcom/google/common/collect/ImmutableList;

    .line 274
    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedSet;->c:Ljava/util/Comparator;

    .line 295
    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_1

    move v1, p1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    if-ltz v1, :cond_2

    .line 61
    iget p1, p0, Lcom/google/common/collect/e5;->h:I

    add-int/2addr p1, v1

    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/google/common/collect/e5;->g:[J

    aget-wide v2, v1, v0

    aget-wide v0, v1, p1

    sub-long/2addr v2, v0

    long-to-int p1, v2

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/e5;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/e5;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/e5;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/common/collect/e5;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final f(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    invoke-virtual {v0}, Lcom/google/common/collect/f5;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Lcom/google/common/collect/e5;->h:I

    add-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    iget-object v2, p0, Lcom/google/common/collect/e5;->g:[J

    aget-wide v3, v2, p1

    aget-wide v1, v2, v1

    sub-long/2addr v3, v1

    long-to-int p1, v3

    .line 66
    invoke-static {v0, p1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object p1

    return-object p1
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e5;->f(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 98
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/f5;->p(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/e5;->i(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e5;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public final i(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3

    .line 108
    iget v0, p0, Lcom/google/common/collect/e5;->i:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMultiset;->h(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    if-ne p2, v0, :cond_1

    return-object p0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/f5;->o(II)Lcom/google/common/collect/f5;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/google/common/collect/e5;

    iget v2, p0, Lcom/google/common/collect/e5;->h:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/google/common/collect/e5;->g:[J

    invoke-direct {v1, v0, p1, v2, p2}, Lcom/google/common/collect/e5;-><init>(Lcom/google/common/collect/f5;[JII)V

    return-object v1
.end method

.method public final isPartialView()Z
    .locals 3

    .line 122
    iget v0, p0, Lcom/google/common/collect/e5;->h:I

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/e5;->g:[J

    array-length v0, v0

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/google/common/collect/e5;->i:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/e5;->i:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/e5;->f(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 5

    .line 87
    iget v0, p0, Lcom/google/common/collect/e5;->i:I

    iget v1, p0, Lcom/google/common/collect/e5;->h:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/common/collect/e5;->g:[J

    aget-wide v3, v2, v0

    aget-wide v0, v2, v1

    sub-long/2addr v3, v0

    .line 88
    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 104
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/e5;->f:Lcom/google/common/collect/f5;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/f5;->q(Ljava/lang/Object;Z)I

    move-result p1

    iget p2, p0, Lcom/google/common/collect/e5;->i:I

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e5;->i(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/e5;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
