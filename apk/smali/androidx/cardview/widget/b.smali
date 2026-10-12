.class Landroidx/cardview/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/e;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    .line 118
    invoke-virtual {p1}, Landroidx/cardview/widget/f;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getElevation(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 83
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public getMaxElevation(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    .line 82
    iget p1, p1, Landroidx/cardview/widget/f;->e:F

    return p1
.end method

.method public getMinHeight(Landroidx/cardview/widget/d;)F
    .locals 1

    .line 68
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getRadius(Landroidx/cardview/widget/d;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getMinWidth(Landroidx/cardview/widget/d;)F
    .locals 1

    .line 63
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getRadius(Landroidx/cardview/widget/d;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public getRadius(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    .line 73
    invoke-virtual {p1}, Landroidx/cardview/widget/f;->getRadius()F

    move-result p1

    return p1
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 31
    new-instance p2, Landroidx/cardview/widget/f;

    invoke-direct {p2, p4, p3}, Landroidx/cardview/widget/f;-><init>(FLandroid/content/res/ColorStateList;)V

    .line 32
    invoke-interface {p1, p2}, Landroidx/cardview/widget/d;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    .line 36
    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    .line 37
    invoke-virtual {p0, p1, p6}, Landroidx/cardview/widget/b;->setMaxElevation(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/d;)V
    .locals 1

    .line 103
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getMaxElevation(Landroidx/cardview/widget/d;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/b;->setMaxElevation(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/d;)V
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getMaxElevation(Landroidx/cardview/widget/d;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/b;->setMaxElevation(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    .line 113
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/f;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/d;F)V
    .locals 0

    .line 78
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/d;F)V
    .locals 4

    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/f;

    .line 52
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Landroidx/cardview/widget/d;->getPreventCornerOverlap()Z

    move-result v2

    .line 70
    iget v3, v0, Landroidx/cardview/widget/f;->e:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    .line 70
    iget-boolean v3, v0, Landroidx/cardview/widget/f;->f:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, v0, Landroidx/cardview/widget/f;->g:Z

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iput p2, v0, Landroidx/cardview/widget/f;->e:F

    .line 75
    iput-boolean v1, v0, Landroidx/cardview/widget/f;->f:Z

    .line 76
    iput-boolean v2, v0, Landroidx/cardview/widget/f;->g:Z

    const/4 p2, 0x0

    .line 77
    invoke-virtual {v0, p2}, Landroidx/cardview/widget/f;->b(Landroid/graphics/Rect;)V

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 53
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->updatePadding(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/d;F)V
    .locals 1

    .line 122
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    .line 131
    iget v0, p1, Landroidx/cardview/widget/f;->a:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iput p2, p1, Landroidx/cardview/widget/f;->a:F

    const/4 p2, 0x0

    .line 135
    invoke-virtual {p1, p2}, Landroidx/cardview/widget/f;->b(Landroid/graphics/Rect;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public updatePadding(Landroidx/cardview/widget/d;)V
    .locals 4

    .line 88
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getUseCompatPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    invoke-interface {p1, v0, v0, v0, v0}, Landroidx/cardview/widget/d;->setShadowPadding(IIII)V

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getMaxElevation(Landroidx/cardview/widget/d;)F

    move-result v0

    .line 93
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->getRadius(Landroidx/cardview/widget/d;)F

    move-result v1

    .line 95
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getPreventCornerOverlap()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/g;->a(FFZ)F

    move-result v2

    float-to-double v2, v2

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 97
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getPreventCornerOverlap()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroidx/cardview/widget/g;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 98
    invoke-interface {p1, v2, v0, v2, v0}, Landroidx/cardview/widget/d;->setShadowPadding(IIII)V

    return-void
.end method
