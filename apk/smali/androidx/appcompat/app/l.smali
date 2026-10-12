.class Landroidx/appcompat/app/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 17

    .line 1025
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    move-object/from16 v1, p0

    .line 1026
    iget-object v2, v1, Landroidx/appcompat/app/l;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    .line 2336
    iget-object v4, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_e

    .line 2337
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_e

    .line 2338
    iget-object v4, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2339
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2342
    iget-object v7, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_c

    .line 2343
    iget-object v7, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    .line 2344
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Landroid/graphics/Rect;

    .line 2345
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:Landroid/graphics/Rect;

    .line 2347
    :cond_0
    iget-object v7, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->d0:Landroid/graphics/Rect;

    .line 2348
    iget-object v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->e0:Landroid/graphics/Rect;

    .line 2353
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v10

    .line 2354
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v11

    .line 2355
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v12

    .line 2356
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v13

    .line 2352
    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 2359
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroid/view/ViewGroup;

    invoke-static {v10, v7, v9}, Landroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2360
    iget v9, v7, Landroid/graphics/Rect;->top:I

    .line 2361
    iget v10, v7, Landroid/graphics/Rect;->left:I

    .line 2362
    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 2367
    iget-object v11, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroid/view/ViewGroup;

    invoke-static {v11}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 2369
    :cond_1
    invoke-virtual {v11}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v12

    :goto_0
    if-nez v11, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    .line 2371
    :cond_2
    invoke-virtual {v11}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v11

    .line 2373
    :goto_1
    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v9, :cond_4

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v10, :cond_4

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v7, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    .line 2376
    :cond_4
    :goto_2
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2377
    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2378
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v7, 0x1

    .line 2381
    :goto_3
    iget-object v10, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->k:Landroid/content/Context;

    if-lez v9, :cond_5

    iget-object v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    if-nez v9, :cond_5

    .line 2382
    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    .line 2383
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2384
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v14, 0x33

    const/4 v15, -0x1

    invoke-direct {v9, v15, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2386
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2387
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2388
    iget-object v11, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->B:Landroid/view/ViewGroup;

    iget-object v12, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    invoke-virtual {v11, v12, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 2389
    :cond_5
    iget-object v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    if-eqz v9, :cond_7

    .line 2391
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2392
    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v14, :cond_6

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v12, :cond_6

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v11, :cond_7

    .line 2394
    :cond_6
    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2395
    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2396
    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2397
    iget-object v11, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2403
    :cond_7
    :goto_4
    iget-object v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_a

    .line 2405
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_a

    .line 2407
    iget-object v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    .line 2437
    invoke-static {v9}, Landroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v11

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_9

    .line 2440
    sget v11, Landroidx/appcompat/R$color;->abc_decor_view_status_guard_light:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    goto :goto_6

    .line 2441
    :cond_9
    sget v11, Landroidx/appcompat/R$color;->abc_decor_view_status_guard:I

    invoke-static {v10, v11}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    .line 2439
    :goto_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2414
    :cond_a
    iget-boolean v9, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->I:Z

    if-nez v9, :cond_b

    if-eqz v8, :cond_b

    const/4 v3, 0x0

    :cond_b
    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto :goto_7

    .line 2419
    :cond_c
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_d

    .line 2421
    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v7, 0x0

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_f

    .line 2425
    iget-object v8, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    .line 2429
    :cond_f
    :goto_8
    iget-object v2, v2, Landroidx/appcompat/app/AppCompatDelegateImpl;->D:Landroid/view/View;

    if-eqz v2, :cond_11

    if-eqz v7, :cond_10

    goto :goto_9

    :cond_10
    const/16 v5, 0x8

    .line 2430
    :goto_9
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eq v0, v3, :cond_12

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    move-object/from16 v5, p2

    .line 1029
    invoke-virtual {v5, v0, v3, v2, v4}, Landroidx/core/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    :goto_a
    move-object/from16 v2, p1

    goto :goto_b

    :cond_12
    move-object/from16 v5, p2

    move-object v0, v5

    goto :goto_a

    .line 1037
    :goto_b
    invoke-static {v2, v0}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
