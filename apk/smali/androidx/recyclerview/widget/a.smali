.class final Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/s$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/a$a;,
        Landroidx/recyclerview/widget/a$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/core/util/Pools$SimplePool;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/recyclerview/widget/RecyclerView$f;

.field public final e:Landroidx/recyclerview/widget/s;

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$f;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/core/util/Pools$SimplePool;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/recyclerview/widget/a;->f:I

    .line 76
    iput-object p1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 78
    new-instance p1, Landroidx/recyclerview/widget/s;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/s;-><init>(Landroidx/recyclerview/widget/a;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/a;->e:Landroidx/recyclerview/widget/s;

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 411
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 413
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    .line 414
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 415
    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v4

    if-ne v4, p1, :cond_2

    return v7

    :cond_0
    if-ne v5, v7, :cond_2

    .line 420
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v4, v5

    :goto_1
    if-ge v5, v4, :cond_2

    add-int/lit8 v6, v3, 0x1

    .line 422
    invoke-virtual {p0, v5, v6}, Landroidx/recyclerview/widget/a;->f(II)I

    move-result v6

    if-ne v6, p1, :cond_1

    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public applyPendingUpdatesToPosition(I)I
    .locals 6

    .line 588
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 590
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    .line 591
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v4, p1, :cond_1

    .line 608
    iget p1, v3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_1

    :cond_1
    if-ge v4, p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 613
    :cond_2
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v3, p1, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 598
    :cond_3
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v4, p1, :cond_6

    .line 599
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v4, v3

    if-le v4, p1, :cond_4

    const/4 p1, -0x1

    return p1

    :cond_4
    sub-int/2addr p1, v3

    goto :goto_1

    .line 593
    :cond_5
    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v4, p1, :cond_6

    .line 594
    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v3

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return p1
.end method

.method public final b()V
    .locals 6

    .line 119
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 121
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    iget-object v5, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/a$a;->onDispatchSecondPass(Landroidx/recyclerview/widget/a$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->j(Ljava/util/ArrayList;)V

    .line 124
    iput v2, p0, Landroidx/recyclerview/widget/a;->f:I

    return-void
.end method

.method public final c()V
    .locals 8

    .line 557
    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->b()V

    .line 558
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 560
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    .line 561
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->a:I

    iget-object v6, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    const/4 v7, 0x4

    if-eq v5, v7, :cond_1

    const/16 v7, 0x8

    if-eq v5, v7, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/a$a;->onDispatchSecondPass(Landroidx/recyclerview/widget/a$b;)V

    .line 576
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v6, v5, v4}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForMove(II)V

    goto :goto_1

    .line 571
    :cond_1
    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/a$a;->onDispatchSecondPass(Landroidx/recyclerview/widget/a$b;)V

    .line 572
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    iget v7, v4, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v4, v4, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v6, v5, v7, v4}, Landroidx/recyclerview/widget/a$a;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_1

    .line 567
    :cond_2
    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/a$a;->onDispatchSecondPass(Landroidx/recyclerview/widget/a$b;)V

    .line 568
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v6, v5, v4}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_1

    .line 563
    :cond_3
    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/a$a;->onDispatchSecondPass(Landroidx/recyclerview/widget/a$b;)V

    .line 564
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v4, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v6, v5, v4}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForAdd(II)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->j(Ljava/util/ArrayList;)V

    .line 584
    iput v2, p0, Landroidx/recyclerview/widget/a;->f:I

    return-void
.end method

.method public final d(Landroidx/recyclerview/widget/a$b;)V
    .locals 11

    .line 231
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v2, 0x8

    if-eq v0, v2, :cond_8

    .line 245
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    invoke-virtual {p0, v2, v0}, Landroidx/recyclerview/widget/a;->k(II)I

    move-result v0

    .line 250
    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    .line 252
    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "op should be remove or update."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 262
    :goto_1
    iget v8, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v6, v8, :cond_6

    .line 263
    iget v8, p1, Landroidx/recyclerview/widget/a$b;->b:I

    mul-int v9, v3, v6

    add-int/2addr v9, v8

    .line 264
    iget v8, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-virtual {p0, v9, v8}, Landroidx/recyclerview/widget/a;->k(II)I

    move-result v8

    .line 269
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v9, v4, :cond_3

    if-eq v9, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v10, v0, 0x1

    if-ne v8, v10, :cond_4

    goto :goto_2

    :cond_3
    if-ne v8, v0, :cond_4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 281
    :cond_4
    :goto_3
    iget-object v10, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v9, v0, v7, v10}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    .line 285
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;I)V

    .line 286
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    .line 287
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v0, v5, :cond_5

    add-int/2addr v2, v7

    :cond_5
    move v0, v8

    const/4 v7, 0x1

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 294
    :cond_6
    iget-object v1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 295
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    if-lez v7, :cond_7

    .line 297
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-virtual {p0, p1, v0, v7, v1}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;I)V

    .line 302
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    :cond_7
    return-void

    .line 232
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroidx/recyclerview/widget/a$b;I)V
    .locals 3

    .line 315
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/a$a;->onDispatchFirstPass(Landroidx/recyclerview/widget/a$b;)V

    .line 316
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 321
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroidx/recyclerview/widget/a$a;->markViewHoldersUpdated(IILjava/lang/Object;)V

    return-void

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :cond_1
    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, p2, p1}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForRemovingInvisible(II)V

    return-void
.end method

.method public final f(II)I
    .locals 6

    .line 472
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_6

    .line 474
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    .line 475
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 476
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v3, p1, :cond_0

    .line 477
    iget p1, v2, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 482
    :cond_1
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v2, p1, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 486
    :cond_2
    iget v4, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v4, p1, :cond_5

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 488
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v4, v2

    if-ge p1, v4, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    sub-int/2addr p1, v2

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 493
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v2

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return p1
.end method

.method public final g()Z
    .locals 1

    .line 460
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/a$b;)V
    .locals 3

    .line 439
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    iget-object v1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 445
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForMove(II)V

    return-void

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown update op type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2, p1}, Landroidx/recyclerview/widget/a$a;->markViewHoldersUpdated(IILjava/lang/Object;)V

    return-void

    .line 448
    :cond_2
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    return-void

    .line 442
    :cond_3
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v1, v0, p1}, Landroidx/recyclerview/widget/a$a;->offsetPositionsForAdd(II)V

    return-void
.end method

.method public final i()V
    .locals 17

    move-object/from16 v0, p0

    .line 93
    iget-object v1, v0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/recyclerview/widget/a;->e:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v6, 0x0

    :goto_1
    const/4 v7, -0x1

    const/16 v8, 0x8

    if-ltz v3, :cond_3

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/a$b;

    .line 216
    iget v9, v9, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v9, v8, :cond_1

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    :goto_2
    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v3, v7, :cond_22

    add-int/lit8 v8, v3, 0x1

    .line 39
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/a$b;

    .line 40
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/a$b;

    .line 41
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v13, v4, :cond_1d

    iget-object v7, v2, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/a;

    if-eq v13, v10, :cond_b

    if-eq v13, v9, :cond_4

    goto :goto_0

    .line 179
    :cond_4
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->d:I

    iget v10, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v5, v10, :cond_5

    add-int/lit8 v10, v10, -0x1

    .line 180
    iput v10, v12, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_3

    .line 181
    :cond_5
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v10, v13

    if-ge v5, v10, :cond_6

    add-int/lit8 v13, v13, -0x1

    .line 183
    iput v13, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 184
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget-object v10, v12, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v7, v9, v5, v4, v10}, Landroidx/recyclerview/widget/s$a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v4

    goto :goto_4

    :cond_6
    :goto_3
    move-object v4, v6

    .line 187
    :goto_4
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v10, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v5, v10, :cond_7

    add-int/lit8 v10, v10, 0x1

    .line 188
    iput v10, v12, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_5

    .line 189
    :cond_7
    iget v13, v12, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v10, v13

    if-ge v5, v10, :cond_8

    sub-int/2addr v10, v5

    add-int/lit8 v5, v5, 0x1

    .line 192
    iget-object v6, v12, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v7, v9, v5, v10, v6}, Landroidx/recyclerview/widget/s$a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v6

    .line 195
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v5, v10

    iput v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 197
    :cond_8
    :goto_5
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    if-lez v5, :cond_9

    .line 199
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 201
    :cond_9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    invoke-interface {v7, v12}, Landroidx/recyclerview/widget/s$a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    :goto_6
    if-eqz v4, :cond_a

    .line 205
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_a
    if-eqz v6, :cond_0

    .line 208
    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 61
    :cond_b
    iget v9, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v13, v11, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v9, v13, :cond_d

    .line 63
    iget v14, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v14, v9, :cond_c

    iget v14, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int v9, v13, v9

    if-ne v14, v9, :cond_c

    const/4 v5, 0x1

    :goto_7
    const/4 v9, 0x0

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    goto :goto_7

    .line 69
    :cond_d
    iget v14, v12, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v15, v13, 0x1

    if-ne v14, v15, :cond_e

    iget v14, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v9, v13

    if-ne v14, v9, :cond_e

    const/4 v5, 0x1

    :goto_8
    const/4 v9, 0x1

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    goto :goto_8

    .line 76
    :goto_9
    iget v14, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v13, v14, :cond_f

    add-int/lit8 v14, v14, -0x1

    .line 77
    iput v14, v12, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_a

    .line 78
    :cond_f
    iget v15, v12, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v14, v15

    if-ge v13, v14, :cond_10

    add-int/lit8 v15, v15, -0x1

    .line 80
    iput v15, v12, Landroidx/recyclerview/widget/a$b;->d:I

    .line 81
    iput v10, v11, Landroidx/recyclerview/widget/a$b;->a:I

    .line 82
    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 83
    iget v3, v12, Landroidx/recyclerview/widget/a$b;->d:I

    if-nez v3, :cond_0

    .line 84
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 85
    invoke-interface {v7, v12}, Landroidx/recyclerview/widget/s$a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    goto/16 :goto_0

    .line 92
    :cond_10
    :goto_a
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v13, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v4, v13, :cond_11

    add-int/lit8 v13, v13, 0x1

    .line 93
    iput v13, v12, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_b

    .line 94
    :cond_11
    iget v14, v12, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v13, v14

    if-ge v4, v13, :cond_12

    sub-int/2addr v13, v4

    add-int/lit8 v4, v4, 0x1

    .line 97
    invoke-interface {v7, v10, v4, v13, v6}, Landroidx/recyclerview/widget/s$a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v6

    .line 98
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v10, v12, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int/2addr v4, v10

    iput v4, v12, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_12
    :goto_b
    if-eqz v5, :cond_13

    .line 103
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 105
    invoke-interface {v7, v11}, Landroidx/recyclerview/widget/s$a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    goto/16 :goto_0

    :cond_13
    if-eqz v9, :cond_17

    if-eqz v6, :cond_15

    .line 112
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v4, v5, :cond_14

    .line 113
    iget v5, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 115
    :cond_14
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v4, v5, :cond_15

    .line 116
    iget v5, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 119
    :cond_15
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v4, v5, :cond_16

    .line 120
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 122
    :cond_16
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v4, v5, :cond_1b

    .line 123
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_c

    :cond_17
    if-eqz v6, :cond_19

    .line 127
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v4, v5, :cond_18

    .line 128
    iget v5, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 130
    :cond_18
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v4, v5, :cond_19

    .line 131
    iget v5, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 134
    :cond_19
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v4, v5, :cond_1a

    .line 135
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 137
    :cond_1a
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    iget v5, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v4, v5, :cond_1b

    .line 138
    iget v5, v12, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v4, v5

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    .line 142
    :cond_1b
    :goto_c
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v11, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v4, v5, :cond_1c

    .line 144
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 146
    :cond_1c
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_d
    if-eqz v6, :cond_0

    .line 149
    invoke-virtual {v1, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 157
    :cond_1d
    iget v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    iget v6, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v4, v6, :cond_1e

    const/4 v5, -0x1

    goto :goto_e

    :cond_1e
    const/4 v5, 0x0

    .line 160
    :goto_e
    iget v7, v11, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v7, v6, :cond_1f

    add-int/lit8 v5, v5, 0x1

    :cond_1f
    if-gt v6, v7, :cond_20

    .line 164
    iget v6, v12, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v7, v6

    iput v7, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 166
    :cond_20
    iget v6, v12, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v6, v4, :cond_21

    .line 167
    iget v7, v12, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v4, v7

    iput v4, v11, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_21
    add-int/2addr v6, v5

    .line 169
    iput v6, v12, Landroidx/recyclerview/widget/a$b;->b:I

    .line 170
    invoke-virtual {v1, v3, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v1, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    :cond_22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_36

    .line 96
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/a$b;

    .line 97
    iget v12, v11, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v12, v4, :cond_35

    iget-object v13, v0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/RecyclerView$f;

    if-eq v12, v10, :cond_2c

    if-eq v12, v9, :cond_24

    if-eq v12, v8, :cond_23

    goto/16 :goto_19

    .line 130
    :cond_23
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->h(Landroidx/recyclerview/widget/a$b;)V

    goto/16 :goto_19

    .line 188
    :cond_24
    iget v12, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 190
    iget v14, v11, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v14, v12

    move v15, v12

    const/4 v5, 0x0

    :goto_10
    if-ge v12, v14, :cond_29

    .line 193
    invoke-interface {v13, v12}, Landroidx/recyclerview/widget/a$a;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v16

    if-nez v16, :cond_27

    .line 194
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->a(I)Z

    move-result v16

    if-eqz v16, :cond_25

    goto :goto_11

    :cond_25
    if-ne v7, v4, :cond_26

    .line 205
    iget-object v7, v11, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v9, v15, v5, v7}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v5

    .line 207
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->h(Landroidx/recyclerview/widget/a$b;)V

    move v15, v12

    const/4 v5, 0x0

    :cond_26
    const/4 v7, 0x0

    goto :goto_12

    :cond_27
    :goto_11
    if-nez v7, :cond_28

    .line 196
    iget-object v7, v11, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v9, v15, v5, v7}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v5

    .line 198
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    move v15, v12

    const/4 v5, 0x0

    :cond_28
    const/4 v7, 0x1

    :goto_12
    add-int/2addr v5, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    .line 215
    :cond_29
    iget v12, v11, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v5, v12, :cond_2a

    .line 216
    iget-object v12, v11, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 217
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    .line 218
    invoke-virtual {v0, v9, v15, v5, v12}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v11

    :cond_2a
    if-nez v7, :cond_2b

    .line 221
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_19

    .line 223
    :cond_2b
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->h(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_19

    .line 134
    :cond_2c
    iget v5, v11, Landroidx/recyclerview/widget/a$b;->b:I

    .line 136
    iget v7, v11, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v7, v5

    move v12, v5

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_13
    if-ge v12, v7, :cond_32

    .line 140
    invoke-interface {v13, v12}, Landroidx/recyclerview/widget/a$a;->findViewHolder(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v16

    if-nez v16, :cond_2f

    .line 141
    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/a;->a(I)Z

    move-result v16

    if-eqz v16, :cond_2d

    goto :goto_15

    :cond_2d
    if-ne v15, v4, :cond_2e

    .line 162
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v15

    .line 163
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/a;->h(Landroidx/recyclerview/widget/a$b;)V

    const/4 v15, 0x1

    goto :goto_14

    :cond_2e
    const/4 v15, 0x0

    :goto_14
    const/16 v16, 0x0

    goto :goto_17

    :cond_2f
    :goto_15
    if-nez v15, :cond_30

    .line 151
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v15

    .line 152
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    const/4 v15, 0x1

    goto :goto_16

    :cond_30
    const/4 v15, 0x0

    :goto_16
    const/16 v16, 0x1

    :goto_17
    if-eqz v15, :cond_31

    sub-int/2addr v12, v14

    sub-int/2addr v7, v14

    const/4 v14, 0x1

    goto :goto_18

    :cond_31
    add-int/lit8 v14, v14, 0x1

    :goto_18
    add-int/2addr v12, v4

    move/from16 v15, v16

    goto :goto_13

    .line 176
    :cond_32
    iget v7, v11, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v14, v7, :cond_33

    .line 177
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    .line 178
    invoke-virtual {v0, v10, v5, v14, v6}, Landroidx/recyclerview/widget/a;->obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v11

    :cond_33
    if-nez v15, :cond_34

    .line 181
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_19

    .line 183
    :cond_34
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->h(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_19

    .line 432
    :cond_35
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/a;->h(Landroidx/recyclerview/widget/a$b;)V

    :goto_19
    add-int/lit8 v3, v3, 0x1

    const/4 v7, -0x1

    goto/16 :goto_f

    .line 115
    :cond_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final j(Ljava/util/ArrayList;)V
    .locals 3

    .line 748
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 750
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final k(II)I
    .locals 9

    .line 330
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/16 v3, 0x8

    if-ltz v1, :cond_d

    .line 332
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    .line 333
    iget v5, v4, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v6, 0x2

    if-ne v5, v3, :cond_8

    .line 335
    iget v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, v4, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v3, v5, :cond_0

    move v7, v3

    move v8, v5

    goto :goto_1

    :cond_0
    move v8, v3

    move v7, v5

    :goto_1
    if-lt p1, v7, :cond_6

    if-gt p1, v8, :cond_6

    if-ne v7, v3, :cond_3

    if-ne p2, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 346
    iput v5, v4, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_2

    :cond_1
    if-ne p2, v6, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 348
    iput v5, v4, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_2
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 354
    iput v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_3

    :cond_4
    if-ne p2, v6, :cond_5

    add-int/lit8 v3, v3, -0x1

    .line 356
    iput v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    if-ge p1, v3, :cond_c

    if-ne p2, v2, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 364
    iput v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v5, v5, 0x1

    .line 365
    iput v5, v4, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_4

    :cond_7
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    .line 367
    iput v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/lit8 v5, v5, -0x1

    .line 368
    iput v5, v4, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_4

    .line 372
    :cond_8
    iget v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_a

    if-ne v5, v2, :cond_9

    .line 374
    iget v3, v4, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr p1, v3

    goto :goto_4

    :cond_9
    if-ne v5, v6, :cond_c

    .line 376
    iget v3, v4, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v3

    goto :goto_4

    :cond_a
    if-ne p2, v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    .line 380
    iput v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_4

    :cond_b
    if-ne p2, v6, :cond_c

    add-int/lit8 v3, v3, -0x1

    .line 382
    iput v3, v4, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 395
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5
    if-ltz p2, :cond_11

    .line 396
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/a$b;

    .line 397
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v2, v3, :cond_f

    .line 398
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->d:I

    iget v4, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-eq v2, v4, :cond_e

    if-gez v2, :cond_10

    .line 399
    :cond_e
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 400
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_6

    .line 402
    :cond_f
    iget v2, v1, Landroidx/recyclerview/widget/a$b;->d:I

    if-gtz v2, :cond_10

    .line 403
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/a;->recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V

    :cond_10
    :goto_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    :cond_11
    return p1
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    .locals 1

    .line 727
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/core/util/Pools$SimplePool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Landroidx/recyclerview/widget/a$b;

    .line 651
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    .line 653
    iput p2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 654
    iput p3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 655
    iput-object p4, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    return-object v0

    .line 731
    :cond_0
    iput p1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    .line 732
    iput p2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    .line 733
    iput p3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    .line 734
    iput-object p4, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public recycleUpdateOp(Landroidx/recyclerview/widget/a$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 742
    iput-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    .line 743
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Landroidx/core/util/Pools$SimplePool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method
