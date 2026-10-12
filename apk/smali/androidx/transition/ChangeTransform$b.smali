.class final Landroidx/transition/ChangeTransform$b;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/transition/ChangeTransform$d;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(Landroidx/transition/ChangeTransform$d;)Landroid/graphics/PointF;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroidx/transition/ChangeTransform$d;

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform$b;->get(Landroidx/transition/ChangeTransform$d;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroidx/transition/ChangeTransform$d;Landroid/graphics/PointF;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iput v0, p1, Landroidx/transition/ChangeTransform$d;->d:F

    .line 574
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p1, Landroidx/transition/ChangeTransform$d;->e:F

    .line 575
    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$d;->a()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 86
    check-cast p1, Landroidx/transition/ChangeTransform$d;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeTransform$b;->set(Landroidx/transition/ChangeTransform$d;Landroid/graphics/PointF;)V

    return-void
.end method
