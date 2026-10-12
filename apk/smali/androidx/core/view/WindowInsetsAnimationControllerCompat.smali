.class public final Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;,
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;
    }
.end annotation


# instance fields
.field public final a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 1

    .line 189
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    .line 332
    iget-object v0, v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    .line 332
    invoke-static {v0, p1}, La/a;->t(Landroid/view/WindowInsetsAnimationController;Z)V

    return-void
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->getCurrentAlpha()F

    move-result v0

    return v0
.end method

.method public getCurrentFraction()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 115
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->getCurrentFraction()F

    move-result v0

    return v0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 100
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->getCurrentInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 66
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->getHiddenStateInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 85
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->getShownStateInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->getTypes()I

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 225
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    .line 342
    iget-object v0, v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    .line 342
    invoke-static {v0}, La/a;->B(Landroid/view/WindowInsetsAnimationController;)Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 213
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    .line 337
    iget-object v0, v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    .line 337
    invoke-static {v0}, La/a;->v(Landroid/view/WindowInsetsAnimationController;)Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .locals 1
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->a:Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V

    return-void
.end method
