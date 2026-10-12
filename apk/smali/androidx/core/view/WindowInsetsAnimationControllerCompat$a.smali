.class Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;
.super Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowInsetsAnimationController;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;-><init>()V

    .line 285
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    return-void
.end method


# virtual methods
.method public getCurrentAlpha()F
    .locals 1

    .line 313
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, La/a;->x(Landroid/view/WindowInsetsAnimationController;)F

    move-result v0

    return v0
.end method

.method public getCurrentFraction()F
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, La/a;->b(Landroid/view/WindowInsetsAnimationController;)F

    move-result v0

    return v0
.end method

.method public getCurrentInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 303
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, La/a;->A(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenStateInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 291
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, Landroidx/core/view/p;->d(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getShownStateInsets()Landroidx/core/graphics/Insets;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 297
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, La/a;->h(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    invoke-static {v0}, La/a;->e(Landroid/view/WindowInsetsAnimationController;)I

    move-result v0

    return v0
.end method

.method public setInsetsAndAlpha(Landroidx/core/graphics/Insets;FF)V
    .locals 1
    .param p1    # Landroidx/core/graphics/Insets;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 324
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;->a:Landroid/view/WindowInsetsAnimationController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1, p2, p3}, La/a;->s(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FF)V

    return-void
.end method
