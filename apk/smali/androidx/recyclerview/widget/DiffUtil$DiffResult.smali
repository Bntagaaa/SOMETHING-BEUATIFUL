.class public Landroidx/recyclerview/widget/DiffUtil$DiffResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DiffResult"
.end annotation


# static fields
.field public static final NO_POSITION:I = -0x1


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:[I

.field public final c:[I

.field public final d:Landroidx/recyclerview/widget/DiffUtil$Callback;

.field public final e:I

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$Callback;Ljava/util/ArrayList;[I[IZ)V
    .locals 8

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    iput-object p2, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->a:Ljava/util/ArrayList;

    .line 666
    iput-object p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->b:[I

    .line 667
    iput-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->c:[I

    const/4 v0, 0x0

    .line 668
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 669
    invoke-static {p4, v0}, Ljava/util/Arrays;->fill([II)V

    .line 670
    iput-object p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->d:Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 671
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getOldListSize()I

    move-result p3

    iput p3, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->e:I

    .line 672
    invoke-virtual {p1}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getNewListSize()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->f:I

    .line 673
    iput-boolean p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->g:Z

    .line 683
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/DiffUtil$c;

    :goto_0
    if-eqz p4, :cond_1

    .line 685
    iget p5, p4, Landroidx/recyclerview/widget/DiffUtil$c;->a:I

    if-nez p5, :cond_1

    iget p4, p4, Landroidx/recyclerview/widget/DiffUtil$c;->b:I

    if-eqz p4, :cond_2

    .line 686
    :cond_1
    new-instance p4, Landroidx/recyclerview/widget/DiffUtil$c;

    invoke-direct {p4, v0, v0, v0}, Landroidx/recyclerview/widget/DiffUtil$c;-><init>(III)V

    invoke-virtual {p2, v0, p4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 689
    :cond_2
    new-instance p4, Landroidx/recyclerview/widget/DiffUtil$c;

    invoke-direct {p4, p3, p1, v0}, Landroidx/recyclerview/widget/DiffUtil$c;-><init>(III)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    iget-object p4, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->c:[I

    iget-object p5, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->b:[I

    iget-object v1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->d:Landroidx/recyclerview/widget/DiffUtil$Callback;

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/DiffUtil$c;

    const/4 v2, 0x0

    .line 699
    :goto_1
    iget v3, p3, Landroidx/recyclerview/widget/DiffUtil$c;->c:I

    if-ge v2, v3, :cond_3

    .line 700
    iget v3, p3, Landroidx/recyclerview/widget/DiffUtil$c;->a:I

    add-int/2addr v3, v2

    .line 701
    iget v4, p3, Landroidx/recyclerview/widget/DiffUtil$c;->b:I

    add-int/2addr v4, v2

    .line 702
    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x2

    :goto_2
    shl-int/lit8 v6, v4, 0x4

    or-int/2addr v6, v5

    .line 704
    aput v6, p5, v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    .line 705
    aput v3, p4, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 709
    :cond_5
    iget-boolean p1, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->g:Z

    if-eqz p1, :cond_b

    .line 719
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DiffUtil$c;

    .line 720
    :goto_4
    iget v3, v2, Landroidx/recyclerview/widget/DiffUtil$c;->a:I

    if-ge p3, v3, :cond_a

    .line 721
    aget v3, p5, p3

    if-nez v3, :cond_9

    .line 739
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v4, v3, :cond_9

    .line 741
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/DiffUtil$c;

    .line 742
    :goto_6
    iget v7, v6, Landroidx/recyclerview/widget/DiffUtil$c;->b:I

    if-ge v5, v7, :cond_8

    .line 744
    aget v7, p4, v5

    if-nez v7, :cond_7

    .line 745
    invoke-virtual {v1, p3, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areItemsTheSame(II)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 748
    invoke-virtual {v1, p3, v5}, Landroidx/recyclerview/widget/DiffUtil$Callback;->areContentsTheSame(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x8

    goto :goto_7

    :cond_6
    const/4 v3, 0x4

    :goto_7
    shl-int/lit8 v4, v5, 0x4

    or-int/2addr v4, v3

    .line 752
    aput v4, p5, p3

    shl-int/lit8 v4, p3, 0x4

    or-int/2addr v3, v4

    .line 753
    aput v3, p4, v5

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 492
    :cond_8
    iget v5, v6, Landroidx/recyclerview/widget/DiffUtil$c;->c:I

    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    :goto_8
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 488
    :cond_a
    iget p3, v2, Landroidx/recyclerview/widget/DiffUtil$c;->c:I

    add-int/2addr p3, v3

    goto :goto_3

    :cond_b
    return-void
.end method

.method public static a(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$d;
    .locals 2

    .line 976
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 977
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 978
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$d;

    .line 979
    iget v1, v0, Landroidx/recyclerview/widget/DiffUtil$d;->a:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, v0, Landroidx/recyclerview/widget/DiffUtil$d;->c:Z

    if-ne v1, p2, :cond_0

    .line 981
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 985
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 987
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$d;

    if-eqz p2, :cond_2

    .line 989
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    goto :goto_0

    .line 991
    :cond_2
    iget v1, p1, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public convertNewPositionToOld(I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 795
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->f:I

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 799
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->c:[I

    aget p1, v0, p1

    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    shr-int/lit8 p1, p1, 0x4

    return p1

    .line 796
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index out of bounds - passed position = "

    const-string v3, ", new list size = "

    .line 0
    invoke-static {p1, v0, v2, v3}, L_COROUTINE/a;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 796
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public convertOldPositionToNew(I)I
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 773
    iget v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->e:I

    if-ltz p1, :cond_1

    if-ge p1, v0, :cond_1

    .line 777
    iget-object v0, p0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->b:[I

    aget p1, v0, p1

    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    shr-int/lit8 p1, p1, 0x4

    return p1

    .line 774
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Index out of bounds - passed position = "

    const-string v3, ", old list size = "

    .line 0
    invoke-static {p1, v0, v2, v3}, L_COROUTINE/a;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 774
    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 18
    .param p1    # Landroidx/recyclerview/widget/ListUpdateCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 855
    instance-of v2, v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    if-eqz v2, :cond_0

    .line 856
    check-cast v1, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    goto :goto_0

    .line 858
    :cond_0
    new-instance v2, Landroidx/recyclerview/widget/BatchingListUpdateCallback;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    move-object v1, v2

    .line 870
    :goto_0
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 877
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget v6, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->e:I

    iget v7, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->f:I

    move v8, v7

    move v7, v6

    :goto_1
    if-ltz v4, :cond_b

    .line 878
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/DiffUtil$c;

    .line 488
    iget v10, v9, Landroidx/recyclerview/widget/DiffUtil$c;->a:I

    .line 488
    iget v11, v9, Landroidx/recyclerview/widget/DiffUtil$c;->c:I

    add-int/2addr v10, v11

    .line 492
    iget v12, v9, Landroidx/recyclerview/widget/DiffUtil$c;->b:I

    add-int v13, v12, v11

    .line 884
    :goto_2
    iget-object v14, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->b:[I

    iget-object v15, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->d:Landroidx/recyclerview/widget/DiffUtil$Callback;

    const/16 p1, 0x1

    const/4 v5, 0x0

    if-le v7, v10, :cond_4

    add-int/lit8 v7, v7, -0x1

    .line 887
    aget v14, v14, v7

    and-int/lit8 v16, v14, 0xc

    if-eqz v16, :cond_3

    move-object/from16 v16, v3

    shr-int/lit8 v3, v14, 0x4

    .line 891
    invoke-static {v2, v3, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->a(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$d;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 895
    iget v5, v5, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    sub-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    .line 896
    invoke-virtual {v1, v7, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_1

    .line 898
    invoke-virtual {v15, v7, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v3

    const/4 v14, 0x1

    .line 899
    invoke-virtual {v1, v5, v14, v3}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x1

    .line 903
    new-instance v3, Landroidx/recyclerview/widget/DiffUtil$d;

    sub-int v5, v6, v7

    sub-int/2addr v5, v14

    invoke-direct {v3, v7, v5, v14}, Landroidx/recyclerview/widget/DiffUtil$d;-><init>(IIZ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move-object/from16 v16, v3

    const/4 v14, 0x1

    .line 911
    invoke-virtual {v1, v7, v14}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onRemoved(II)V

    add-int/lit8 v6, v6, -0x1

    :goto_3
    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v16, v3

    :goto_4
    if-le v8, v13, :cond_8

    add-int/lit8 v8, v8, -0x1

    .line 918
    iget-object v3, v0, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->c:[I

    aget v3, v3, v8

    and-int/lit8 v10, v3, 0xc

    if-eqz v10, :cond_6

    shr-int/lit8 v10, v3, 0x4

    const/4 v5, 0x1

    .line 924
    invoke-static {v2, v10, v5}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->a(Ljava/util/ArrayDeque;IZ)Landroidx/recyclerview/widget/DiffUtil$d;

    move-result-object v0

    if-nez v0, :cond_5

    .line 929
    new-instance v0, Landroidx/recyclerview/widget/DiffUtil$d;

    sub-int v3, v6, v7

    const/4 v10, 0x0

    invoke-direct {v0, v8, v3, v10}, Landroidx/recyclerview/widget/DiffUtil$d;-><init>(IIZ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    goto :goto_5

    :cond_5
    const/16 v17, 0x0

    .line 938
    iget v0, v0, Landroidx/recyclerview/widget/DiffUtil$d;->b:I

    sub-int v0, v6, v0

    sub-int/2addr v0, v5

    .line 939
    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onMoved(II)V

    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_7

    .line 941
    invoke-virtual {v15, v10, v8}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v0

    .line 942
    invoke-virtual {v1, v7, v5, v0}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    const/4 v5, 0x1

    const/16 v17, 0x0

    .line 947
    invoke-virtual {v1, v7, v5}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onInserted(II)V

    add-int/lit8 v6, v6, 0x1

    :cond_7
    :goto_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_8
    const/16 v17, 0x0

    .line 954
    iget v7, v9, Landroidx/recyclerview/widget/DiffUtil$c;->a:I

    move v0, v7

    move v3, v12

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v11, :cond_a

    .line 956
    aget v8, v14, v0

    and-int/lit8 v8, v8, 0xf

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9

    .line 957
    invoke-virtual {v15, v0, v3}, Landroidx/recyclerview/widget/DiffUtil$Callback;->getChangePayload(II)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    .line 958
    invoke-virtual {v1, v0, v9, v8}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    goto :goto_7

    :cond_9
    const/4 v9, 0x1

    :goto_7
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v9, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    move v8, v12

    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 967
    :cond_b
    invoke-virtual {v1}, Landroidx/recyclerview/widget/BatchingListUpdateCallback;->dispatchLastEvent()V

    return-void
.end method

.method public dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 840
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    return-void
.end method
