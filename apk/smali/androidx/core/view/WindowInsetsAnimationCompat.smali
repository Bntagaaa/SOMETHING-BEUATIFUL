.class public final Landroidx/core/view/WindowInsetsAnimationCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationCompat$b;,
        Landroidx/core/view/WindowInsetsAnimationCompat$c;,
        Landroidx/core/view/WindowInsetsAnimationCompat$a;,
        Landroidx/core/view/WindowInsetsAnimationCompat$Callback;,
        Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    }
.end annotation


# instance fields
.field public a:Landroidx/core/view/WindowInsetsAnimationCompat$c;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 2
    .param p2    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 78
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$b;

    .line 979
    invoke-static {p1, p2, p3, p4}, La/a;->j(ILandroid/view/animation/Interpolator;J)Landroid/view/WindowInsetsAnimation;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$b;-><init>(Landroid/view/WindowInsetsAnimation;)V

    .line 78
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    return-void

    .line 80
    :cond_0
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationCompat$a;

    .line 613
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsAnimationCompat$c;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 80
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 170
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->getDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFraction()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 123
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->getFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->getInterpolatedFraction()F

    move-result v0

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 162
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->getTypeMask()I

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 211
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->setAlpha(F)V

    return-void
.end method

.method public setFraction(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 186
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat;->a:Landroidx/core/view/WindowInsetsAnimationCompat$c;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationCompat$c;->setFraction(F)V

    return-void
.end method
