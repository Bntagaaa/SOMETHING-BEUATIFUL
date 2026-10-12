.class public final Lcom/google/common/collect/MinMaxPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MinMaxPriorityQueue$d;,
        Lcom/google/common/collect/MinMaxPriorityQueue$b;,
        Lcom/google/common/collect/MinMaxPriorityQueue$c;,
        Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/collect/MinMaxPriorityQueue$b;

.field public final b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

.field public final c:I

.field public d:[Ljava/lang/Object;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V
    .locals 3

    .line 232
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 221
    iget-object v0, p1, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->a:Ljava/util/Comparator;

    .line 221
    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 234
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    .line 235
    new-instance v2, Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$b;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    .line 236
    iput-object v2, v1, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    .line 237
    iput-object v1, v2, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    .line 158
    iget p1, p1, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->c:I

    .line 239
    iput p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:I

    .line 241
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    return-void
.end method

.method public static create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "TE;>;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create()Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue<",
            "TE;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object p0

    return-object p0
.end method

.method public static expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TB;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder<",
            "TB;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 312
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    iget-object v3, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 302
    iget-object v3, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v4, v3, v1

    aget-object v3, v3, v2

    .line 515
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 267
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p1, v0

    not-int p1, p1

    not-int p1, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 481
    :goto_0
    const-string v1, "negative index"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    const v0, 0x55555555

    and-int/2addr v0, p1

    const v1, -0x55555556

    and-int/2addr p1, v1

    if-le v0, p1, :cond_1

    .line 472
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    return-object p1
.end method

.method public final c(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;
    .locals 10

    .line 397
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 398
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 399
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 401
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aput-object v1, p1, v0

    return-object v1

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 405
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object v0

    .line 102
    iget-object v3, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    .line 102
    iget v4, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 659
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 661
    invoke-static {v4}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    if-eq v6, v4, :cond_1

    mul-int/lit8 v4, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 102
    iget v7, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-lt v4, v7, :cond_1

    .line 302
    iget-object v4, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v4, v4, v6

    .line 665
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v0, v4, v2}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 102
    iget-object v0, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 666
    aput-object v2, v0, v6

    .line 102
    iget v3, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 667
    aput-object v4, v0, v3

    goto :goto_0

    .line 102
    :cond_1
    iget v6, v3, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    :goto_0
    if-ne v6, p1, :cond_2

    .line 410
    iget-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    aput-object v1, p1, v0

    return-object v1

    .line 413
    :cond_2
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 302
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 414
    aput-object v1, v3, v0

    .line 432
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object v0

    move v3, p1

    .line 440
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    if-gez v7, :cond_3

    const/4 v8, -0x1

    goto :goto_2

    :cond_3
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x4

    .line 611
    invoke-virtual {v0, v8, v9}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c(II)I

    move-result v8

    .line 702
    :goto_2
    iget-object v9, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c:Lcom/google/common/collect/MinMaxPriorityQueue;

    if-lez v8, :cond_4

    .line 102
    iget-object v7, v9, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v9, v7, v8

    .line 703
    aput-object v9, v7, v3

    move v3, v8

    goto :goto_1

    .line 442
    :cond_4
    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a(ILjava/lang/Object;)I

    move-result v8

    if-ne v8, v3, :cond_8

    .line 602
    invoke-virtual {v0, v7, v5}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->c(II)I

    move-result v5

    if-lez v5, :cond_5

    .line 302
    iget-object v7, v9, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v7, v7, v5

    .line 685
    iget-object v8, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v8, v7, v4}, Lcom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_5

    .line 102
    iget-object v7, v9, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v8, v7, v5

    .line 686
    aput-object v8, v7, v3

    .line 687
    aput-object v4, v7, v5

    goto :goto_3

    .line 690
    :cond_5
    invoke-virtual {v0, v3, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b(ILjava/lang/Object;)I

    move-result v5

    :goto_3
    if-ne v5, v3, :cond_6

    goto :goto_5

    :cond_6
    if-ge v5, p1, :cond_7

    .line 302
    iget-object v3, v9, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v3, v3, p1

    goto :goto_4

    .line 538
    :cond_7
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->d(I)I

    move-result v3

    .line 302
    iget-object v7, v9, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 302
    aget-object v3, v7, v3

    .line 541
    :goto_4
    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    invoke-virtual {v0, v5, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a(ILjava/lang/Object;)I

    move-result v0

    if-ge v0, p1, :cond_9

    .line 542
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-direct {v1, v4, v3}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-ge v8, p1, :cond_9

    .line 449
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    .line 302
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 449
    invoke-direct {v1, v4, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    :goto_5
    if-ge v6, p1, :cond_b

    if-nez v1, :cond_a

    .line 420
    new-instance p1, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    invoke-direct {p1, v2, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 424
    :cond_a
    new-instance p1, Lcom/google/common/collect/MinMaxPriorityQueue$c;

    iget-object v0, v1, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:Ljava/lang/Object;

    invoke-direct {p1, v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_b
    return-object v1
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 885
    :goto_0
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-ge v1, v2, :cond_0

    .line 886
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 888
    :cond_0
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->a:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 880
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$d;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 282
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->f:I

    .line 284
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    .line 936
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->c:I

    if-le v2, v4, :cond_1

    .line 946
    array-length v2, v3

    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 947
    :cond_0
    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    .line 948
    invoke-static {v2, v3}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v2

    :goto_0
    sub-int/2addr v2, v1

    .line 954
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 938
    new-array v2, v2, [Ljava/lang/Object;

    .line 939
    iget-object v3, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    array-length v4, v3

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    iput-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    .line 290
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object v2

    .line 550
    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b(ILjava/lang/Object;)I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 557
    :cond_2
    iget-object v2, v2, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move v0, v3

    .line 559
    :goto_1
    invoke-virtual {v2, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a(ILjava/lang/Object;)I

    .line 291
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    if-le v0, v6, :cond_4

    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_3

    goto :goto_2

    :cond_3
    return v5

    :cond_4
    :goto_2
    return v1
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 467
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 357
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 467
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    return-object v1
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->a()I

    move-result v0

    .line 302
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 467
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(I)Lcom/google/common/collect/MinMaxPriorityQueue$c;

    return-object v1

    .line 368
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .line 893
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->e:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 894
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
