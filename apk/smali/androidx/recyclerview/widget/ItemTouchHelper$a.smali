.class Landroidx/recyclerview/widget/ItemTouchHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$a;->a:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$a;->a:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_d

    const-wide/high16 v2, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 748
    iput-wide v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    return-void

    .line 751
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 753
    iget-wide v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_1

    const-wide/16 v6, 0x0

    :goto_0
    move-wide v13, v6

    goto :goto_1

    :cond_1
    sub-long v6, v4, v6

    goto :goto_0

    .line 754
    :goto_1
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 755
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    if-nez v6, :cond_2

    .line 756
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    .line 760
    :cond_2
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 761
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 762
    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->j:F

    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    .line 763
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int v9, v6, v9

    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    .line 764
    iget v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->h:F

    cmpg-float v11, v10, v8

    if-gez v11, :cond_3

    if-gez v9, :cond_3

    :goto_2
    move v11, v9

    goto :goto_3

    :cond_3
    cmpl-float v9, v10, v8

    if-lez v9, :cond_4

    .line 767
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 768
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v6

    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 769
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v10, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    sub-int/2addr v6, v10

    sub-int/2addr v9, v6

    if-lez v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    .line 775
    :goto_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 776
    iget v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->k:F

    iget v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 777
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    sub-int/2addr v6, v9

    .line 778
    iget v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->i:F

    cmpg-float v10, v9, v8

    if-gez v10, :cond_5

    if-gez v6, :cond_5

    :goto_4
    move v7, v6

    goto :goto_5

    :cond_5
    cmpl-float v6, v9, v8

    if-lez v6, :cond_6

    .line 781
    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->A:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 782
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v1, v8

    sub-int/2addr v6, v1

    if-lez v6, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v11, :cond_7

    .line 789
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 790
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 791
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 789
    iget-object v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual/range {v8 .. v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v11

    :cond_7
    move v1, v11

    if-eqz v7, :cond_8

    .line 794
    iget-object v9, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 795
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v6, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 796
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 794
    iget-object v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->m:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move v11, v7

    invoke-virtual/range {v8 .. v14}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v7

    goto :goto_6

    :cond_8
    move v11, v7

    :goto_6
    if-nez v1, :cond_a

    if-eqz v7, :cond_9

    goto :goto_7

    .line 805
    :cond_9
    iput-wide v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    return-void

    .line 799
    :cond_a
    :goto_7
    iget-wide v8, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    cmp-long v6, v8, v2

    if-nez v6, :cond_b

    .line 800
    iput-wide v4, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->B:J

    .line 802
    :cond_b
    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 264
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->c:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_c

    .line 265
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->h(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 267
    :cond_c
    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->s:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 268
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method
