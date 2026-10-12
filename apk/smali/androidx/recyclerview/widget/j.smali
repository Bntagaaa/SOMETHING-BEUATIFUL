.class final Landroidx/recyclerview/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/j$b;,
        Landroidx/recyclerview/widget/j$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/ThreadLocal;

.field public static final f:Ljava/util/Comparator;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:J

.field public c:J

.field public final d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/j;->e:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Landroidx/recyclerview/widget/j$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/j$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/j;->f:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/j;->a:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/j;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 265
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 311
    iget-object v0, v0, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 311
    invoke-interface {v0}, Landroidx/recyclerview/widget/b$b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 267
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 321
    iget-object v3, v3, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 321
    invoke-interface {v3, v2}, Landroidx/recyclerview/widget/b$b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 268
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 270
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 288
    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->k(IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 292
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_2

    .line 295
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 301
    :cond_2
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p1

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 306
    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempting to post unregistered view!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroidx/recyclerview/widget/j;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->b:J

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    .line 74
    iput p2, p1, Landroidx/recyclerview/widget/j$b;->a:I

    .line 75
    iput p3, p1, Landroidx/recyclerview/widget/j$b;->b:I

    return-void
.end method

.method public add(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 160
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/j;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView already present in worker list!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(J)V
    .locals 16

    move-object/from16 v1, p0

    .line 217
    iget-object v0, v1, Landroidx/recyclerview/widget/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 220
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 221
    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 222
    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    invoke-virtual {v7, v6, v3}, Landroidx/recyclerview/widget/j$b;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 223
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    iget v6, v6, Landroidx/recyclerview/widget/j$b;->d:I

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v4, v1, Landroidx/recyclerview/widget/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x1

    if-ge v5, v2, :cond_6

    .line 231
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 232
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_5

    .line 237
    :cond_2
    iget-object v9, v8, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    .line 238
    iget v10, v9, Landroidx/recyclerview/widget/j$b;->a:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, v9, Landroidx/recyclerview/widget/j$b;->b:I

    .line 239
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v11, v10

    const/4 v10, 0x0

    .line 240
    :goto_2
    iget v12, v9, Landroidx/recyclerview/widget/j$b;->d:I

    mul-int/lit8 v12, v12, 0x2

    if-ge v10, v12, :cond_5

    .line 242
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lt v6, v12, :cond_3

    .line 243
    new-instance v12, Landroidx/recyclerview/widget/j$c;

    invoke-direct {v12}, Landroidx/recyclerview/widget/j$c;-><init>()V

    .line 244
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 246
    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/recyclerview/widget/j$c;

    .line 248
    :goto_3
    iget-object v13, v9, Landroidx/recyclerview/widget/j$b;->c:[I

    add-int/lit8 v14, v10, 0x1

    aget v14, v13, v14

    if-gt v14, v11, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 250
    :goto_4
    iput-boolean v15, v12, Landroidx/recyclerview/widget/j$c;->a:Z

    .line 251
    iput v11, v12, Landroidx/recyclerview/widget/j$c;->b:I

    .line 252
    iput v14, v12, Landroidx/recyclerview/widget/j$c;->c:I

    .line 253
    iput-object v8, v12, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    aget v13, v13, v10

    iput v13, v12, Landroidx/recyclerview/widget/j$c;->e:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 261
    :cond_6
    sget-object v0, Landroidx/recyclerview/widget/j;->f:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 356
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 357
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/j$c;

    .line 358
    iget-object v5, v2, Landroidx/recyclerview/widget/j$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_7

    goto/16 :goto_b

    .line 344
    :cond_7
    iget-boolean v6, v2, Landroidx/recyclerview/widget/j$c;->a:Z

    if-eqz v6, :cond_8

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_7

    :cond_8
    move-wide/from16 v8, p1

    .line 345
    :goto_7
    iget v6, v2, Landroidx/recyclerview/widget/j$c;->e:I

    invoke-static {v5, v6, v8, v9}, Landroidx/recyclerview/widget/j;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 347
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_9

    .line 349
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 350
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v6

    if-nez v6, :cond_9

    .line 351
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v5, :cond_a

    :cond_9
    move-wide/from16 v10, p1

    goto :goto_a

    .line 316
    :cond_a
    iget-boolean v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v6, :cond_b

    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Landroidx/recyclerview/widget/b;

    .line 311
    iget-object v6, v6, Landroidx/recyclerview/widget/b;->a:Landroidx/recyclerview/widget/RecyclerView$e;

    .line 311
    invoke-interface {v6}, Landroidx/recyclerview/widget/b$b;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_b

    .line 320
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 324
    :cond_b
    iget-object v6, v5, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    .line 325
    invoke-virtual {v6, v5, v7}, Landroidx/recyclerview/widget/j$b;->a(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 327
    iget v8, v6, Landroidx/recyclerview/widget/j$b;->d:I

    if-eqz v8, :cond_9

    .line 329
    :try_start_0
    const-string v8, "RV Nested Prefetch"

    invoke-static {v8}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 330
    iget-object v8, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v9, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 13413
    iput v7, v8, Landroidx/recyclerview/widget/RecyclerView$State;->e:I

    .line 13414
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    iput v9, v8, Landroidx/recyclerview/widget/RecyclerView$State;->f:I

    .line 13415
    iput-boolean v3, v8, Landroidx/recyclerview/widget/RecyclerView$State;->h:Z

    .line 13416
    iput-boolean v3, v8, Landroidx/recyclerview/widget/RecyclerView$State;->i:Z

    .line 13417
    iput-boolean v3, v8, Landroidx/recyclerview/widget/RecyclerView$State;->j:Z

    const/4 v8, 0x0

    .line 331
    :goto_8
    iget v9, v6, Landroidx/recyclerview/widget/j$b;->d:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_c

    .line 334
    iget-object v9, v6, Landroidx/recyclerview/widget/j$b;->c:[I

    aget v9, v9, v8

    move-wide/from16 v10, p1

    .line 335
    invoke-static {v5, v9, v10, v11}, Landroidx/recyclerview/widget/j;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v8, v8, 0x2

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_c
    move-wide/from16 v10, p1

    .line 338
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    goto :goto_a

    :goto_9
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 339
    throw v0

    .line 362
    :goto_a
    invoke-virtual {v2}, Landroidx/recyclerview/widget/j$c;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    :cond_d
    :goto_b
    return-void
.end method

.method public remove(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/recyclerview/widget/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 168
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->sDebugAssertionsEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecyclerView removal failed!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 9

    const-wide/16 v0, 0x0

    .line 374
    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object v2, p0, Landroidx/recyclerview/widget/j;->a:Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 403
    :goto_0
    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->b:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void

    .line 383
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 386
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 388
    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    goto :goto_0

    .line 397
    :cond_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/recyclerview/widget/j;->c:J

    add-long/2addr v2, v4

    .line 399
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/j;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 403
    :goto_3
    iput-wide v0, p0, Landroidx/recyclerview/widget/j;->b:J

    .line 404
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    .line 405
    throw v2
.end method
