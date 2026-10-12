.class public Landroidx/appcompat/widget/AlertDialogLayout;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 55
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 3

    .line 248
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 253
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    check-cast p0, Landroid/view/ViewGroup;

    .line 255
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 256
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/AlertDialogLayout;->c(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 9

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    sub-int/2addr p4, p1

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p4, v0

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 276
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getGravity()I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    const v4, 0x800007

    and-int/2addr v2, v4

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    const/16 v4, 0x50

    if-eq v3, v4, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, p5

    sub-int/2addr v3, p3

    sub-int p3, v3, v0

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    add-int p3, p5, v3

    .line 298
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    const/4 v0, 0x0

    if-nez p5, :cond_2

    const/4 p5, 0x0

    goto :goto_1

    .line 300
    :cond_2
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p5

    :goto_1
    if-ge v0, v1, :cond_8

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_7

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 306
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 309
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 311
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v7, :cond_3

    move v7, v2

    .line 315
    :cond_3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v8

    .line 316
    invoke-static {v7, v8}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v8, 0x5

    if-eq v7, v8, :cond_4

    .line 332
    iget v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, p1

    goto :goto_3

    :cond_4
    sub-int v7, p2, v4

    .line 327
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_2
    sub-int/2addr v7, v8

    goto :goto_3

    :cond_5
    sub-int v7, p4, v4

    .line 322
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p1

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    .line 336
    :goto_3
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/2addr p3, p5

    .line 340
    :cond_6
    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr p3, v8

    add-int/2addr v4, v7

    add-int v8, p3, v5

    .line 348
    invoke-virtual {v3, v7, p3, v4, v8}, Landroid/view/View;->layout(IIII)V

    .line 342
    iget v3, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    add-int/2addr v5, p3

    move p3, v5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-void
.end method

.method public onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    if-ge v7, v6, :cond_6

    .line 77
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 78
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v8, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v8

    .line 83
    sget v10, Landroidx/appcompat/R$id;->topPanel:I

    if-ne v8, v10, :cond_1

    move-object v2, v9

    goto :goto_1

    .line 85
    :cond_1
    sget v10, Landroidx/appcompat/R$id;->buttonPanel:I

    if-ne v8, v10, :cond_2

    move-object v4, v9

    goto :goto_1

    .line 87
    :cond_2
    sget v10, Landroidx/appcompat/R$id;->contentPanel:I

    if-eq v8, v10, :cond_3

    sget v10, Landroidx/appcompat/R$id;->customPanel:I

    if-ne v8, v10, :cond_4

    :cond_3
    if-eqz v5, :cond_5

    .line 66
    :cond_4
    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    return-void

    :cond_5
    move-object v5, v9

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 100
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 101
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 104
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v12, v11

    if-eqz v2, :cond_7

    .line 107
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 109
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v12, v11

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    if-eqz v4, :cond_8

    .line 116
    invoke-virtual {v4, v1, v3}, Landroid/view/View;->measure(II)V

    .line 117
    invoke-static {v4}, Landroidx/appcompat/widget/AlertDialogLayout;->c(Landroid/view/View;)I

    move-result v11

    .line 118
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    sub-int/2addr v13, v11

    add-int/2addr v12, v11

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v2, v14}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_3
    if-eqz v5, :cond_a

    if-nez v7, :cond_9

    const/4 v14, 0x0

    goto :goto_4

    :cond_9
    sub-int v14, v9, v12

    .line 131
    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 130
    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 134
    :goto_4
    invoke-virtual {v5, v1, v14}, Landroid/view/View;->measure(II)V

    .line 135
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v12, v14

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v2, v15}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    goto :goto_5

    :cond_a
    const/4 v14, 0x0

    :goto_5
    sub-int/2addr v9, v12

    const/high16 v15, 0x40000000    # 2.0f

    if-eqz v4, :cond_c

    sub-int/2addr v12, v11

    .line 149
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-lez v13, :cond_b

    sub-int/2addr v9, v13

    add-int/2addr v11, v13

    .line 155
    :cond_b
    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 157
    invoke-virtual {v4, v1, v11}, Landroid/view/View;->measure(II)V

    .line 159
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v12, v11

    .line 160
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v2, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    :cond_c
    if-eqz v5, :cond_d

    if-lez v9, :cond_d

    sub-int/2addr v12, v14

    add-int/2addr v14, v9

    .line 175
    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 177
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 179
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v12, v4

    .line 180
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v2, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_6
    if-ge v4, v6, :cond_f

    .line 186
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 187
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_e

    .line 188
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 192
    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v4

    add-int/2addr v7, v5

    .line 194
    invoke-static {v7, v1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    move/from16 v4, p2

    .line 196
    invoke-static {v12, v4, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    if-eq v10, v15, :cond_11

    .line 218
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 217
    invoke-static {v1, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_11

    .line 221
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v8, :cond_10

    .line 223
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 224
    iget v3, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_10

    .line 227
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 231
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 232
    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p2

    goto :goto_7

    :cond_11
    return-void
.end method
