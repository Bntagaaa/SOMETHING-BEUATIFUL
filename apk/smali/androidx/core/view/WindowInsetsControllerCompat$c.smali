.class Landroidx/core/view/WindowInsetsControllerCompat$c;
.super Landroidx/core/view/WindowInsetsControllerCompat$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# virtual methods
.method public isAppearanceLightNavigationBars()Z
    .locals 1

    .line 604
    iget-object v0, p0, Landroidx/core/view/WindowInsetsControllerCompat$a;->a:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAppearanceLightNavigationBars(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const/high16 p1, 0x8000000

    .line 611
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetWindowFlag(I)V

    const/high16 p1, -0x80000000

    .line 612
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setWindowFlag(I)V

    .line 613
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$a;->setSystemUiFlag(I)V

    return-void

    .line 615
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat$a;->unsetSystemUiFlag(I)V

    return-void
.end method
