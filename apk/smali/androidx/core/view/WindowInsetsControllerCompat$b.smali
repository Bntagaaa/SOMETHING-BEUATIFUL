.class Landroidx/core/view/WindowInsetsControllerCompat$b;
.super Landroidx/core/view/WindowInsetsControllerCompat$a;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# virtual methods
.method public isAppearanceLightStatusBars()Z
    .locals 1

    .line 579
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAppearanceLightStatusBars(Z)V
    .locals 1

    const/16 v0, 0x2000

    if-eqz p1, :cond_0

    const/high16 p1, 0x4000000

    .line 586
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetWindowFlag(I)V

    const/high16 p1, -0x80000000

    .line 587
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setWindowFlag(I)V

    .line 588
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setSystemUiFlag(I)V

    return-void

    .line 590
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    return-void
.end method
