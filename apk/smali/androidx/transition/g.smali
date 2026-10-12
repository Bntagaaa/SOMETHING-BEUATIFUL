.class Landroidx/transition/g;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Z


# direct methods
.method public static a(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 157
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 158
    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/transition/g;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 160
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Landroidx/transition/g;->b:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This GhostViewHolder is detached!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewRemoved(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 62
    :cond_1
    sget p1, Landroidx/transition/R$id;->ghost_view_holder:I

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/transition/g;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 47
    new-instance p1, Landroidx/transition/x;

    invoke-direct {p1, v1}, Landroidx/transition/x;-><init>(Landroid/view/ViewGroup;)V

    .line 63
    invoke-interface {p1, p0}, Landroidx/transition/y;->remove(Landroid/view/View;)V

    .line 64
    iput-boolean v2, p0, Landroidx/transition/g;->b:Z

    :cond_2
    return-void
.end method
