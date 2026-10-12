.class Landroidx/cardview/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/cardview/widget/e;


# instance fields
.field public final a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroidx/cardview/widget/c;->a:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getBackgroundColor(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 382
    iget-object p1, p1, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method public getElevation(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 357
    iget p1, p1, Landroidx/cardview/widget/g;->j:F

    return p1
.end method

.method public getMaxElevation(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 361
    iget p1, p1, Landroidx/cardview/widget/g;->h:F

    return p1
.end method

.method public getMinHeight(Landroidx/cardview/widget/d;)F
    .locals 6

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 371
    iget v0, p1, Landroidx/cardview/widget/g;->h:F

    .line 371
    iget v1, p1, Landroidx/cardview/widget/g;->f:F

    iget v2, p1, Landroidx/cardview/widget/g;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v4, v0, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v5

    .line 373
    iget p1, p1, Landroidx/cardview/widget/g;->h:F

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    mul-float p1, p1, v5

    add-float/2addr p1, v0

    return p1
.end method

.method public getMinWidth(Landroidx/cardview/widget/d;)F
    .locals 5

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 365
    iget v0, p1, Landroidx/cardview/widget/g;->h:F

    .line 365
    iget v1, p1, Landroidx/cardview/widget/g;->f:F

    iget v2, p1, Landroidx/cardview/widget/g;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    add-float/2addr v4, v1

    .line 366
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v3

    .line 367
    iget p1, p1, Landroidx/cardview/widget/g;->h:F

    add-float/2addr p1, v2

    mul-float p1, p1, v3

    add-float/2addr p1, v0

    return p1
.end method

.method public getRadius(Landroidx/cardview/widget/d;)F
    .locals 0

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 341
    iget p1, p1, Landroidx/cardview/widget/g;->f:F

    return p1
.end method

.method public initStatic()V
    .locals 1

    .line 37
    new-instance v0, Landroidx/cardview/widget/c$a;

    invoke-direct {v0, p0}, Landroidx/cardview/widget/c$a;-><init>(Landroidx/cardview/widget/c;)V

    sput-object v0, Landroidx/cardview/widget/g;->r:Landroidx/cardview/widget/g$a;

    return-void
.end method

.method public initialize(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    .line 93
    new-instance v0, Landroidx/cardview/widget/g;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/cardview/widget/g;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    .line 85
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getPreventCornerOverlap()Z

    move-result p2

    .line 124
    iput-boolean p2, v0, Landroidx/cardview/widget/g;->o:Z

    .line 125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 86
    invoke-interface {p1, v0}, Landroidx/cardview/widget/d;->setCardBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->updatePadding(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public onCompatPaddingChanged(Landroidx/cardview/widget/d;)V
    .locals 0

    return-void
.end method

.method public onPreventCornerOverlapChanged(Landroidx/cardview/widget/d;)V
    .locals 2

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/g;

    .line 114
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getPreventCornerOverlap()Z

    move-result v1

    .line 124
    iput-boolean v1, v0, Landroidx/cardview/widget/g;->o:Z

    .line 125
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 115
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->updatePadding(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public setBackgroundColor(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    if-nez p2, :cond_0

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    .line 108
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, p1, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    .line 109
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    iget-object v1, p1, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iget-object v0, p1, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 378
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setElevation(Landroidx/cardview/widget/d;F)V
    .locals 1

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/g;

    .line 349
    iget v0, p1, Landroidx/cardview/widget/g;->h:F

    .line 349
    invoke-virtual {p1, p2, v0}, Landroidx/cardview/widget/g;->c(FF)V

    return-void
.end method

.method public setMaxElevation(Landroidx/cardview/widget/d;F)V
    .locals 2

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/g;

    .line 353
    iget v1, v0, Landroidx/cardview/widget/g;->j:F

    .line 353
    invoke-virtual {v0, v1, p2}, Landroidx/cardview/widget/g;->c(FF)V

    .line 152
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->updatePadding(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public setRadius(Landroidx/cardview/widget/d;F)V
    .locals 2

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/g;

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 228
    iget v1, v0, Landroidx/cardview/widget/g;->f:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iput p2, v0, Landroidx/cardview/widget/g;->f:F

    const/4 p2, 0x1

    .line 232
    iput-boolean p2, v0, Landroidx/cardview/widget/g;->l:Z

    .line 233
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->updatePadding(Landroidx/cardview/widget/d;)V

    return-void

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid radius "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ". Must be >= 0"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePadding(Landroidx/cardview/widget/d;)V
    .locals 4

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 171
    invoke-interface {p1}, Landroidx/cardview/widget/d;->getCardBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/g;

    .line 345
    invoke-virtual {v1, v0}, Landroidx/cardview/widget/g;->getPadding(Landroid/graphics/Rect;)Z

    .line 101
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->getMinWidth(Landroidx/cardview/widget/d;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 102
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/c;->getMinHeight(Landroidx/cardview/widget/d;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 101
    invoke-interface {p1, v1, v2}, Landroidx/cardview/widget/d;->setMinWidthHeightInternal(II)V

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v1, v2, v3, v0}, Landroidx/cardview/widget/d;->setShadowPadding(IIII)V

    return-void
.end method
