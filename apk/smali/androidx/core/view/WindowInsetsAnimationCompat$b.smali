.class Landroidx/core/view/WindowInsetsAnimationCompat$b;
.super Landroidx/core/view/WindowInsetsAnimationCompat$c;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$b$a;
    }
.end annotation


# instance fields
.field public final f:Landroid/view/WindowInsetsAnimation;


# direct methods
.method public constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 974
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/core/view/WindowInsetsAnimationCompat$c;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 975
    iput-object p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    return-void
.end method

.method public static createPlatformBounds(Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 1
    .param p0    # Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1094
    invoke-static {}, La/a;->n()V

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getLowerBound()Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 1095
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getUpperBound()Landroidx/core/graphics/Insets;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, La/a;->i(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/view/WindowInsetsAnimation$Bounds;

    move-result-object p0

    return-object p0
.end method

.method public static getHigherBounds(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/Insets;
    .locals 0
    .param p0    # Landroid/view/WindowInsetsAnimation$Bounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1105
    invoke-static {p0}, La/a;->g(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static getLowerBounds(Landroid/view/WindowInsetsAnimation$Bounds;)Landroidx/core/graphics/Insets;
    .locals 0
    .param p0    # Landroid/view/WindowInsetsAnimation$Bounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1100
    invoke-static {p0}, La/a;->z(Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static setCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1087
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$b$a;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$b$a;-><init>(Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1088
    :goto_0
    invoke-static {p0, v0}, La/a;->q(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    return-void
.end method


# virtual methods
.method public getDurationMillis()J
    .locals 2

    .line 995
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, La/a;->f(Landroid/view/WindowInsetsAnimation;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFraction()F
    .locals 1

    .line 1000
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, La/a;->a(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    .line 1010
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, La/a;->w(Landroid/view/WindowInsetsAnimation;)F

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 990
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, La/a;->l(Landroid/view/WindowInsetsAnimation;)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 984
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0}, La/a;->d(Landroid/view/WindowInsetsAnimation;)I

    move-result v0

    return v0
.end method

.method public setFraction(F)V
    .locals 1

    .line 1005
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$b;->f:Landroid/view/WindowInsetsAnimation;

    invoke-static {v0, p1}, La/a;->r(Landroid/view/WindowInsetsAnimation;F)V

    return-void
.end method
