.class Landroidx/recyclerview/widget/RecyclerView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/view/animation/Interpolator;

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 5775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 5767
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    .line 5770
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->e:Z

    .line 5773
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->f:Z

    .line 5776
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 5936
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5937
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->f:Z

    return-void

    .line 5944
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5945
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public fling(II)V
    .locals 12

    const/4 v0, 0x2

    .line 5949
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    const/4 v0, 0x0

    .line 5950
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->b:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:I

    .line 5954
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->d:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v2, :cond_0

    .line 5955
    iput-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$l;->d:Landroid/view/animation/Interpolator;

    .line 5956
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    .line 5958
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5960
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->a()V

    return-void
.end method

.method public run()V
    .locals 13

    .line 5781
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->g:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_0

    .line 5782
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->stop()V

    return-void

    :cond_0
    const/4 v8, 0x0

    .line 5786
    iput-boolean v8, p0, Landroidx/recyclerview/widget/RecyclerView$l;->f:Z

    const/4 v9, 0x1

    .line 5787
    iput-boolean v9, p0, Landroidx/recyclerview/widget/RecyclerView$l;->e:Z

    .line 5789
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5801
    iget-object v10, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    .line 5802
    invoke-virtual {v10}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5803
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 5804
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 5805
    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:I

    sub-int v3, v1, v3

    .line 5806
    iget v4, p0, Landroidx/recyclerview/widget/RecyclerView$l;->b:I

    sub-int v4, v2, v4

    .line 5807
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:I

    .line 5808
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$l;->b:I

    .line 5810
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInHorizontalStretch(I)I

    move-result v1

    .line 5811
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInVerticalStretch(I)I

    move-result v2

    .line 5817
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v3, v8

    .line 5818
    aput v8, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 5819
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5821
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v4, v3, v8

    sub-int/2addr v1, v4

    .line 5822
    aget v3, v3, v9

    sub-int/2addr v2, v3

    .line 5827
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v3

    const/4 v11, 0x2

    if-eq v3, v11, :cond_2

    .line 5828
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5832
    :cond_2
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_6

    .line 5833
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v3, v8

    .line 5834
    aput v8, v3, v9

    .line 5835
    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5836
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v4, v3, v8

    .line 5837
    aget v3, v3, v9

    sub-int/2addr v1, v4

    sub-int/2addr v2, v3

    .line 5843
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v5, :cond_5

    .line 5844
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v6

    if-nez v6, :cond_5

    .line 5845
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5846
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 5848
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    .line 5849
    :cond_3
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v7

    if-lt v7, v6, :cond_4

    sub-int/2addr v6, v9

    .line 5850
    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5851
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(II)V

    goto :goto_0

    .line 5853
    :cond_4
    invoke-virtual {v5, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(II)V

    :cond_5
    :goto_0
    move v12, v3

    move v3, v1

    move v1, v4

    move v4, v2

    move v2, v12

    goto :goto_1

    :cond_6
    move v3, v1

    move v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5858
    :goto_1
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 5859
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5863
    :cond_7
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v7, v8

    .line 5864
    aput v8, v7, v9

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 5865
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 5867
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v5, v8

    sub-int/2addr v3, v6

    .line 5868
    aget v5, v5, v9

    sub-int/2addr v4, v5

    if-nez v1, :cond_8

    if-eqz v2, :cond_9

    .line 5871
    :cond_8
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5874
    :cond_9
    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 5875
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5883
    :cond_a
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v6

    if-ne v5, v6, :cond_b

    const/4 v5, 0x1

    goto :goto_2

    :cond_b
    const/4 v5, 0x0

    .line 5884
    :goto_2
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    invoke-virtual {v10}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v7

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    goto :goto_3

    :cond_c
    const/4 v6, 0x0

    .line 5885
    :goto_3
    invoke-virtual {v10}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_f

    if-nez v5, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    if-nez v6, :cond_f

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    goto :goto_5

    :cond_f
    :goto_4
    const/4 v5, 0x1

    .line 5892
    :goto_5
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v6, :cond_10

    .line 5894
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v5, :cond_17

    .line 5900
    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    if-eq v1, v11, :cond_15

    .line 5901
    invoke-virtual {v10}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    if-gez v3, :cond_11

    neg-int v2, v1

    goto :goto_6

    :cond_11
    if-lez v3, :cond_12

    move v2, v1

    goto :goto_6

    :cond_12
    const/4 v2, 0x0

    :goto_6
    if-gez v4, :cond_13

    neg-int v1, v1

    goto :goto_7

    :cond_13
    if-lez v4, :cond_14

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    .line 5904
    :goto_7
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5907
    :cond_15
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v1, :cond_18

    .line 5908
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/j$b;

    .line 152
    iget-object v2, v1, Landroidx/recyclerview/widget/j$b;->c:[I

    if-eqz v2, :cond_16

    const/4 v3, -0x1

    .line 153
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 155
    :cond_16
    iput v8, v1, Landroidx/recyclerview/widget/j$b;->d:I

    goto :goto_9

    .line 5913
    :cond_17
    :goto_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->a()V

    .line 5914
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/j;

    if-eqz v3, :cond_18

    .line 5915
    invoke-virtual {v3, v0, v1, v2}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 5920
    :cond_18
    :goto_9
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_19

    .line 5922
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5923
    invoke-virtual {v1, v8, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(II)V

    .line 5926
    :cond_19
    iput-boolean v8, p0, Landroidx/recyclerview/widget/RecyclerView$l;->e:Z

    .line 5927
    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->f:Z

    if-eqz v1, :cond_1a

    .line 5944
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5945
    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 5930
    :cond_1a
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5931
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 9
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 5979
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$l;->g:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p3, v0, :cond_3

    .line 6017
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 6018
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p3, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 6020
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    int-to-float p3, p3

    int-to-float v0, v4

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p3, v0

    const/high16 v0, 0x43960000    # 300.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    const/16 v0, 0x7d0

    .line 6025
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_3
    move v8, p3

    if-nez p4, :cond_4

    .line 5983
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 5988
    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$l;->d:Landroid/view/animation/Interpolator;

    if-eq p3, p4, :cond_5

    .line 5989
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$l;->d:Landroid/view/animation/Interpolator;

    .line 5990
    new-instance p3, Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    .line 5994
    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->b:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->a:I

    const/4 p3, 0x2

    .line 5997
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5998
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 6000
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_6

    .line 6004
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 6007
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$l;->a()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 6029
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->g:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6030
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$l;->c:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method
