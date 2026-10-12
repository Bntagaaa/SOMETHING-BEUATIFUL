.class final Lcom/google/common/collect/LinkedHashMultimap$b;
.super Lcom/google/common/collect/Sets$k;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/LinkedHashMultimap$c;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedHashMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$k<",
        "TV;>;",
        "Lcom/google/common/collect/LinkedHashMultimap$c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:[Lcom/google/common/collect/LinkedHashMultimap$a;

.field public c:I

.field public d:I

.field public e:Lcom/google/common/collect/LinkedHashMultimap$c;

.field public f:Lcom/google/common/collect/LinkedHashMultimap$c;

.field public final synthetic g:Lcom/google/common/collect/LinkedHashMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$k;-><init>()V

    const/4 p1, 0x0

    .line 319
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    .line 320
    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 328
    iput-object p2, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->a:Ljava/lang/Object;

    .line 329
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    .line 330
    iput-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 332
    invoke-static {p3, p1, p2}, Lcom/google/common/collect/e2;->a(ID)I

    move-result p1

    .line 335
    new-array p1, p1, [Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 336
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 425
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 427
    aget-object v1, v1, v2

    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    .line 429
    invoke-virtual {v4, v0, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->a(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p1, 0x0

    return p1

    .line 428
    :cond_0
    iget-object v4, v4, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    goto :goto_0

    .line 434
    :cond_1
    new-instance v4, Lcom/google/common/collect/LinkedHashMultimap$a;

    iget-object v5, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->a:Ljava/lang/Object;

    invoke-direct {v4, v5, p1, v0, v1}, Lcom/google/common/collect/LinkedHashMultimap$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 435
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    .line 125
    invoke-interface {p1, v4}, Lcom/google/common/collect/LinkedHashMultimap$c;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 126
    invoke-interface {v4, p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 125
    invoke-interface {v4, p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 126
    invoke-interface {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap$c;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 77
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->g:Lcom/google/common/collect/LinkedHashMultimap;

    iget-object v0, p1, Lcom/google/common/collect/LinkedHashMultimap;->i:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 437
    invoke-virtual {v0}, Lcom/google/common/collect/LinkedHashMultimap$a;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v0

    .line 77
    invoke-static {v0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->o(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 77
    iget-object p1, p1, Lcom/google/common/collect/LinkedHashMultimap;->i:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 130
    invoke-virtual {v4, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->setSuccessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 131
    invoke-virtual {p1, v4}, Lcom/google/common/collect/LinkedHashMultimap$a;->setPredecessorInMultimap(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 439
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    aput-object v4, p1, v2

    .line 440
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    .line 441
    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    .line 447
    array-length v1, p1

    int-to-double v4, v0

    int-to-double v6, v1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v8, v8, v6

    cmpl-double v0, v4, v8

    if-lez v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ge v1, v0, :cond_2

    .line 449
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x2

    new-array v0, p1, [Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 450
    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    sub-int/2addr p1, v3

    .line 452
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    :goto_1
    if-eq v1, p0, :cond_2

    .line 455
    move-object v2, v1

    check-cast v2, Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 456
    iget v4, v2, Lcom/google/common/collect/LinkedHashMultimap$a;->c:I

    and-int/2addr v4, p1

    .line 457
    aget-object v5, v0, v4

    iput-object v5, v2, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 458
    aput-object v2, v0, v4

    .line 454
    invoke-interface {v1}, Lcom/google/common/collect/LinkedHashMultimap$c;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v1

    goto :goto_1

    :cond_2
    return v3
.end method

.method public clear()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 492
    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    .line 493
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    :goto_0
    if-eq v0, p0, :cond_0

    .line 496
    move-object v1, v0

    check-cast v1, Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 139
    invoke-virtual {v1}, Lcom/google/common/collect/LinkedHashMultimap$a;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedHashMultimap$a;->getSuccessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/common/collect/LinkedHashMultimap;->o(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 495
    invoke-interface {v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 126
    invoke-interface {p0, p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 500
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 412
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 340
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 413
    aget-object v1, v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 416
    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->a(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 415
    :cond_0
    iget-object v1, v1, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$b$a;-><init>(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 466
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/2addr v2, v0

    .line 469
    aget-object v1, v1, v2

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 472
    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->a(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    .line 475
    iget-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->b:[Lcom/google/common/collect/LinkedHashMultimap$a;

    iget-object v0, v1, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    aput-object v0, p1, v2

    goto :goto_1

    .line 477
    :cond_0
    iget-object p1, v1, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    iput-object p1, v4, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 135
    :goto_1
    invoke-interface {v1}, Lcom/google/common/collect/LinkedHashMultimap$c;->getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object p1

    invoke-interface {v1}, Lcom/google/common/collect/LinkedHashMultimap$c;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    .line 125
    invoke-interface {p1, v0}, Lcom/google/common/collect/LinkedHashMultimap$c;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 126
    invoke-interface {v0, p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 139
    invoke-virtual {v1}, Lcom/google/common/collect/LinkedHashMultimap$a;->getPredecessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/LinkedHashMultimap$a;->getSuccessorInMultimap()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/LinkedHashMultimap;->o(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 481
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    .line 482
    iget p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->d:I

    return v3

    .line 471
    :cond_1
    iget-object v4, v1, Lcom/google/common/collect/LinkedHashMultimap$a;->d:Lcom/google/common/collect/LinkedHashMultimap$a;

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->f:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-void
.end method

.method public setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/LinkedHashMultimap$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->e:Lcom/google/common/collect/LinkedHashMultimap$c;

    return-void
.end method

.method public size()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap$b;->c:I

    return v0
.end method
