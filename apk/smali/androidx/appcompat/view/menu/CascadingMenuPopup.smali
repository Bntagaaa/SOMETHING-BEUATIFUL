.class final Landroidx/appcompat/view/menu/CascadingMenuPopup;
.super Landroidx/appcompat/view/menu/d;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/CascadingMenuPopup$d;,
        Landroidx/appcompat/view/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field public static final B:I


# instance fields
.field public A:Z

.field public final b:Landroid/content/Context;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Landroid/os/Handler;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final k:Landroid/view/View$OnAttachStateChangeListener;

.field public final l:Landroidx/appcompat/widget/MenuItemHoverListener;

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:I

.field public r:Z

.field public s:Z

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field public y:Landroid/view/ViewTreeObserver;

.field public z:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    sget v0, Landroidx/appcompat/R$layout;->abc_cascading_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 223
    invoke-direct {p0}, Landroidx/appcompat/view/menu/d;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$a;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 119
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$b;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 137
    new-instance v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$c;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$c;-><init>(Landroidx/appcompat/view/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Landroidx/appcompat/widget/MenuItemHoverListener;

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:I

    .line 198
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    .line 224
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->b:Landroid/content/Context;

    .line 225
    iput-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    .line 226
    iput p3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->d:I

    .line 227
    iput p4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->e:I

    .line 228
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Z

    .line 230
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    .line 316
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 231
    :goto_0
    iput v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p2, p2, 0x2

    sget p3, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 235
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 234
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c:I

    .line 237
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->g:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 370
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 371
    new-instance v4, Landroidx/appcompat/view/menu/MenuAdapter;

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->f:Z

    sget v6, Landroidx/appcompat/view/menu/CascadingMenuPopup;->B:I

    invoke-direct {v4, v1, v3, v5, v6}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    .line 377
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_0

    iget-boolean v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    if-eqz v5, :cond_0

    .line 379
    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 382
    invoke-static {v1}, Landroidx/appcompat/view/menu/d;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 386
    iget v7, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->c:I

    invoke-static {v4, v5, v2, v7}, Landroidx/appcompat/view/menu/d;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v7

    .line 246
    new-instance v8, Landroidx/appcompat/widget/MenuPopupWindow;

    iget v9, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->d:I

    iget v10, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->e:I

    invoke-direct {v8, v2, v5, v9, v10}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 248
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->l:Landroidx/appcompat/widget/MenuItemHoverListener;

    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    .line 249
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 251
    iget-object v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 252
    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 253
    invoke-virtual {v8, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setModal(Z)V

    const/4 v2, 0x2

    .line 254
    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 388
    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 389
    invoke-virtual {v8, v7}, Landroidx/appcompat/widget/ListPopupWindow;->setContentWidth(I)V

    .line 390
    iget v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 394
    iget-object v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_b

    .line 395
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 538
    iget-object v11, v9, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 517
    invoke-virtual {v11}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_3

    .line 518
    invoke-virtual {v11, v13}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    .line 519
    invoke-interface {v14}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v15

    if-ne v1, v15, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    move-object v14, v5

    :goto_2
    if-nez v14, :cond_4

    move-object v2, v5

    const/16 v16, 0x1

    goto :goto_7

    .line 547
    :cond_4
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 548
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .line 549
    instance-of v13, v12, Landroid/widget/HeaderViewListAdapter;

    if-eqz v13, :cond_5

    .line 550
    check-cast v12, Landroid/widget/HeaderViewListAdapter;

    .line 551
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v13

    .line 552
    invoke-virtual {v12}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    goto :goto_3

    .line 555
    :cond_5
    check-cast v12, Landroidx/appcompat/view/menu/MenuAdapter;

    const/4 v13, 0x0

    .line 560
    :goto_3
    invoke-virtual {v12}, Landroidx/appcompat/view/menu/MenuAdapter;->getCount()I

    move-result v15

    const/4 v6, 0x0

    const/16 v16, 0x1

    :goto_4
    const/4 v2, -0x1

    if-ge v6, v15, :cond_7

    .line 561
    invoke-virtual {v12, v6}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v14, v5, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_4

    :cond_7
    const/4 v6, -0x1

    :goto_5
    if-ne v6, v2, :cond_9

    :cond_8
    :goto_6
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    add-int/2addr v6, v13

    .line 575
    invoke-virtual {v11}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v6, v2

    if-ltz v6, :cond_8

    .line 576
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v6, v2, :cond_a

    goto :goto_6

    .line 581
    :cond_a
    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_b
    const/16 v16, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_7
    if-eqz v2, :cond_15

    .line 404
    invoke-virtual {v8, v10}, Landroidx/appcompat/widget/MenuPopupWindow;->setTouchModal(Z)V

    const/4 v5, 0x0

    .line 405
    invoke-virtual {v8, v5}, Landroidx/appcompat/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x2

    .line 332
    new-array v11, v6, [I

    .line 333
    invoke-virtual {v5, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 335
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 336
    iget-object v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 338
    iget v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    .line 339
    aget v11, v11, v10

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v11

    add-int/2addr v5, v7

    .line 340
    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v6, :cond_d

    :cond_c
    const/4 v5, 0x0

    :goto_8
    const/4 v13, 0x1

    goto :goto_a

    :cond_d
    :goto_9
    const/4 v5, 0x1

    goto :goto_8

    .line 345
    :cond_e
    aget v5, v11, v10

    sub-int/2addr v5, v7

    if-gez v5, :cond_c

    goto :goto_9

    :goto_a
    if-ne v5, v13, :cond_f

    const/4 v13, 0x1

    goto :goto_b

    :cond_f
    const/4 v13, 0x0

    .line 409
    :goto_b
    iput v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    .line 413
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    const/4 v11, 0x5

    if-lt v5, v6, :cond_10

    .line 416
    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 v6, 0x0

    const/4 v12, 0x0

    goto :goto_c

    :cond_10
    const/4 v6, 0x2

    .line 429
    new-array v5, v6, [I

    .line 430
    iget-object v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    invoke-virtual {v12, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 432
    new-array v6, v6, [I

    .line 433
    invoke-virtual {v2, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 439
    iget v12, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    and-int/lit8 v12, v12, 0x7

    if-ne v12, v11, :cond_11

    .line 440
    aget v12, v5, v10

    iget-object v14, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v5, v10

    .line 441
    aget v12, v6, v10

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v12

    aput v14, v6, v10

    .line 446
    :cond_11
    aget v12, v6, v10

    aget v14, v5, v10

    sub-int/2addr v12, v14

    const/16 v16, 0x1

    .line 447
    aget v6, v6, v16

    aget v5, v5, v16

    sub-int/2addr v6, v5

    .line 455
    :goto_c
    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    and-int/2addr v5, v11

    if-ne v5, v11, :cond_13

    if-eqz v13, :cond_12

    add-int/2addr v12, v7

    goto :goto_d

    .line 459
    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v12, v2

    goto :goto_d

    :cond_13
    if-eqz v13, :cond_14

    .line 463
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v12, v2

    goto :goto_d

    :cond_14
    sub-int/2addr v12, v7

    .line 468
    :goto_d
    invoke-virtual {v8, v12}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    const/4 v13, 0x1

    .line 471
    invoke-virtual {v8, v13}, Landroidx/appcompat/widget/ListPopupWindow;->setOverlapAnchor(Z)V

    .line 472
    invoke-virtual {v8, v6}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    goto :goto_e

    .line 474
    :cond_15
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Z

    if-eqz v2, :cond_16

    .line 475
    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 477
    :cond_16
    iget-boolean v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Z

    if-eqz v2, :cond_17

    .line 478
    iget v2, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 480
    :cond_17
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/d;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 481
    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 484
    :goto_e
    new-instance v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    iget v5, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    invoke-direct {v2, v8, v1, v5}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;-><init>(Landroidx/appcompat/widget/MenuPopupWindow;Landroidx/appcompat/view/menu/MenuBuilder;I)V

    .line 485
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 489
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 490
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v9, :cond_18

    .line 493
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->w:Z

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 494
    sget v4, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v3, v4, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x1020016

    .line 496
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 497
    invoke-virtual {v3, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 498
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    .line 499
    invoke-virtual {v2, v3, v5, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 502
    invoke-virtual {v8}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_18
    return-void
.end method

.method public addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 355
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->b:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 357
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closeMenuOnSubMenuOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 4

    .line 288
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 290
    new-array v2, v1, [Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 291
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 293
    aget-object v2, v0, v1

    .line 294
    iget-object v3, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    iget-object v2, v2, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .line 766
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 768
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public isShowing()Z
    .locals 3

    .line 589
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    iget-object v0, v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 6

    .line 656
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 657
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 658
    iget-object v4, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    .line 675
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 676
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 677
    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 681
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 682
    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    .line 683
    iget-boolean v3, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->A:Z

    const/4 v4, 0x0

    iget-object v1, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    if-eqz v3, :cond_4

    .line 685
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 686
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 688
    :cond_4
    invoke-virtual {v1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 690
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_5

    add-int/lit8 v5, v1, -0x1

    .line 692
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    iget v5, v5, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->c:I

    iput v5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    goto :goto_3

    .line 316
    :cond_5
    iget-object v5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    if-ne v5, v3, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    .line 694
    :goto_2
    iput v5, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->q:I

    :goto_3
    if-nez v1, :cond_a

    .line 699
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    .line 701
    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p2, :cond_7

    .line 702
    invoke-interface {p2, p1, v3}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    .line 705
    :cond_7
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Landroid/view/ViewTreeObserver;

    if-eqz p1, :cond_9

    .line 706
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 707
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Landroid/view/ViewTreeObserver;

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 709
    :cond_8
    iput-object v4, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Landroid/view/ViewTreeObserver;

    .line 711
    :cond_9
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:Landroid/view/View;

    iget-object p2, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 715
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {p1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    return-void

    :cond_a
    if-eqz p2, :cond_b

    .line 720
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 721
    iget-object p1, p1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method public onDismiss()V
    .locals 6

    .line 600
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 601
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 602
    iget-object v5, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->a:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v5}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 611
    iget-object v0, v4, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 303
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 4

    .line 630
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 631
    iget-object v3, v1, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->b:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    .line 633
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return v2

    .line 638
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 641
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 642
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 750
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 751
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    .line 754
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:I

    .line 755
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 754
    invoke-static {v0, p1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    :cond_0
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .line 624
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->x:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->v:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 741
    iget v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:I

    if-eq v0, p1, :cond_0

    .line 742
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->m:I

    .line 743
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    .line 744
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 743
    invoke-static {p1, v0}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->n:I

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    .line 773
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->r:Z

    .line 774
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->t:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 761
    iput-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->z:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    .line 785
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->w:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    .line 779
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->s:Z

    .line 780
    iput p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->u:I

    return-void
.end method

.method public show()V
    .locals 3

    .line 260
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 265
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuBuilder;

    .line 266
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/CascadingMenuPopup;->a(Landroidx/appcompat/view/menu/MenuBuilder;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->o:Landroid/view/View;

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 273
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Landroid/view/ViewTreeObserver;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 274
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->y:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->j:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 278
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->p:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    .line 617
    iget-object p1, p0, Landroidx/appcompat/view/menu/CascadingMenuPopup;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;

    .line 618
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/CascadingMenuPopup$d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/d;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroidx/appcompat/view/menu/MenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
