.class Landroidx/cardview/widget/g;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cardview/widget/g$a;
    }
.end annotation


# static fields
.field public static final q:D

.field public static r:Landroidx/cardview/widget/g$a;


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/RectF;

.field public f:F

.field public g:Landroid/graphics/Path;

.field public h:F

.field public i:F

.field public j:F

.field public k:Landroid/content/res/ColorStateList;

.field public l:Z

.field public final m:I

.field public final n:I

.field public o:Z

.field public p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroidx/cardview/widget/g;->q:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .locals 3

    .line 92
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->l:Z

    .line 84
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->o:Z

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroidx/cardview/widget/g;->p:Z

    .line 93
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroidx/cardview/widget/g;->m:I

    .line 94
    sget v1, Landroidx/cardview/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroidx/cardview/widget/g;->n:I

    .line 95
    sget v1, Landroidx/cardview/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/cardview/widget/g;->a:I

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    if-nez p2, :cond_0

    .line 108
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    iget-object v2, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object p2, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    .line 99
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p3, p2

    float-to-int p2, p3

    int-to-float p2, p2

    .line 100
    iput p2, p0, Landroidx/cardview/widget/g;->f:F

    .line 101
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    .line 102
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p2, p0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    .line 103
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-virtual {p0, p4, p5}, Landroidx/cardview/widget/g;->c(FF)V

    return-void
.end method

.method public static a(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 190
    sget-wide v4, Landroidx/cardview/widget/g;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    :cond_0
    return p0
.end method

.method public static b(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float p0, p0, v0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 181
    sget-wide v4, Landroidx/cardview/widget/g;->q:D

    sub-double/2addr v2, v4

    float-to-double p0, p1

    mul-double v2, v2, p0

    add-double/2addr v2, v0

    double-to-float p0, v2

    return p0

    :cond_0
    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public final c(FF)V
    .locals 3

    .line 142
    const-string v0, ". Must be >= 0"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_6

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_5

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 117
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    int-to-float p1, p1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 117
    rem-int/lit8 v1, p2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    int-to-float p2, p2

    cmpl-float v1, p1, p2

    if-lez v1, :cond_3

    .line 154
    iget-boolean p1, p0, Landroidx/cardview/widget/g;->p:Z

    if-nez p1, :cond_2

    .line 155
    iput-boolean v2, p0, Landroidx/cardview/widget/g;->p:Z

    :cond_2
    move p1, p2

    .line 158
    :cond_3
    iget v1, p0, Landroidx/cardview/widget/g;->j:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/cardview/widget/g;->h:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_4

    return-void

    .line 161
    :cond_4
    iput p1, p0, Landroidx/cardview/widget/g;->j:F

    .line 162
    iput p2, p0, Landroidx/cardview/widget/g;->h:F

    const/high16 p2, 0x3fc00000    # 1.5f

    mul-float p1, p1, p2

    .line 163
    iget p2, p0, Landroidx/cardview/widget/g;->a:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Landroidx/cardview/widget/g;->i:F

    .line 164
    iput-boolean v2, p0, Landroidx/cardview/widget/g;->l:Z

    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 147
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid max shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid shadow size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 238
    iget-boolean v4, v0, Landroidx/cardview/widget/g;->l:Z

    iget-object v6, v0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    iget-object v7, v0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    iget-object v8, v0, Landroidx/cardview/widget/g;->e:Landroid/graphics/RectF;

    const/high16 v9, 0x43870000    # 270.0f

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x43340000    # 180.0f

    const/4 v5, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_1

    .line 239
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 334
    iget v13, v0, Landroidx/cardview/widget/g;->h:F

    const/high16 v14, 0x3fc00000    # 1.5f

    mul-float v14, v14, v13

    .line 335
    iget v15, v4, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    add-float/2addr v15, v13

    const/16 v16, 0x1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v14

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v13

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v4, v14

    invoke-virtual {v8, v15, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 297
    new-instance v2, Landroid/graphics/RectF;

    iget v3, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v4, v3

    invoke-direct {v2, v4, v4, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 298
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 299
    iget v4, v0, Landroidx/cardview/widget/g;->i:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 301
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    if-nez v4, :cond_0

    .line 302
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 306
    :goto_0
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v13}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 307
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget v13, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v13, v13

    invoke-virtual {v4, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 308
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    iget v13, v0, Landroidx/cardview/widget/g;->i:F

    neg-float v13, v13

    invoke-virtual {v4, v13, v12}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 310
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v4, v3, v11, v10, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 312
    iget-object v3, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v2, v9, v4, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 313
    iget-object v2, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 314
    iget v2, v0, Landroidx/cardview/widget/g;->f:F

    iget v3, v0, Landroidx/cardview/widget/g;->i:F

    add-float/2addr v3, v2

    div-float/2addr v2, v3

    .line 315
    new-instance v18, Landroid/graphics/RadialGradient;

    iget v3, v0, Landroidx/cardview/widget/g;->f:F

    iget v4, v0, Landroidx/cardview/widget/g;->i:F

    add-float v21, v3, v4

    iget v3, v0, Landroidx/cardview/widget/g;->m:I

    iget v4, v0, Landroidx/cardview/widget/g;->n:I

    filled-new-array {v3, v3, v4}, [I

    move-result-object v22

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x3

    new-array v15, v14, [F

    aput v12, v15, v5

    aput v2, v15, v16

    const/4 v2, 0x2

    aput v13, v15, v2

    sget-object v30, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v15

    move-object/from16 v24, v30

    invoke-direct/range {v18 .. v24}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v18

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 323
    new-instance v23, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v2, v2

    iget v13, v0, Landroidx/cardview/widget/g;->i:F

    add-float v25, v2, v13

    sub-float v27, v2, v13

    filled-new-array {v3, v3, v4}, [I

    move-result-object v28

    const/4 v14, 0x3

    new-array v2, v14, [F

    fill-array-data v2, :array_0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v29, v2

    invoke-direct/range {v23 .. v30}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v2, v23

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 327
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    iput-boolean v5, v0, Landroidx/cardview/widget/g;->l:Z

    goto :goto_1

    :cond_1
    const/16 v16, 0x1

    .line 242
    :goto_1
    iget v2, v0, Landroidx/cardview/widget/g;->j:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v2, v13

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 249
    iget v2, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v3, v2

    iget v4, v0, Landroidx/cardview/widget/g;->i:F

    sub-float/2addr v3, v4

    .line 250
    iget v4, v0, Landroidx/cardview/widget/g;->a:I

    int-to-float v4, v4

    add-float/2addr v2, v4

    iget v4, v0, Landroidx/cardview/widget/g;->j:F

    div-float/2addr v4, v13

    add-float v14, v4, v2

    .line 251
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v15, v14, v13

    sub-float/2addr v2, v15

    cmpl-float v2, v2, v12

    if-lez v2, :cond_2

    const/16 v17, 0x1

    goto :goto_2

    :cond_2
    const/16 v17, 0x0

    .line 252
    :goto_2
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v15

    cmpl-float v2, v2, v12

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    .line 254
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 255
    iget v4, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v14

    iget v5, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v14

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget-object v4, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v17, :cond_4

    .line 259
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v15

    iget v5, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v5

    move/from16 v18, v2

    const/4 v2, 0x0

    move/from16 v13, v18

    const/high16 v19, 0x40000000    # 2.0f

    .line 258
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_4
    move v13, v2

    const/high16 v19, 0x40000000    # 2.0f

    .line 262
    :goto_4
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 265
    iget v2, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v14

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v14

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 267
    iget-object v2, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v17, :cond_5

    .line 270
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v4, v2, v15

    iget v2, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v2, v2

    iget v5, v0, Landroidx/cardview/widget/g;->i:F

    add-float/2addr v5, v2

    const/4 v2, 0x0

    .line 269
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 273
    :cond_5
    invoke-virtual {v1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 276
    iget v2, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v14

    iget v4, v8, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v14

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->rotate(F)V

    .line 278
    iget-object v2, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_6

    .line 281
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v4, v2, v15

    iget v2, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v2

    const/4 v2, 0x0

    .line 280
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    :cond_6
    invoke-virtual {v1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 286
    iget v2, v8, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v14

    iget v4, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v14

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->rotate(F)V

    .line 288
    iget-object v2, v0, Landroidx/cardview/widget/g;->g:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v16, :cond_7

    .line 291
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v4, v2, v15

    iget v2, v0, Landroidx/cardview/widget/g;->f:F

    neg-float v5, v2

    const/4 v2, 0x0

    .line 290
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_7
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 244
    iget v2, v0, Landroidx/cardview/widget/g;->j:F

    neg-float v2, v2

    div-float v2, v2, v19

    invoke-virtual {v1, v12, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 245
    sget-object v2, Landroidx/cardview/widget/g;->r:Landroidx/cardview/widget/g$a;

    iget v3, v0, Landroidx/cardview/widget/g;->f:F

    iget-object v4, v0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-interface {v2, v1, v8, v3, v4}, Landroidx/cardview/widget/g$a;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 170
    iget v0, p0, Landroidx/cardview/widget/g;->h:F

    iget v1, p0, Landroidx/cardview/widget/g;->f:F

    iget-boolean v2, p0, Landroidx/cardview/widget/g;->o:Z

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/g;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 172
    iget v1, p0, Landroidx/cardview/widget/g;->h:F

    iget v2, p0, Landroidx/cardview/widget/g;->f:F

    iget-boolean v3, p0, Landroidx/cardview/widget/g;->o:Z

    invoke-static {v1, v2, v3}, Landroidx/cardview/widget/g;->a(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 174
    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public isStateful()Z
    .locals 1

    .line 210
    iget-object v0, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Landroidx/cardview/widget/g;->l:Z

    return-void
.end method

.method public onStateChange([I)Z
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/cardview/widget/g;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 199
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 202
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x1

    .line 203
    iput-boolean p1, p0, Landroidx/cardview/widget/g;->l:Z

    .line 204
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v0, p0, Landroidx/cardview/widget/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Landroidx/cardview/widget/g;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/cardview/widget/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
