.class final Lcom/google/android/material/datepicker/p;
.super Landroid/widget/GridView;
.source "SourceFile"


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 109
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/u;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 76
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 126
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v1

    .line 128
    iget-object v2, v1, Lcom/google/android/material/datepicker/u;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 129
    iget-object v3, v1, Lcom/google/android/material/datepicker/u;->d:Lcom/google/android/material/datepicker/b;

    .line 212
    iget-object v4, v1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v4}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v5

    .line 133
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 135
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/u;->a()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 137
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/u;->getItem(I)Ljava/lang/Long;

    move-result-object v7

    .line 138
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/u;->getItem(I)Ljava/lang/Long;

    move-result-object v8

    .line 140
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/core/util/Pair;

    .line 141
    iget-object v10, v9, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v10, :cond_c

    iget-object v11, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v11, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 145
    iget-object v9, v9, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    .line 250
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v10, v15, v17

    if-gtz v10, :cond_1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v17, v9, v15

    if-gez v17, :cond_2

    :cond_1
    move-object/from16 v18, v1

    goto/16 :goto_8

    .line 150
    :cond_2
    invoke-static {v0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    .line 153
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const/4 v10, 0x0

    cmp-long v17, v11, v15

    if-gez v17, :cond_e

    .line 253
    iget v11, v4, Lcom/google/android/material/datepicker/t;->d:I

    rem-int v12, v5, v11

    if-nez v12, :cond_3

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    if-nez v9, :cond_4

    add-int/lit8 v12, v5, -0x1

    .line 239
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v12, v12, v16

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 159
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    goto :goto_1

    :cond_4
    add-int/lit8 v12, v5, -0x1

    .line 239
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v16

    sub-int v12, v12, v16

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 160
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 169
    :goto_1
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v18, v13, v16

    if-lez v18, :cond_d

    add-int/lit8 v10, v6, 0x1

    .line 261
    rem-int/2addr v10, v11

    if-nez v10, :cond_5

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    goto :goto_2

    :cond_5
    if-nez v9, :cond_6

    .line 239
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 175
    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    goto :goto_2

    .line 239
    :cond_6
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 176
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 183
    :goto_2
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/u;->getItemId(I)J

    move-result-wide v13

    long-to-int v11, v13

    .line 184
    invoke-virtual {v1, v6}, Lcom/google/android/material/datepicker/u;->getItemId(I)J

    move-result-wide v13

    long-to-int v14, v13

    :goto_3
    if-gt v11, v14, :cond_c

    .line 186
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v13

    mul-int v13, v13, v11

    .line 187
    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v16

    add-int v16, v16, v13

    add-int/lit8 v15, v16, -0x1

    .line 239
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v16

    move-object/from16 v18, v1

    sub-int v1, v13, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v16

    iget-object v0, v3, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/a;

    .line 162
    iget-object v0, v0, Lcom/google/android/material/datepicker/a;->a:Landroid/graphics/Rect;

    .line 162
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v0, v16, v0

    .line 190
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    move/from16 v16, v1

    .line 166
    iget-object v1, v3, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/a;

    iget-object v1, v1, Lcom/google/android/material/datepicker/a;->a:Landroid/graphics/Rect;

    .line 166
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v16, v1

    if-nez v9, :cond_9

    if-le v13, v5, :cond_7

    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    move v13, v12

    :goto_4
    if-le v6, v15, :cond_8

    .line 195
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    goto :goto_7

    :cond_8
    move v15, v10

    goto :goto_7

    :cond_9
    if-le v6, v15, :cond_a

    const/4 v15, 0x0

    goto :goto_5

    :cond_a
    move v15, v10

    :goto_5
    if-le v13, v5, :cond_b

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    goto :goto_6

    :cond_b
    move v13, v12

    :goto_6
    move/from16 v25, v15

    move v15, v13

    move/from16 v13, v25

    :goto_7
    int-to-float v13, v13

    int-to-float v0, v0

    int-to-float v15, v15

    int-to-float v1, v1

    move/from16 v21, v0

    .line 200
    iget-object v0, v3, Lcom/google/android/material/datepicker/b;->h:Landroid/graphics/Paint;

    move-object/from16 v19, p1

    move-object/from16 v24, v0

    move/from16 v23, v1

    move/from16 v20, v13

    move/from16 v22, v15

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 178
    :cond_d
    throw v10

    .line 162
    :cond_e
    throw v10

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    const/16 p1, 0x21

    if-ne p2, p1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/u;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->setSelection(I)V

    return-void

    :cond_0
    const/16 p1, 0x82

    if-ne p2, p1, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p1

    .line 212
    iget-object p1, p1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/t;->c()I

    move-result p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->setSelection(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p2, v1, :cond_3

    .line 96
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v1

    .line 212
    iget-object v1, v1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v1

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p2, 0x13

    if-ne p2, p1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p1

    .line 212
    iget-object p1, p1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/t;->c()I

    move-result p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->setSelection(I)V

    return v2

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public onMeasure(II)V
    .locals 0

    .line 215
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 4

    .line 114
    instance-of v0, p1, Lcom/google/android/material/datepicker/u;

    if-eqz v0, :cond_0

    .line 121
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 115
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-class v0, Lcom/google/android/material/datepicker/p;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/material/datepicker/u;

    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 116
    const-string v0, "%1$s must have its Adapter set to a %2$s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelection(I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object v0

    .line 212
    iget-object v0, v0, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->c()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->getAdapter()Lcom/google/android/material/datepicker/u;

    move-result-object p1

    .line 212
    iget-object p1, p1, Lcom/google/android/material/datepicker/u;->a:Lcom/google/android/material/datepicker/t;

    .line 212
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/t;->c()I

    move-result p1

    .line 83
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
