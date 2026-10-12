.class Landroidx/core/view/WindowInsetsAnimationCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsAnimationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public b:F

.field public final c:Landroid/view/animation/Interpolator;

.field public final d:J

.field public e:F


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 0

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->a:I

    .line 545
    iput-object p2, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->c:Landroid/view/animation/Interpolator;

    .line 546
    iput-wide p3, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->d:J

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 574
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->e:F

    return v0
.end method

.method public getDurationMillis()J
    .locals 2

    .line 570
    iget-wide v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->d:J

    return-wide v0
.end method

.method public getFraction()F
    .locals 1

    .line 554
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    return v0
.end method

.method public getInterpolatedFraction()F
    .locals 2

    .line 558
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 559
    iget v1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0

    .line 561
    :cond_0
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 566
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getTypeMask()I
    .locals 1

    .line 550
    iget v0, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->a:I

    return v0
.end method

.method public setAlpha(F)V
    .locals 0

    .line 582
    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->e:F

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    .line 578
    iput p1, p0, Landroidx/core/view/WindowInsetsAnimationCompat$c;->b:F

    return-void
.end method
