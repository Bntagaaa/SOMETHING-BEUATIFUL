.class Landroidx/appcompat/widget/t;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/t$c;,
        Landroidx/appcompat/widget/t$e;,
        Landroidx/appcompat/widget/t$a;,
        Landroidx/appcompat/widget/t$b;,
        Landroidx/appcompat/widget/t$f;,
        Landroidx/appcompat/widget/t$d;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Landroidx/appcompat/widget/t$d;

.field public h:Z

.field public final i:Z

.field public j:Z

.field public k:Landroidx/core/widget/ListViewAutoScrollHelper;

.field public l:Landroidx/appcompat/widget/t$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 127
    sget v1, Landroidx/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/t;->a:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Landroidx/appcompat/widget/t;->b:I

    .line 62
    iput p1, p0, Landroidx/appcompat/widget/t;->c:I

    .line 63
    iput p1, p0, Landroidx/appcompat/widget/t;->d:I

    .line 64
    iput p1, p0, Landroidx/appcompat/widget/t;->e:I

    .line 128
    iput-boolean p2, p0, Landroidx/appcompat/widget/t;->i:Z

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/t;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 590
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 593
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 205
    iget-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 390
    iget-object v0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/t$d;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 404
    iput-boolean v1, v0, Landroidx/appcompat/widget/t$d;->b:Z

    .line 582
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 714
    iget-boolean v1, p0, Landroidx/appcompat/widget/t;->j:Z

    if-eqz v1, :cond_2

    .line 583
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->i:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->i:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->i:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->h:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4

    .line 248
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_7

    .line 249
    invoke-virtual {p0}, Landroidx/appcompat/widget/t;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    .line 253
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    .line 254
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 256
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-ge p1, v2, :cond_2

    .line 257
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, -0x1

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ltz p1, :cond_2

    .line 262
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p2

    if-nez p2, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    :cond_3
    return p1

    :cond_4
    :goto_2
    return v1

    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 10

    .line 309
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result p2

    .line 310
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p3

    .line 311
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 312
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 314
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/2addr p2, p3

    return p2

    :cond_0
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 331
    :goto_0
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v1, :cond_9

    .line 333
    invoke-interface {v2, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v5, :cond_2

    move-object v6, v3

    move v5, v8

    .line 338
    :cond_2
    invoke-interface {v2, v4, v6, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 342
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 346
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :cond_3
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v8, :cond_4

    const/high16 v9, 0x40000000    # 2.0f

    .line 350
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_2

    .line 353
    :cond_4
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 355
    :goto_2
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 359
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez v4, :cond_5

    add-int/2addr p2, v0

    .line 366
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p2, v8

    if-lt p2, p4, :cond_7

    if-ltz p5, :cond_6

    if-le v4, p5, :cond_6

    if-lez v7, :cond_6

    if-eq p2, p4, :cond_6

    return v7

    :cond_6
    return p4

    :cond_7
    if-ltz p5, :cond_8

    if-lt v4, p5, :cond_8

    move v7, p2

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    return p2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    .line 496
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 509
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    const/4 v0, 0x3

    if-eq v3, v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 518
    :goto_3
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_4

    goto :goto_2

    .line 524
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    .line 525
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 526
    invoke-virtual {v1, v7, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    goto/16 :goto_8

    .line 532
    :cond_5
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v8, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    int-to-float v7, v7

    int-to-float v6, v6

    .line 667
    iput-boolean v4, v1, Landroidx/appcompat/widget/t;->j:Z

    .line 671
    invoke-static {v1, v7, v6}, Landroidx/appcompat/widget/t$a;->a(Landroid/view/View;FF)V

    .line 673
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_6

    .line 674
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 678
    :cond_6
    invoke-virtual {v1}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 682
    iget v0, v1, Landroidx/appcompat/widget/t;->f:I

    if-eq v0, v9, :cond_7

    .line 683
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v11

    sub-int/2addr v0, v11

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eq v0, v10, :cond_7

    .line 684
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 685
    invoke-virtual {v0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 688
    :cond_7
    iput v8, v1, Landroidx/appcompat/widget/t;->f:I

    .line 691
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v7, v0

    .line 692
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float v11, v6, v11

    .line 694
    invoke-static {v10, v0, v11}, Landroidx/appcompat/widget/t$a;->a(Landroid/view/View;FF)V

    .line 696
    invoke-virtual {v10}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 697
    invoke-virtual {v10, v4}, Landroid/view/View;->setPressed(Z)V

    .line 610
    :cond_8
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_9

    if-eq v8, v9, :cond_9

    const/4 v12, 0x1

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_a

    .line 613
    invoke-virtual {v11, v5, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 630
    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v15

    const/16 v16, 0x1

    iget-object v4, v1, Landroidx/appcompat/widget/t;->a:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 633
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v13, v1, Landroidx/appcompat/widget/t;->b:I

    sub-int/2addr v0, v13

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 634
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v13, v1, Landroidx/appcompat/widget/t;->c:I

    sub-int/2addr v0, v13

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 635
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v13, v1, Landroidx/appcompat/widget/t;->d:I

    add-int/2addr v0, v13

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 636
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v13, v1, Landroidx/appcompat/widget/t;->e:I

    add-int/2addr v0, v13

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 134
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    invoke-static {v1}, Landroidx/appcompat/widget/t$c;->a(Landroid/widget/AbsListView;)Z

    move-result v0

    goto :goto_5

    .line 837
    :cond_b
    sget-object v0, Landroidx/appcompat/widget/t$e;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_c

    .line 839
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 841
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    const/4 v0, 0x0

    .line 641
    :goto_5
    invoke-virtual {v10}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-eq v13, v0, :cond_f

    xor-int/lit8 v0, v0, 0x1

    .line 143
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 144
    invoke-static {v1, v0}, Landroidx/appcompat/widget/t$c;->b(Landroid/widget/AbsListView;Z)V

    goto :goto_6

    .line 849
    :cond_d
    sget-object v13, Landroidx/appcompat/widget/t$e;->a:Ljava/lang/reflect/Field;

    if-eqz v13, :cond_e

    .line 851
    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v13, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 853
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_6
    if-eq v8, v9, :cond_f

    .line 644
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    :cond_f
    if-eqz v12, :cond_11

    .line 620
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    .line 621
    invoke-virtual {v4}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 622
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_10

    const/4 v12, 0x1

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v11, v12, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 623
    invoke-static {v11, v0, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 601
    :cond_11
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_12

    if-eq v8, v9, :cond_12

    .line 603
    invoke-static {v0, v7, v6}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 390
    :cond_12
    iget-object v0, v1, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/t$d;

    if-eqz v0, :cond_13

    .line 404
    iput-boolean v5, v0, Landroidx/appcompat/widget/t$d;->b:Z

    .line 710
    :cond_13
    invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 566
    invoke-virtual {v1, v8}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v3

    .line 567
    invoke-virtual {v1, v10, v8, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    :goto_8
    if-eqz v0, :cond_14

    if-eqz v4, :cond_15

    .line 650
    :cond_14
    iput-boolean v5, v1, Landroidx/appcompat/widget/t;->j:Z

    .line 651
    invoke-virtual {v1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 653
    invoke-virtual {v1}, Landroidx/appcompat/widget/t;->drawableStateChanged()V

    .line 655
    iget v3, v1, Landroidx/appcompat/widget/t;->f:I

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 657
    invoke-virtual {v3, v5}, Landroid/view/View;->setPressed(Z)V

    :cond_15
    if-eqz v0, :cond_17

    .line 549
    iget-object v3, v1, Landroidx/appcompat/widget/t;->k:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-nez v3, :cond_16

    .line 550
    new-instance v3, Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-direct {v3, v1}, Landroidx/core/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v3, v1, Landroidx/appcompat/widget/t;->k:Landroidx/core/widget/ListViewAutoScrollHelper;

    .line 552
    :cond_16
    iget-object v3, v1, Landroidx/appcompat/widget/t;->k:Landroidx/core/widget/ListViewAutoScrollHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/core/widget/AutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    .line 553
    iget-object v3, v1, Landroidx/appcompat/widget/t;->k:Landroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v3, v1, v2}, Landroidx/core/widget/AutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_9

    .line 554
    :cond_17
    iget-object v2, v1, Landroidx/appcompat/widget/t;->k:Landroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz v2, :cond_18

    .line 555
    invoke-virtual {v2, v5}, Landroidx/core/widget/AutoScrollHelper;->setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;

    :cond_18
    :goto_9
    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 450
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 453
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 454
    iget-object v4, p0, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    if-nez v4, :cond_1

    .line 457
    new-instance v4, Landroidx/appcompat/widget/t$f;

    invoke-direct {v4, p0}, Landroidx/appcompat/widget/t$f;-><init>(Landroidx/appcompat/widget/t;)V

    iput-object v4, p0, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    .line 458
    invoke-virtual {v4}, Landroidx/appcompat/widget/t$f;->post()V

    .line 462
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    const/16 v5, 0x9

    const/4 v6, -0x1

    if-eq v3, v5, :cond_3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_2

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setSelection(I)V

    return v4

    .line 465
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v3, p1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result p1

    if-eq p1, v6, :cond_6

    .line 467
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    if-eq p1, v3, :cond_6

    .line 468
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/16 v5, 0x1e

    if-lt v2, v5, :cond_4

    .line 776
    sget-boolean v2, Landroidx/appcompat/widget/t$b;->d:Z

    if-eqz v2, :cond_4

    .line 791
    :try_start_0
    sget-object v2, Landroidx/appcompat/widget/t$b;->a:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v1

    aput-object v3, v8, v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x2

    aput-object v3, v8, v5

    const/4 v3, 0x3

    aput-object v7, v8, v3

    const/4 v3, 0x4

    aput-object v6, v8, v3

    invoke-virtual {v2, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    sget-object v2, Landroidx/appcompat/widget/t$b;->b:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v2, Landroidx/appcompat/widget/t$b;->c:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 797
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 795
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 479
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 582
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 714
    iget-boolean v0, p0, Landroidx/appcompat/widget/t;->j:Z

    if-eqz v0, :cond_6

    .line 583
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/t;->f:I

    .line 232
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/t;->l:Landroidx/appcompat/widget/t$f;

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Landroidx/appcompat/widget/t$f;->cancel()V

    .line 236
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 188
    new-instance v0, Landroidx/appcompat/widget/t$d;

    .line 399
    invoke-direct {v0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapperCompat;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 400
    iput-boolean v1, v0, Landroidx/appcompat/widget/t$d;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/t;->g:Landroidx/appcompat/widget/t$d;

    .line 189
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1

    .line 193
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 196
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroidx/appcompat/widget/t;->b:I

    .line 197
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroidx/appcompat/widget/t;->c:I

    .line 198
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroidx/appcompat/widget/t;->d:I

    .line 199
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroidx/appcompat/widget/t;->e:I

    return-void
.end method
