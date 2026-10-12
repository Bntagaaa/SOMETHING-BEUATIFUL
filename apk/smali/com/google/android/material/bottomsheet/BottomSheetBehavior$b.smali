.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:J

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1592
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1737
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1732
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 1731
    :goto_0
    invoke-static {p2, p3, p1}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    return p1
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1742
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-eqz v0, :cond_0

    .line 1743
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I

    return p1

    .line 1745
    :cond_0
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J:Z

    if-eqz v1, :cond_0

    .line 1624
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g(I)V

    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1618
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(I)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    .line 1636
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v4, 0x0

    cmpg-float v5, p3, v4

    if-gez v5, :cond_3

    .line 86
    iget-boolean p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 1640
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 1641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:J

    sub-long/2addr v4, v6

    .line 1643
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result p3

    if-eqz p3, :cond_2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p2, p2, p3

    .line 1644
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 1646
    invoke-virtual {v3, v4, v5, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldExpandOnUpwardDrag(JF)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_0

    .line 1652
    :cond_2
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:I

    if-le p2, p3, :cond_0

    goto/16 :goto_3

    .line 1659
    :cond_3
    iget-boolean v5, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H:Z

    if-eqz v5, :cond_8

    invoke-virtual {v3, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h(Landroid/view/View;F)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1662
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_4

    const/high16 p2, 0x43fa0000    # 500.0f

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_5

    .line 1630
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->S:I

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result v2

    add-int/2addr v2, p3

    div-int/lit8 v2, v2, 0x2

    if-le p2, v2, :cond_6

    :cond_5
    const/4 v0, 0x5

    goto/16 :goto_3

    .line 86
    :cond_6
    iget-boolean p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_7

    goto :goto_0

    .line 1667
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getExpandedOffset()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1668
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget v2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:I

    sub-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_10

    goto :goto_0

    :cond_8
    cmpl-float v4, p3, v4

    if-eqz v4, :cond_c

    .line 1673
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_9

    goto :goto_2

    .line 86
    :cond_9
    iget-boolean p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_b

    :cond_a
    :goto_1
    const/4 v0, 0x4

    goto :goto_3

    .line 1713
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 1714
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v1, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    sub-int/2addr p2, v1

    .line 1715
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_a

    .line 1716
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_1

    .line 1676
    :cond_c
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    .line 86
    iget-boolean p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p3, :cond_d

    .line 1678
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    sub-int/2addr p2, v0

    .line 1679
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_a

    goto/16 :goto_0

    .line 1685
    :cond_d
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:I

    if-ge p2, p3, :cond_f

    .line 1686
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_e

    goto/16 :goto_0

    .line 1689
    :cond_e
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_1

    :cond_f
    sub-int p3, p2, p3

    .line 1696
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v1, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    sub-int/2addr p2, v1

    .line 1697
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_a

    .line 1698
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipHalfExpandedStateWhenDragging()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_1

    .line 1726
    :cond_10
    :goto_3
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->shouldSkipSmoothAnimation()Z

    move-result p2

    .line 86
    invoke-virtual {v3, p1, p2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i(Landroid/view/View;ZI)V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1598
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1601
    :cond_0
    iget-boolean v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Z:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 1604
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->X:I

    if-ne v1, p2, :cond_3

    .line 1605
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    const/4 v1, -0x1

    .line 1606
    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 1611
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$b;->a:J

    .line 1612
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_4

    return v2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method
