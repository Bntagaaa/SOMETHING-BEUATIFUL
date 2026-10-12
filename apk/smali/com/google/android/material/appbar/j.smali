.class Lcom/google/android/material/appbar/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/material/appbar/j;->f:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/material/appbar/j;->g:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/material/appbar/j;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 51
    iget v0, p0, Lcom/google/android/material/appbar/j;->d:I

    iget-object v1, p0, Lcom/google/android/material/appbar/j;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/j;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 52
    iget v0, p0, Lcom/google/android/material/appbar/j;->e:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/j;->c:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public getLayoutTop()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/google/android/material/appbar/j;->b:I

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/google/android/material/appbar/j;->e:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/google/android/material/appbar/j;->d:I

    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/google/android/material/appbar/j;->g:Z

    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/google/android/material/appbar/j;->f:Z

    return v0
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/google/android/material/appbar/j;->g:Z

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/google/android/material/appbar/j;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/j;->e:I

    if-eq v0, p1, :cond_0

    .line 78
    iput p1, p0, Lcom/google/android/material/appbar/j;->e:I

    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/appbar/j;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/material/appbar/j;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/j;->d:I

    if-eq v0, p1, :cond_0

    .line 63
    iput p1, p0, Lcom/google/android/material/appbar/j;->d:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/j;->a()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/appbar/j;->f:Z

    return-void
.end method
