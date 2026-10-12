.class final Landroidx/viewpager2/widget/f;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/f$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public final b:Landroidx/viewpager2/widget/ViewPager2;

.field public final c:Landroidx/recyclerview/widget/RecyclerView;

.field public final d:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public e:I

.field public f:I

.field public final g:Landroidx/viewpager2/widget/f$a;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 77
    iput-object p1, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 78
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->j:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    new-instance p1, Landroidx/viewpager2/widget/f$a;

    invoke-direct {p1}, Landroidx/viewpager2/widget/f$a;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    .line 82
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 415
    iget v0, p0, Landroidx/viewpager2/widget/f;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/f;->f:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iget v0, p0, Landroidx/viewpager2/widget/f;->f:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 423
    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 424
    iget-object v0, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 87
    iput v0, p0, Landroidx/viewpager2/widget/f;->f:I

    .line 88
    iget-object v1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    const/4 v2, -0x1

    .line 455
    iput v2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    const/4 v3, 0x0

    .line 456
    iput v3, v1, Landroidx/viewpager2/widget/f$a;->b:F

    .line 457
    iput v0, v1, Landroidx/viewpager2/widget/f$a;->c:I

    .line 89
    iput v2, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 90
    iput v2, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 91
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    .line 92
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->k:Z

    .line 93
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->m:Z

    .line 94
    iput-boolean v0, p0, Landroidx/viewpager2/widget/f;->l:Z

    return-void
.end method

.method public final d(Z)V
    .locals 2

    .line 286
    iput-boolean p1, p0, Landroidx/viewpager2/widget/f;->m:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 287
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/f;->e:I

    .line 288
    iget p1, p0, Landroidx/viewpager2/widget/f;->i:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 291
    iput p1, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 293
    iput v1, p0, Landroidx/viewpager2/widget/f;->i:I

    goto :goto_1

    .line 294
    :cond_1
    iget p1, p0, Landroidx/viewpager2/widget/f;->h:I

    if-ne p1, v1, :cond_2

    .line 442
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 296
    iput p1, p0, Landroidx/viewpager2/widget/f;->h:I

    .line 298
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/f;->b(I)V

    return-void
.end method

.method public final e()V
    .locals 13

    .line 225
    iget-object v0, p0, Landroidx/viewpager2/widget/f;->d:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    iput v1, v2, Landroidx/viewpager2/widget/f$a;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    .line 455
    iput v5, v2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 456
    iput v4, v2, Landroidx/viewpager2/widget/f$a;->b:F

    .line 457
    iput v3, v2, Landroidx/viewpager2/widget/f$a;->c:I

    return-void

    .line 230
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 455
    iput v5, v2, Landroidx/viewpager2/widget/f$a;->a:I

    .line 456
    iput v4, v2, Landroidx/viewpager2/widget/f$a;->b:F

    .line 457
    iput v3, v2, Landroidx/viewpager2/widget/f$a;->c:I

    return-void

    .line 236
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v5

    .line 237
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v6

    .line 238
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v7

    .line 239
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v8

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 242
    instance-of v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_2

    .line 243
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v10

    .line 245
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v10

    .line 246
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v10

    .line 247
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    .line 250
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    add-int/2addr v9, v8

    .line 251
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v6

    .line 253
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v6

    iget-object v10, p0, Landroidx/viewpager2/widget/f;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v11, 0x1

    if-nez v6, :cond_4

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v10}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v1, v5

    .line 586
    iget-object v5, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v5, v5, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 586
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v5

    if-ne v5, v11, :cond_3

    neg-int v1, v1

    :cond_3
    move v9, v8

    goto :goto_0

    .line 263
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v10}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    :goto_0
    neg-int v1, v1

    .line 266
    iput v1, v2, Landroidx/viewpager2/widget/f$a;->c:I

    if-gez v1, :cond_12

    .line 270
    new-instance v1, Landroidx/viewpager2/widget/b;

    .line 66
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_9

    .line 71
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    .line 72
    new-array v6, v5, [I

    aput v5, v6, v11

    aput v1, v6, v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_b

    .line 74
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 78
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 80
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_7

    .line 81
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_3

    .line 83
    :cond_7
    sget-object v8, Landroidx/viewpager2/widget/b;->a:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    :goto_3
    aget-object v9, v5, v6

    if-eqz v4, :cond_8

    .line 86
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_4
    sub-int/2addr v10, v12

    goto :goto_5

    .line 87
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :goto_5
    aput v10, v9, v3

    .line 88
    aget-object v9, v5, v6

    if-eqz v4, :cond_9

    .line 89
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_6
    add-int/2addr v7, v8

    goto :goto_7

    .line 90
    :cond_9
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6

    :goto_7
    aput v7, v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 76
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null view contained in the view hierarchy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_b
    new-instance v4, Landroidx/viewpager2/widget/a;

    .line 94
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {v5, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v4, 0x1

    :goto_8
    if-ge v4, v1, :cond_d

    add-int/lit8 v6, v4, -0x1

    .line 103
    aget-object v6, v5, v6

    aget v6, v6, v11

    aget-object v7, v5, v4

    aget v7, v7, v3

    if-eq v6, v7, :cond_c

    goto :goto_a

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 109
    :cond_d
    aget-object v4, v5, v3

    aget v6, v4, v11

    aget v4, v4, v3

    sub-int/2addr v6, v4

    if-gtz v4, :cond_f

    sub-int/2addr v1, v11

    .line 110
    aget-object v1, v5, v1

    aget v1, v1, v11

    if-ge v1, v6, :cond_e

    goto :goto_a

    .line 60
    :cond_e
    :goto_9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-gt v1, v11, :cond_11

    .line 117
    :cond_f
    :goto_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    :goto_b
    if-ge v3, v1, :cond_11

    .line 119
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroidx/viewpager2/widget/b;->a(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 271
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, v2, Landroidx/viewpager2/widget/f$a;->c:I

    const-string v2, "Page can only be offset by a positive amount, not by "

    .line 0
    invoke-static {v1, v2}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    if-nez v9, :cond_13

    goto :goto_c

    :cond_13
    int-to-float v0, v1

    int-to-float v1, v9

    div-float v4, v0, v1

    .line 282
    :goto_c
    iput v4, v2, Landroidx/viewpager2/widget/f$a;->b:F

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 104
    iget p1, p0, Landroidx/viewpager2/widget/f;->e:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget v2, p0, Landroidx/viewpager2/widget/f;->f:I

    if-eq v2, v1, :cond_1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 107
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/f;->d(Z)V

    return-void

    :cond_1
    const/4 v2, 0x4

    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-ne p2, v4, :cond_4

    .line 115
    iget-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    if-eqz p1, :cond_c

    .line 116
    invoke-virtual {p0, v4}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 118
    iput-boolean v1, p0, Landroidx/viewpager2/widget/f;->j:Z

    return-void

    :cond_4
    if-eq p1, v1, :cond_6

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 124
    :cond_6
    :goto_2
    iget-object p1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    if-nez p2, :cond_9

    .line 126
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    .line 127
    iget-boolean v1, p0, Landroidx/viewpager2/widget/f;->k:Z

    if-nez v1, :cond_7

    .line 132
    iget v1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    if-eq v1, v2, :cond_8

    .line 436
    iget-object v3, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v3, :cond_8

    const/4 v5, 0x0

    .line 437
    invoke-virtual {v3, v1, v5, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    goto :goto_3

    .line 136
    :cond_7
    iget v1, p1, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez v1, :cond_9

    .line 144
    iget v1, p0, Landroidx/viewpager2/widget/f;->h:I

    iget v3, p1, Landroidx/viewpager2/widget/f$a;->a:I

    if-eq v1, v3, :cond_8

    .line 145
    invoke-virtual {p0, v3}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 151
    :cond_8
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 152
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    .line 156
    :cond_9
    iget v1, p0, Landroidx/viewpager2/widget/f;->e:I

    if-ne v1, v4, :cond_c

    if-nez p2, :cond_c

    iget-boolean p2, p0, Landroidx/viewpager2/widget/f;->l:Z

    if-eqz p2, :cond_c

    .line 158
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    .line 159
    iget p2, p1, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez p2, :cond_c

    .line 160
    iget p2, p0, Landroidx/viewpager2/widget/f;->i:I

    iget p1, p1, Landroidx/viewpager2/widget/f$a;->a:I

    if-eq p2, p1, :cond_b

    if-ne p1, v2, :cond_a

    const/4 p1, 0x0

    .line 161
    :cond_a
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 164
    :cond_b
    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 165
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    :cond_c
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Landroidx/viewpager2/widget/f;->k:Z

    .line 177
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->e()V

    .line 179
    iget-boolean v0, p0, Landroidx/viewpager2/widget/f;->j:Z

    iget-object v1, p0, Landroidx/viewpager2/widget/f;->g:Landroidx/viewpager2/widget/f$a;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 181
    iput-boolean v3, p0, Landroidx/viewpager2/widget/f;->j:Z

    if-gtz p3, :cond_2

    if-nez p3, :cond_3

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 586
    :goto_0
    iget-object p3, p0, Landroidx/viewpager2/widget/f;->b:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p3, p3, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 586
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p3

    if-ne p3, p1, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    if-ne p2, p3, :cond_3

    .line 186
    :cond_2
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->c:I

    if-eqz p2, :cond_3

    .line 187
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    add-int/2addr p2, p1

    goto :goto_2

    :cond_3
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    :goto_2
    iput p2, p0, Landroidx/viewpager2/widget/f;->i:I

    .line 188
    iget p3, p0, Landroidx/viewpager2/widget/f;->h:I

    if-eq p3, p2, :cond_6

    .line 189
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/f;->a(I)V

    goto :goto_3

    .line 191
    :cond_4
    iget p2, p0, Landroidx/viewpager2/widget/f;->e:I

    if-nez p2, :cond_6

    .line 194
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    if-ne p2, v2, :cond_5

    const/4 p2, 0x0

    .line 196
    :cond_5
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/f;->a(I)V

    .line 200
    :cond_6
    :goto_3
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    if-ne p2, v2, :cond_7

    const/4 p2, 0x0

    :cond_7
    iget p3, v1, Landroidx/viewpager2/widget/f$a;->b:F

    iget v0, v1, Landroidx/viewpager2/widget/f$a;->c:I

    .line 436
    iget-object v4, p0, Landroidx/viewpager2/widget/f;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz v4, :cond_8

    .line 437
    invoke-virtual {v4, p2, p3, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    .line 205
    :cond_8
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->a:I

    iget p3, p0, Landroidx/viewpager2/widget/f;->i:I

    if-eq p2, p3, :cond_9

    if-ne p3, v2, :cond_a

    :cond_9
    iget p2, v1, Landroidx/viewpager2/widget/f$a;->c:I

    if-nez p2, :cond_a

    iget p2, p0, Landroidx/viewpager2/widget/f;->f:I

    if-eq p2, p1, :cond_a

    .line 213
    invoke-virtual {p0, v3}, Landroidx/viewpager2/widget/f;->b(I)V

    .line 214
    invoke-virtual {p0}, Landroidx/viewpager2/widget/f;->c()V

    :cond_a
    return-void
.end method
