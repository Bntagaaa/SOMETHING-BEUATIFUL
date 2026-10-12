.class final Landroidx/transition/ChangeBounds$c;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/transition/ChangeBounds$k;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Landroidx/transition/ChangeBounds$k;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Landroidx/transition/ChangeBounds$k;

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds$c;->get(Landroidx/transition/ChangeBounds$k;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroidx/transition/ChangeBounds$k;Landroid/graphics/PointF;)V
    .locals 4

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroidx/transition/ChangeBounds$k;->a:I

    .line 477
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p1, Landroidx/transition/ChangeBounds$k;->b:I

    .line 478
    iget v0, p1, Landroidx/transition/ChangeBounds$k;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroidx/transition/ChangeBounds$k;->f:I

    .line 479
    iget v1, p1, Landroidx/transition/ChangeBounds$k;->g:I

    if-ne v0, v1, :cond_0

    .line 494
    iget v0, p1, Landroidx/transition/ChangeBounds$k;->a:I

    iget v1, p1, Landroidx/transition/ChangeBounds$k;->c:I

    iget v2, p1, Landroidx/transition/ChangeBounds$k;->d:I

    iget-object v3, p1, Landroidx/transition/ChangeBounds$k;->e:Landroid/view/View;

    invoke-static {v3, v0, p2, v1, v2}, Landroidx/transition/f0;->a(Landroid/view/View;IIII)V

    const/4 p2, 0x0

    .line 495
    iput p2, p1, Landroidx/transition/ChangeBounds$k;->f:I

    .line 496
    iput p2, p1, Landroidx/transition/ChangeBounds$k;->g:I

    :cond_0
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Landroidx/transition/ChangeBounds$k;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeBounds$c;->set(Landroidx/transition/ChangeBounds$k;Landroid/graphics/PointF;)V

    return-void
.end method
