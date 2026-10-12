.class final Lcom/google/android/material/progressindicator/a;
.super Lcom/google/android/material/progressindicator/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/h<",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/h;-><init>(Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    const/4 p1, 0x1

    .line 33
    iput p1, p0, Lcom/google/android/material/progressindicator/a;->c:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 159
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackColor:I

    iget-object v1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {v1}, Lcom/google/android/material/progressindicator/g;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 162
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x1

    .line 164
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget v0, p0, Lcom/google/android/material/progressindicator/a;->d:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    new-instance v2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/google/android/material/progressindicator/a;->f:F

    neg-float v1, v0

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x43b40000    # 360.0f

    move-object v1, p1

    move-object v6, p2

    .line 169
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public adjustCanvas(Landroid/graphics/Canvas;F)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 66
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-object v1, v0

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 67
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 69
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v3, v1

    .line 73
    invoke-virtual {p1, v3, v3, v1, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 78
    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/material/progressindicator/a;->c:I

    .line 79
    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/google/android/material/progressindicator/a;->d:F

    .line 80
    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackCornerRadius:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lcom/google/android/material/progressindicator/a;->e:F

    .line 81
    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    sub-int/2addr p1, v3

    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/progressindicator/a;->f:F

    .line 82
    iget-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/g;->isShowing()Z

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq p1, v4, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/g;

    .line 84
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/g;->isHiding()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p1, v1, :cond_3

    .line 89
    :cond_2
    iget p1, p0, Lcom/google/android/material/progressindicator/a;->f:F

    sub-float/2addr v3, p2

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    mul-float v3, v3, p2

    div-float/2addr v3, v2

    add-float/2addr v3, p1

    iput v3, p0, Lcom/google/android/material/progressindicator/a;->f:F

    return-void

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/g;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/g;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq p1, v1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/progressindicator/h;->b:Lcom/google/android/material/progressindicator/g;

    .line 92
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/g;->isHiding()Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v0

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne p1, v4, :cond_6

    .line 97
    :cond_5
    iget p1, p0, Lcom/google/android/material/progressindicator/a;->f:F

    sub-float/2addr v3, p2

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p2, v0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->trackThickness:I

    int-to-float p2, p2

    mul-float v3, v3, p2

    div-float/2addr v3, v2

    sub-float/2addr p1, v3

    iput p1, p0, Lcom/google/android/material/progressindicator/a;->f:F

    :cond_6
    return-void
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V
    .locals 2

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 179
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 181
    new-instance p5, Landroid/graphics/RectF;

    iget v0, p0, Lcom/google/android/material/progressindicator/a;->f:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p3, v1

    sub-float v1, v0, p3

    add-float/2addr v0, p3

    neg-float p3, p4

    invoke-direct {p5, v1, p4, v0, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 187
    invoke-virtual {p1, p5, p4, p4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final fillIndicator(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V
    .locals 8

    cmpl-float v1, p3, p4

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 125
    :cond_0
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v1, 0x1

    .line 127
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget v1, p0, Lcom/google/android/material/progressindicator/a;->d:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v7, 0x43b40000    # 360.0f

    mul-float v1, p3, v7

    .line 132
    iget v3, p0, Lcom/google/android/material/progressindicator/a;->c:I

    int-to-float v3, v3

    mul-float v5, v1, v3

    cmpl-float v1, p4, p3

    if-ltz v1, :cond_1

    sub-float v1, p4, p3

    :goto_0
    mul-float v1, v1, v7

    mul-float v1, v1, v3

    move v4, v1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p4

    sub-float/2addr v1, p3

    goto :goto_0

    .line 139
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/progressindicator/a;->f:F

    neg-float v3, v1

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v3, v5

    const/4 v5, 0x0

    move-object v1, p1

    move-object v6, p2

    .line 140
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move v6, v4

    .line 143
    iget v1, p0, Lcom/google/android/material/progressindicator/a;->e:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_2

    .line 144
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move v5, v3

    .line 145
    iget v3, p0, Lcom/google/android/material/progressindicator/a;->d:F

    iget v4, p0, Lcom/google/android/material/progressindicator/a;->e:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/progressindicator/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    move v3, v5

    .line 146
    iget v1, p0, Lcom/google/android/material/progressindicator/a;->d:F

    iget v4, p0, Lcom/google/android/material/progressindicator/a;->e:F

    add-float v5, v3, v6

    move v3, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/progressindicator/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFF)V

    :cond_2
    :goto_2
    return-void
.end method

.method public getPreferredHeight()I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getPreferredWidth()I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/google/android/material/progressindicator/h;->a:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    return v0
.end method
