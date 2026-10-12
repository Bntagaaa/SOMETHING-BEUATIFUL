.class final Landroidx/transition/ChangeTransform$a;
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
        "[F>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Landroidx/transition/ChangeTransform$d;

    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform$a;->get(Landroidx/transition/ChangeTransform$d;)[F

    move-result-object p1

    return-object p1
.end method

.method public get(Landroidx/transition/ChangeTransform$d;)[F
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public set(Landroidx/transition/ChangeTransform$d;[F)V
    .locals 3

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 568
    array-length v0, p2

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/transition/ChangeTransform$d;->c:[F

    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    invoke-virtual {p1}, Landroidx/transition/ChangeTransform$d;->a()V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Landroidx/transition/ChangeTransform$d;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroidx/transition/ChangeTransform$a;->set(Landroidx/transition/ChangeTransform$d;[F)V

    return-void
.end method
