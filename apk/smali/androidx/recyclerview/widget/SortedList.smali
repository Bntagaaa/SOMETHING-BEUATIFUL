.class public Landroidx/recyclerview/widget/SortedList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SortedList$BatchedCallback;,
        Landroidx/recyclerview/widget/SortedList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:I

.field public f:Landroidx/recyclerview/widget/SortedList$Callback;

.field public g:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

.field public h:I

.field public final i:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/16 v0, 0xa

    .line 93
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SortedList;-><init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroidx/recyclerview/widget/SortedList$Callback;I)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/SortedList$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/recyclerview/widget/SortedList$Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    .line 105
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    .line 106
    iput-object p2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)I
    .locals 7

    .line 544
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    const/4 v4, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->c([Ljava/lang/Object;IIILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 547
    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    if-ge p1, v1, :cond_2

    .line 548
    iget-object v1, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 549
    iget-object v4, v0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v1, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 550
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {p2, v1, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 552
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aput-object v5, p2, p1

    return p1

    .line 555
    :cond_1
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aput-object v5, p2, p1

    .line 556
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {p2, v1, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, p1, v3, v1}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    return p1

    .line 795
    :cond_2
    :goto_0
    iget v1, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    if-gt p1, v1, :cond_5

    .line 799
    iget-object v4, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    array-length v6, v4

    if-ne v1, v6, :cond_3

    .line 801
    array-length v1, v4

    add-int/lit8 v1, v1, 0xa

    iget-object v4, v0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 802
    iget-object v4, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    invoke-static {v4, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    aput-object v5, v1, p1

    .line 804
    iget-object v2, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    add-int/lit8 v4, p1, 0x1

    iget v5, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 805
    iput-object v1, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    .line 808
    invoke-static {v4, p1, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v1, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aput-object v5, v1, p1

    .line 811
    :goto_1
    iget v1, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/2addr v1, v3

    iput v1, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    if-eqz p2, :cond_4

    .line 563
    iget-object p2, v0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {p2, p1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    :cond_4
    return p1

    .line 796
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "cannot add item to "

    const-string v2, " because size is "

    .line 0
    invoke-static {p1, v1, v2}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 796
    iget v1, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public add(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    const/4 v0, 0x1

    .line 146
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->a(Ljava/lang/Object;Z)I

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 196
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public addAll([Ljava/lang/Object;Z)V
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 165
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->b([Ljava/lang/Object;)V

    return-void

    .line 815
    :cond_1
    array-length p2, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 816
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SortedList;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public final b([Ljava/lang/Object;)V
    .locals 9

    .line 254
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->f([Ljava/lang/Object;)I

    move-result v0

    .line 260
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 261
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    .line 262
    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 263
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {p1, v3, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    return-void

    .line 410
    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v2, v2, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v2, :cond_2

    .line 412
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    .line 415
    :cond_2
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iput-object v4, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    .line 416
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    .line 417
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->d:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0xa

    .line 420
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    .line 421
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 424
    :cond_3
    :goto_0
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    iget v5, p0, Landroidx/recyclerview/widget/SortedList;->d:I

    if-lt v4, v5, :cond_4

    if-ge v3, v0, :cond_6

    :cond_4
    if-ne v4, v5, :cond_5

    sub-int/2addr v0, v3

    .line 428
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    invoke-static {p1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 430
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 431
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    sub-int/2addr p1, v0

    invoke-interface {v1, p1, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_1

    :cond_5
    if-ne v3, v0, :cond_8

    sub-int/2addr v5, v4

    .line 438
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    invoke-static {p1, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    :cond_6
    :goto_1
    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    if-nez v2, :cond_7

    .line 472
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    :cond_7
    :goto_2
    return-void

    .line 443
    :cond_8
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    aget-object v4, v5, v4

    .line 444
    aget-object v5, p1, v3

    .line 445
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_9

    .line 448
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    aput-object v5, v4, v6

    .line 449
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/lit8 v3, v3, 0x1

    .line 451
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v4, v6, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    :cond_9
    if-nez v6, :cond_a

    .line 452
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 454
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v7, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    aput-object v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    .line 456
    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    .line 457
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 458
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v7, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    sub-int/2addr v7, v1

    .line 459
    invoke-virtual {v6, v4, v5}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 458
    invoke-virtual {v6, v7, v1, v4}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 464
    :cond_a
    iget-object v5, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    aput-object v4, v5, v6

    .line 465
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    goto/16 :goto_0
.end method

.method public beginBatchedUpdates()V
    .locals 2

    .line 520
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 521
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->g:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v1, :cond_1

    .line 525
    new-instance v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;-><init>(Landroidx/recyclerview/widget/SortedList$Callback;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/SortedList;->g:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    .line 527
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->g:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    return-void
.end method

.method public final c([Ljava/lang/Object;IIILjava/lang/Object;)I
    .locals 5

    :goto_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p2, p3, :cond_a

    add-int v2, p2, p3

    .line 746
    div-int/lit8 v2, v2, 0x2

    .line 747
    aget-object v3, p1, v2

    .line 748
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p5}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_0
    if-nez v4, :cond_9

    .line 752
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {p1, v3, p5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_6

    :cond_1
    add-int/lit8 p1, v2, -0x1

    :goto_1
    if-lt p1, p2, :cond_4

    .line 772
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aget-object v3, v3, p1

    .line 773
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p5}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 777
    :cond_2
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, p5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 p1, v2, 0x1

    :goto_3
    if-ge p1, p3, :cond_7

    .line 782
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aget-object p2, p2, p1

    .line 783
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, p2, p5}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 787
    :cond_5
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, p2, p5}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    const/4 p1, -0x1

    :goto_5
    if-ne p4, v1, :cond_8

    if-ne p1, v0, :cond_8

    :goto_6
    return v2

    :cond_8
    return p1

    :cond_9
    move p3, v2

    goto :goto_0

    :cond_a
    if-ne p4, v1, :cond_b

    return p2

    :cond_b
    return v0
.end method

.method public clear()V
    .locals 4

    .line 824
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 825
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    if-nez v0, :cond_0

    return-void

    .line 829
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 830
    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 831
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v1, v3, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    return-void
.end method

.method public final d(IZ)V
    .locals 4

    .line 604
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    sub-int/2addr v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 606
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    if-eqz p2, :cond_0

    .line 608
    iget-object p2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {p2, p1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_0
    return-void
.end method

.method public final e([Ljava/lang/Object;)V
    .locals 7

    .line 270
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v0, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    :cond_0
    const/4 v1, 0x0

    .line 275
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    .line 276
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->d:I

    .line 277
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    .line 279
    iput v1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 280
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->f([Ljava/lang/Object;)I

    move-result v1

    .line 281
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    .line 283
    :cond_1
    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    if-lt v2, v1, :cond_2

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->d:I

    if-ge v3, v4, :cond_4

    .line 284
    :cond_2
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->d:I

    if-lt v3, v4, :cond_3

    sub-int/2addr v1, v2

    .line 287
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    invoke-static {p1, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 289
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 290
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {p1, v2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_1

    :cond_3
    if-lt v2, v1, :cond_6

    sub-int/2addr v4, v3

    .line 295
    iget p1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    sub-int/2addr p1, v4

    iput p1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 296
    iget-object p1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {p1, v2, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 328
    iput-object p1, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 331
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    :cond_5
    return-void

    .line 300
    :cond_6
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    aget-object v3, v4, v3

    .line 301
    aget-object v2, p1, v2

    .line 303
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gez v4, :cond_7

    .line 343
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    sub-int/2addr v2, v5

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 344
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr v2, v5

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    .line 345
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    invoke-interface {v2, v3, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    goto :goto_0

    :cond_7
    if-lez v4, :cond_8

    .line 336
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    aput-object v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    .line 337
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 338
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/2addr v2, v5

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 339
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v2, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    .line 309
    :cond_8
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 343
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    sub-int/2addr v3, v5

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 344
    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr v3, v5

    iput v3, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    .line 345
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    invoke-interface {v3, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 336
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    aput-object v2, v3, v4

    add-int/lit8 v2, v4, 0x1

    .line 337
    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 338
    iget v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    add-int/2addr v2, v5

    iput v2, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    .line 339
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v2, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto/16 :goto_0

    .line 315
    :cond_9
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    aput-object v2, v4, v6

    .line 316
    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr v4, v5

    iput v4, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr v6, v5

    .line 317
    iput v6, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    .line 318
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    iget v6, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    sub-int/2addr v6, v5

    .line 322
    invoke-virtual {v4, v3, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 321
    invoke-virtual {v4, v6, v5, v2}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public endBatchedUpdates()V
    .locals 2

    .line 534
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 535
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    instance-of v1, v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-eqz v1, :cond_0

    .line 536
    check-cast v0, Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 538
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->g:Landroidx/recyclerview/widget/SortedList$BatchedCallback;

    if-ne v0, v1, :cond_1

    .line 539
    iget-object v0, v1, Landroidx/recyclerview/widget/SortedList$BatchedCallback;->a:Landroidx/recyclerview/widget/SortedList$Callback;

    iput-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    :cond_1
    return-void
.end method

.method public final f([Ljava/lang/Object;)I
    .locals 9

    .line 355
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 367
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_7

    .line 368
    aget-object v3, p1, v0

    .line 370
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    aget-object v5, p1, v2

    invoke-virtual {v4, v5, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_5

    move v4, v2

    :goto_1
    const/4 v5, -0x1

    if-ge v4, v1, :cond_2

    .line 399
    iget-object v6, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    aget-object v7, p1, v4

    invoke-virtual {v6, v7, v3}, Landroidx/recyclerview/widget/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :goto_2
    if-eq v4, v5, :cond_3

    .line 377
    aput-object v3, p1, v4

    goto :goto_3

    :cond_3
    if-eq v1, v0, :cond_4

    .line 381
    aput-object v3, p1, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    if-eq v1, v0, :cond_6

    .line 388
    aput-object v3, p1, v1

    :cond_6
    add-int/lit8 v2, v1, 0x1

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method public final g()V
    .locals 2

    .line 481
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Data cannot be mutated in the middle of a batch update operation such as addAll or replaceAll."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 707
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    if-ge p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 711
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 714
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    if-lt p1, v1, :cond_0

    sub-int/2addr p1, v1

    .line 715
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->c:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1

    .line 718
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 708
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Asked to get item at "

    const-string v2, " but size is "

    .line 0
    invoke-static {p1, v1, v2}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 708
    iget v1, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 731
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/recyclerview/widget/SortedList;->e:I

    const/4 v5, 0x4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/SortedList;->c([Ljava/lang/Object;IIILjava/lang/Object;)I

    move-result p1

    move-object v0, v1

    move-object v5, v6

    const/4 v6, -0x1

    if-eq p1, v6, :cond_0

    return p1

    .line 735
    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/SortedList;->b:[Ljava/lang/Object;

    iget v2, v0, Landroidx/recyclerview/widget/SortedList;->c:I

    iget v3, v0, Landroidx/recyclerview/widget/SortedList;->d:I

    const/4 v4, 0x4

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->c([Ljava/lang/Object;IIILjava/lang/Object;)I

    move-result p1

    if-eq p1, v6, :cond_1

    .line 737
    iget v1, v0, Landroidx/recyclerview/widget/SortedList;->c:I

    sub-int/2addr p1, v1

    iget v1, v0, Landroidx/recyclerview/widget/SortedList;->e:I

    add-int/2addr p1, v1

    return p1

    :cond_1
    return v6

    :cond_2
    move-object v0, p0

    move-object v5, p1

    .line 741
    iget-object v1, v0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v3, v0, Landroidx/recyclerview/widget/SortedList;->h:I

    const/4 v4, 0x4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->c([Ljava/lang/Object;IIILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public recalculatePositionOfItemAt(I)V
    .locals 2

    .line 687
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 689
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 690
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->d(IZ)V

    .line 691
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/SortedList;->a(Ljava/lang/Object;Z)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 693
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v1, p1, v0}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 576
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 595
    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    iget v3, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    const/4 v4, 0x2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/SortedList;->c([Ljava/lang/Object;IIILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    .line 599
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->d(IZ)V

    return v1
.end method

.method public removeItemAt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 589
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    .line 590
    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/SortedList;->d(IZ)V

    return-object v0
.end method

.method public replaceAll(Ljava/util/Collection;)V
    .locals 2
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 250
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs replaceAll([Ljava/lang/Object;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/SortedList;->replaceAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public replaceAll([Ljava/lang/Object;Z)V
    .locals 2
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    if-eqz p2, :cond_0

    .line 222
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->e([Ljava/lang/Object;)V

    return-void

    .line 815
    :cond_0
    array-length p2, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->i:Ljava/lang/Class;

    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 816
    array-length v1, p1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/SortedList;->e([Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/recyclerview/widget/SortedList;->h:I

    return v0
.end method

.method public updateItemAt(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SortedList;->g()V

    .line 634
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_1

    .line 636
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eq v0, p2, :cond_2

    .line 639
    iget-object v4, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v4, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2

    .line 641
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->a:[Ljava/lang/Object;

    aput-object p2, v2, p1

    if-eqz v3, :cond_4

    .line 643
    iget-object v2, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v2, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p1, v1, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    .line 649
    iget-object v3, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-virtual {v3, v0, p2}, Landroidx/recyclerview/widget/SortedList$Callback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, p1, v1, v0}, Landroidx/recyclerview/widget/SortedList$Callback;->onChanged(IILjava/lang/Object;)V

    .line 652
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/SortedList;->d(IZ)V

    .line 653
    invoke-virtual {p0, p2, v2}, Landroidx/recyclerview/widget/SortedList;->a(Ljava/lang/Object;Z)I

    move-result p2

    if-eq p1, p2, :cond_4

    .line 655
    iget-object v0, p0, Landroidx/recyclerview/widget/SortedList;->f:Landroidx/recyclerview/widget/SortedList$Callback;

    invoke-interface {v0, p1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    :cond_4
    return-void
.end method
