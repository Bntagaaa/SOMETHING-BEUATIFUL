.class public Lcom/google/common/collect/ImmutableMultiset$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/r4;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 426
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 429
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->b:Z

    .line 419
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    .line 430
    invoke-static {p1}, Lcom/google/common/collect/r4;->createWithExpectedSize(I)Lcom/google/common/collect/r4;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 461
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 532
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_4

    .line 1106
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 574
    instance-of v0, p1, Lcom/google/common/collect/c5;

    if-eqz v0, :cond_0

    .line 575
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/c5;

    iget-object v0, v0, Lcom/google/common/collect/c5;->e:Lcom/google/common/collect/r4;

    goto :goto_0

    .line 576
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/j;

    if-eqz v0, :cond_1

    .line 577
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/j;

    iget-object v0, v0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 536
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    .line 179
    iget v1, p1, Lcom/google/common/collect/r4;->c:I

    .line 179
    iget v2, v0, Lcom/google/common/collect/r4;->c:I

    .line 536
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/r4;->a(I)V

    .line 537
    invoke-virtual {v0}, Lcom/google/common/collect/r4;->b()I

    move-result p1

    :goto_1
    if-ltz p1, :cond_3

    .line 538
    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    .line 537
    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->i(I)I

    move-result p1

    goto :goto_1

    .line 541
    :cond_2
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    .line 179
    iget v2, v1, Lcom/google/common/collect/r4;->c:I

    .line 542
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/r4;->a(I)V

    .line 543
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 544
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    goto :goto_2

    :cond_3
    return-object p0

    .line 548
    :cond_4
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 563
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 482
    new-instance v0, Lcom/google/common/collect/r4;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    invoke-direct {v0, v2}, Lcom/google/common/collect/r4;-><init>(Lcom/google/common/collect/r4;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    .line 483
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    .line 485
    :cond_1
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->b:Z

    .line 486
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r4;->get(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/r4;->put(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->build()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    .line 179
    iget v1, v0, Lcom/google/common/collect/r4;->c:I

    if-nez v1, :cond_0

    .line 590
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    if-eqz v1, :cond_1

    .line 595
    new-instance v1, Lcom/google/common/collect/r4;

    invoke-direct {v1, v0}, Lcom/google/common/collect/r4;-><init>(Lcom/google/common/collect/r4;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    :cond_1
    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->b:Z

    .line 600
    new-instance v0, Lcom/google/common/collect/c5;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    invoke-direct {v0, v1}, Lcom/google/common/collect/c5;-><init>(Lcom/google/common/collect/r4;)V

    return-object v0
.end method

.method public setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 503
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    if-nez v1, :cond_1

    .line 504
    new-instance v1, Lcom/google/common/collect/s4;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    .line 80
    invoke-direct {v1}, Lcom/google/common/collect/r4;-><init>()V

    .line 179
    iget v3, v2, Lcom/google/common/collect/r4;->c:I

    .line 81
    invoke-virtual {v1, v3}, Lcom/google/common/collect/s4;->f(I)V

    .line 82
    invoke-virtual {v2}, Lcom/google/common/collect/r4;->b()I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 83
    invoke-virtual {v2, v3}, Lcom/google/common/collect/r4;->c(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/google/common/collect/r4;->d(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/google/common/collect/r4;->put(Ljava/lang/Object;I)I

    .line 82
    invoke-virtual {v2, v3}, Lcom/google/common/collect/r4;->i(I)I

    move-result v3

    goto :goto_0

    .line 504
    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    const/4 v1, 0x1

    .line 505
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    goto :goto_1

    .line 508
    :cond_1
    iget-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->b:Z

    if-eqz v1, :cond_2

    .line 509
    new-instance v1, Lcom/google/common/collect/r4;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    invoke-direct {v1, v2}, Lcom/google/common/collect/r4;-><init>(Lcom/google/common/collect/r4;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    .line 510
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->c:Z

    .line 512
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->b:Z

    .line 513
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_3

    .line 515
    iget-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    invoke-virtual {p2, p1}, Lcom/google/common/collect/r4;->remove(Ljava/lang/Object;)I

    return-object p0

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->a:Lcom/google/common/collect/r4;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/r4;->put(Ljava/lang/Object;I)I

    return-object p0
.end method
