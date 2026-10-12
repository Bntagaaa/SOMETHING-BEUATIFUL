.class public Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field public static final ARROW_DIRECTION_END:I = 0x3

.field public static final ARROW_DIRECTION_LEFT:I = 0x0

.field public static final ARROW_DIRECTION_RIGHT:I = 0x1

.field public static final ARROW_DIRECTION_START:I = 0x2

.field public static final m:F


# instance fields
.field public final a:Landroid/graphics/Paint;

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:Z

.field public final g:Landroid/graphics/Path;

.field public final h:I

.field public i:Z

.field public j:F

.field public k:F

.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 100
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->m:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 128
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    .line 113
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->g:Landroid/graphics/Path;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->i:Z

    const/4 v2, 0x2

    .line 123
    iput v2, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->l:I

    .line 129
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 131
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v2, 0x1

    .line 132
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle:[I

    sget v3, Landroidx/appcompat/R$attr;->drawerArrowStyle:I

    sget v4, Landroidx/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 138
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setColor(I)V

    .line 139
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_thickness:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V

    .line 140
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V

    .line 142
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V

    .line 144
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->h:I

    .line 146
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_barLength:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->c:F

    .line 148
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->b:F

    .line 150
    sget v0, Landroidx/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->d:F

    .line 151
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static a(FFF)F
    .locals 0

    .line 465
    invoke-static {p1, p0, p2, p0}, L_COROUTINE/a;->a(FFFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 326
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 329
    iget v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    .line 342
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-ne v3, v5, :cond_2

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 349
    :cond_2
    iget v3, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->b:F

    mul-float v3, v3, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v3, v3, v6

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v3, v7

    .line 350
    iget v7, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->c:F

    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    invoke-static {v7, v3, v8}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a(FFF)F

    move-result v3

    .line 351
    iget v7, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->c:F

    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->d:F

    iget v9, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    invoke-static {v7, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a(FFF)F

    move-result v7

    .line 353
    iget v8, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->k:F

    iget v9, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    const/4 v10, 0x0

    invoke-static {v10, v8, v9}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a(FFF)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    .line 355
    sget v9, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->m:F

    iget v11, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    invoke-static {v10, v9, v11}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a(FFF)F

    move-result v9

    if-eqz v4, :cond_3

    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    const/high16 v11, -0x3ccc0000    # -180.0f

    :goto_1
    const/high16 v12, 0x43340000    # 180.0f

    if-eqz v4, :cond_4

    const/high16 v13, 0x43340000    # 180.0f

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 359
    :goto_2
    iget v14, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    .line 358
    invoke-static {v11, v13, v14}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a(FFF)F

    move-result v11

    float-to-double v13, v3

    const/high16 v15, 0x40000000    # 2.0f

    float-to-double v5, v9

    .line 361
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v13

    move v9, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-float v3, v3

    .line 362
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    .line 364
    iget-object v5, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->g:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    .line 365
    iget v6, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->e:F

    iget-object v13, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v14

    add-float/2addr v14, v6

    iget v6, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->k:F

    neg-float v6, v6

    const/high16 v16, 0x40000000    # 2.0f

    iget v15, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    invoke-static {v14, v6, v15}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a(FFF)F

    move-result v6

    neg-float v14, v7

    div-float v14, v14, v16

    add-float v15, v14, v8

    .line 370
    invoke-virtual {v5, v15, v10}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v8, v8, v16

    sub-float/2addr v7, v8

    .line 371
    invoke-virtual {v5, v7, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 374
    invoke-virtual {v5, v14, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 375
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    neg-float v6, v6

    .line 378
    invoke-virtual {v5, v14, v6}, Landroid/graphics/Path;->moveTo(FF)V

    neg-float v4, v4

    .line 379
    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 381
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 383
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 387
    invoke-virtual {v13}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 388
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v6, v6, v3

    sub-float/2addr v4, v6

    iget v6, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->e:F

    mul-float v7, v6, v16

    sub-float/2addr v4, v7

    float-to-int v4, v4

    .line 389
    div-int/lit8 v4, v4, 0x4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v3, v3, v7

    add-float/2addr v3, v6

    add-float/2addr v3, v4

    .line 392
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 393
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->f:Z

    if-eqz v2, :cond_6

    .line 394
    iget-boolean v2, v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->i:Z

    xor-int/2addr v2, v9

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x1

    :goto_3
    int-to-float v2, v2

    mul-float v11, v11, v2

    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    :cond_6
    if-eqz v9, :cond_7

    .line 396
    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->rotate(F)V

    .line 398
    :cond_7
    :goto_4
    invoke-virtual {v1, v5, v13}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 400
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getArrowHeadLength()F
    .locals 1

    .line 171
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->b:F

    return v0
.end method

.method public getArrowShaftLength()F
    .locals 1

    .line 190
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->d:F

    return v0
.end method

.method public getBarLength()F
    .locals 1

    .line 197
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->c:F

    return v0
.end method

.method public getBarThickness()F
    .locals 1

    .line 247
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 227
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 311
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->l:I

    return v0
.end method

.method public getGapSize()F
    .locals 1

    .line 256
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->e:F

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 419
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->h:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 424
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->h:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 437
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    return v0
.end method

.method public isSpinEnabled()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->f:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 405
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 406
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 407
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setArrowHeadLength(F)V
    .locals 1

    .line 160
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->b:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 161
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->b:F

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setArrowShaftLength(F)V
    .locals 1

    .line 180
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->d:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 181
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->d:F

    .line 182
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBarLength(F)V
    .locals 1

    .line 206
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 207
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->c:F

    .line 208
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBarThickness(F)V
    .locals 4

    .line 236
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 238
    sget p1, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->m:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-float p1, v2

    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->k:F

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 216
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 413
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDirection(I)V
    .locals 1

    .line 277
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->l:I

    if-eq p1, v0, :cond_0

    .line 278
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->l:I

    .line 279
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setGapSize(F)V
    .locals 1

    .line 267
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 268
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->e:F

    .line 269
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 448
    iget v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 449
    iput p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->j:F

    .line 450
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 1

    .line 300
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->f:Z

    if-eq v0, p1, :cond_0

    .line 301
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->f:Z

    .line 302
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1

    .line 318
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->i:Z

    if-eq v0, p1, :cond_0

    .line 319
    iput-boolean p1, p0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->i:Z

    .line 320
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
