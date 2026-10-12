.class Lcom/google/android/material/appbar/i;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/material/appbar/j;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/google/android/material/appbar/i;->b:I

    .line 31
    iput v0, p0, Lcom/google/android/material/appbar/i;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/android/material/appbar/i;->b:I

    .line 31
    iput p1, p0, Lcom/google/android/material/appbar/i;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/google/android/material/appbar/i;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/j;->getLeftAndRightOffset()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/j;->getTopAndBottomOffset()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/j;->isHorizontalOffsetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/appbar/j;->isVerticalOffsetEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/i;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 45
    iget-object p1, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/google/android/material/appbar/j;

    invoke-direct {p1, p2}, Lcom/google/android/material/appbar/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    .line 46
    iget-object p2, p1, Lcom/google/android/material/appbar/j;->a:Landroid/view/View;

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lcom/google/android/material/appbar/j;->b:I

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/appbar/j;->c:I

    .line 49
    iget-object p1, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/j;->a()V

    .line 51
    iget p1, p0, Lcom/google/android/material/appbar/i;->b:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 52
    iget-object p3, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/j;->setTopAndBottomOffset(I)Z

    .line 53
    iput p2, p0, Lcom/google/android/material/appbar/i;->b:I

    .line 55
    :cond_1
    iget p1, p0, Lcom/google/android/material/appbar/i;->c:I

    if-eqz p1, :cond_2

    .line 56
    iget-object p3, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    invoke-virtual {p3, p1}, Lcom/google/android/material/appbar/j;->setLeftAndRightOffset(I)Z

    .line 57
    iput p2, p0, Lcom/google/android/material/appbar/i;->c:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/j;->setHorizontalOffsetEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/j;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1

    .line 82
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/i;->c:I

    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/j;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1

    .line 73
    :cond_0
    iput p1, p0, Lcom/google/android/material/appbar/i;->b:I

    const/4 p1, 0x0

    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/material/appbar/i;->a:Lcom/google/android/material/appbar/j;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/google/android/material/appbar/j;->setVerticalOffsetEnabled(Z)V

    :cond_0
    return-void
.end method
