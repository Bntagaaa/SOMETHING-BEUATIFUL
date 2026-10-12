.class public Landroidx/core/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/ViewParent;

.field public b:Landroid/view/ViewParent;

.field public final c:Landroid/view/View;

.field public d:Z

.field public e:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(IIII[II[I)Z
    .locals 14

    move-object/from16 v0, p5

    .line 238
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    move/from16 v9, p6

    .line 239
    invoke-virtual {p0, v9}, Landroidx/core/view/NestedScrollingChildHelper;->b(I)Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_7

    .line 270
    aput v2, v0, v2

    .line 271
    aput v2, v0, v1

    return v2

    .line 247
    :cond_2
    :goto_0
    iget-object v11, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 249
    aget v4, v0, v2

    .line 250
    aget v5, v0, v1

    move v12, v4

    move v13, v5

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-nez p7, :cond_5

    .line 425
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->e:[I

    if-nez v4, :cond_4

    const/4 v4, 0x2

    .line 426
    new-array v4, v4, [I

    iput-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->e:[I

    .line 428
    :cond_4
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->e:[I

    .line 255
    aput v2, v4, v2

    .line 256
    aput v2, v4, v1

    move-object v10, v4

    goto :goto_2

    :cond_5
    move-object/from16 v10, p7

    .line 259
    :goto_2
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    move v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-static/range {v3 .. v10}, Landroidx/core/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII[I)V

    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 264
    aget p1, v0, v2

    sub-int/2addr p1, v12

    aput p1, v0, v2

    .line 265
    aget p1, v0, v1

    sub-int/2addr p1, v13

    aput p1, v0, v1

    :cond_6
    return v1

    :cond_7
    :goto_3
    return v2
.end method

.method public final b(I)Landroid/view/ViewParent;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 408
    :cond_0
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->b:Landroid/view/ViewParent;

    return-object p1

    .line 406
    :cond_1
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->a:Landroid/view/ViewParent;

    return-object p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 2

    .line 348
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->b(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/core/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    .line 368
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0, v1}, Landroidx/core/view/NestedScrollingChildHelper;->b(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 288
    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 12
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p4

    .line 302
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    move/from16 v8, p5

    .line 303
    invoke-virtual {p0, v8}, Landroidx/core/view/NestedScrollingChildHelper;->b(I)Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_8

    .line 331
    aput v2, v0, v2

    .line 332
    aput v2, v0, v1

    return v2

    .line 311
    :cond_2
    :goto_0
    iget-object v9, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 312
    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 313
    aget v4, v0, v2

    .line 314
    aget v5, v0, v1

    move v10, v4

    move v11, v5

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-nez p3, :cond_5

    .line 425
    iget-object p3, p0, Landroidx/core/view/NestedScrollingChildHelper;->e:[I

    if-nez p3, :cond_4

    const/4 p3, 0x2

    .line 426
    new-array p3, p3, [I

    iput-object p3, p0, Landroidx/core/view/NestedScrollingChildHelper;->e:[I

    .line 428
    :cond_4
    iget-object p3, p0, Landroidx/core/view/NestedScrollingChildHelper;->e:[I

    :cond_5
    move-object v7, p3

    .line 320
    aput v2, v7, v2

    .line 321
    aput v2, v7, v1

    .line 322
    iget-object v4, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    move v5, p1

    move v6, p2

    invoke-static/range {v3 .. v8}, Landroidx/core/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    if-eqz v0, :cond_6

    .line 325
    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 326
    aget p1, v0, v2

    sub-int/2addr p1, v10

    aput p1, v0, v2

    .line 327
    aget p1, v0, v1

    sub-int/2addr p1, v11

    aput p1, v0, v1

    .line 329
    :cond_6
    aget p1, v7, v2

    if-nez p1, :cond_7

    aget p1, v7, v1

    if-eqz p1, :cond_8

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v2
.end method

.method public dispatchNestedScroll(IIII[II[I)V
    .locals 0
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 231
    invoke-virtual/range {p0 .. p7}, Landroidx/core/view/NestedScrollingChildHelper;->a(IIII[II[I)Z

    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 204
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->a(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 218
    invoke-virtual/range {v0 .. v7}, Landroidx/core/view/NestedScrollingChildHelper;->a(IIII[II[I)Z

    move-result p1

    return p1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 0

    .line 114
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->b(I)Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->d:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 387
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 400
    iget-object p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 70
    iget-boolean v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->d:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-boolean p1, p0, Landroidx/core/view/NestedScrollingChildHelper;->d:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 5

    .line 145
    invoke-virtual {p0, p2}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 150
    iget-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v3, v0

    :goto_0
    if-eqz v2, :cond_5

    .line 153
    invoke-static {v2, v3, v0, p1, p2}, Landroidx/core/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 419
    :cond_1
    iput-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->b:Landroid/view/ViewParent;

    goto :goto_1

    .line 416
    :cond_2
    iput-object v2, p0, Landroidx/core/view/NestedScrollingChildHelper;->a:Landroid/view/ViewParent;

    .line 155
    :goto_1
    invoke-static {v2, v3, v0, p1, p2}, Landroidx/core/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    return v1

    .line 158
    :cond_3
    instance-of v4, v2, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 159
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 161
    :cond_4
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 2

    .line 186
    invoke-virtual {p0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->b(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v1, p0, Landroidx/core/view/NestedScrollingChildHelper;->c:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->b:Landroid/view/ViewParent;

    return-void

    .line 416
    :cond_1
    iput-object v0, p0, Landroidx/core/view/NestedScrollingChildHelper;->a:Landroid/view/ViewParent;

    :cond_2
    :goto_0
    return-void
.end method
