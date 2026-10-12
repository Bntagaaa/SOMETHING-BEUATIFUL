.class Landroidx/transition/ChangeTransform$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:F

.field public final h:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->a:F

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->b:F

    .line 472
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->c:F

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->d:F

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->e:F

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->f:F

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroidx/transition/ChangeTransform$e;->g:F

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Landroidx/transition/ChangeTransform$e;->h:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 487
    instance-of v0, p1, Landroidx/transition/ChangeTransform$e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 490
    :cond_0
    check-cast p1, Landroidx/transition/ChangeTransform$e;

    .line 491
    iget v0, p1, Landroidx/transition/ChangeTransform$e;->a:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/transition/ChangeTransform$e;->b:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->b:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/transition/ChangeTransform$e;->c:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/transition/ChangeTransform$e;->d:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->d:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/transition/ChangeTransform$e;->e:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/transition/ChangeTransform$e;->f:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p1, Landroidx/transition/ChangeTransform$e;->g:F

    iget v2, p0, Landroidx/transition/ChangeTransform$e;->g:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget p1, p1, Landroidx/transition/ChangeTransform$e;->h:F

    iget v0, p0, Landroidx/transition/ChangeTransform$e;->h:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    .line 503
    iget v1, p0, Landroidx/transition/ChangeTransform$e;->a:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 504
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->b:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 505
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->c:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 506
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->d:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 507
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->e:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 508
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->f:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_5

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 509
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->g:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_6

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1f

    .line 510
    iget v3, p0, Landroidx/transition/ChangeTransform$e;->h:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_7

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :cond_7
    add-int/2addr v1, v0

    return v1
.end method

.method public restore(Landroid/view/View;)V
    .locals 1

    .line 481
    sget-object v0, Landroidx/transition/ChangeTransform;->L:[Ljava/lang/String;

    .line 448
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->a:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 449
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->b:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->c:F

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationZ(Landroid/view/View;F)V

    .line 451
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->d:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 452
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->e:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 453
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->f:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 454
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->g:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 455
    iget v0, p0, Landroidx/transition/ChangeTransform$e;->h:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
