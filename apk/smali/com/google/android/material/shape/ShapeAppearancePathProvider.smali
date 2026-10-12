.class public Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;,
        Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;
    }
.end annotation


# instance fields
.field public final a:[Lcom/google/android/material/shape/ShapePath;

.field public final b:[Landroid/graphics/Matrix;

.field public final c:[Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/PointF;

.field public final e:Landroid/graphics/Path;

.field public final f:Landroid/graphics/Path;

.field public final g:Lcom/google/android/material/shape/ShapePath;

.field public final h:[F

.field public final i:[F

.field public final j:Landroid/graphics/Path;

.field public final k:Landroid/graphics/Path;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 55
    new-array v1, v0, [Lcom/google/android/material/shape/ShapePath;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    .line 56
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    .line 57
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    .line 60
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    .line 61
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    .line 62
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    .line 63
    new-instance v1, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v1}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    const/4 v1, 0x2

    .line 64
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    .line 65
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    .line 66
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    .line 67
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    new-instance v3, Lcom/google/android/material/shape/ShapePath;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapePath;-><init>()V

    aput-object v3, v2, v1

    .line 74
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 75
    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/google/android/material/shape/ShapeAppearancePathProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 83
    sget-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$a;->a:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Path;I)Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v1, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2, v0}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 237
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 238
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 239
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 240
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 241
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 243
    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6
    .param p4    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    return-void
.end method

.method public calculatePath(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V
    .locals 22
    .param p5    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 118
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    .line 119
    iget-object v1, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->e:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    .line 120
    iget-object v2, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 121
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v7, p3

    invoke-virtual {v2, v7, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 122
    new-instance v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;FLandroid/graphics/RectF;Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;Landroid/graphics/Path;)V

    const/4 v5, 0x0

    .line 128
    :goto_0
    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->c:[Landroid/graphics/Matrix;

    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->b:[Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a:[Lcom/google/android/material/shape/ShapePath;

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    iget-object v13, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->h:[F

    iget-object v14, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->c:Landroid/graphics/RectF;

    iget-object v15, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->a:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-ge v5, v9, :cond_9

    if-eq v5, v10, :cond_2

    if-eq v5, v11, :cond_1

    if-eq v5, v12, :cond_0

    .line 287
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v9

    :goto_1
    move-object/from16 v21, v9

    goto :goto_2

    .line 284
    :cond_0
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v9

    goto :goto_1

    .line 282
    :cond_1
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v9

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object v9

    goto :goto_1

    :goto_2
    if-eq v5, v10, :cond_5

    if-eq v5, v11, :cond_4

    if-eq v5, v12, :cond_3

    .line 272
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v9

    :goto_3
    move-object/from16 v16, v9

    goto :goto_4

    .line 269
    :cond_3
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v9

    goto :goto_3

    .line 267
    :cond_4
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v9

    goto :goto_3

    .line 265
    :cond_5
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;

    move-result-object v9

    goto :goto_3

    .line 149
    :goto_4
    aget-object v17, v8, v5

    const/high16 v18, 0x42b40000    # 90.0f

    .line 150
    iget v9, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->e:F

    iget-object v15, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->c:Landroid/graphics/RectF;

    move/from16 v19, v9

    move-object/from16 v20, v15

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/material/shape/CornerTreatment;->getCornerPath(Lcom/google/android/material/shape/ShapePath;FFLandroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)V

    add-int/lit8 v9, v5, 0x1

    mul-int/lit8 v15, v9, 0x5a

    int-to-float v15, v15

    .line 153
    aget-object v16, v7, v5

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Matrix;->reset()V

    const/16 p1, 0x0

    .line 154
    iget-object v3, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->d:Landroid/graphics/PointF;

    if-eq v5, v10, :cond_8

    if-eq v5, v11, :cond_7

    if-eq v5, v12, :cond_6

    .line 319
    iget v11, v14, Landroid/graphics/RectF;->right:F

    iget v12, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5

    .line 315
    :cond_6
    iget v11, v14, Landroid/graphics/RectF;->left:F

    iget v12, v14, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5

    .line 312
    :cond_7
    iget v11, v14, Landroid/graphics/RectF;->left:F

    iget v12, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_5

    .line 309
    :cond_8
    iget v11, v14, Landroid/graphics/RectF;->right:F

    iget v12, v14, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    .line 155
    :goto_5
    aget-object v11, v7, v5

    iget v12, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v12, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 156
    aget-object v3, v7, v5

    invoke-virtual {v3, v15}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 160
    aget-object v3, v8, v5

    .line 319
    iget v8, v3, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 160
    aput v8, v13, p1

    .line 323
    iget v3, v3, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 161
    aput v3, v13, v10

    .line 162
    aget-object v3, v7, v5

    invoke-virtual {v3, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 164
    aget-object v3, v6, v5

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 165
    aget-object v3, v6, v5

    aget v7, v13, p1

    aget v8, v13, v10

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 166
    aget-object v3, v6, v5

    invoke-virtual {v3, v15}, Landroid/graphics/Matrix;->preRotate(F)Z

    move v5, v9

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v9, :cond_13

    .line 170
    aget-object v5, v8, v3

    .line 311
    iget v9, v5, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 170
    aput v9, v13, p1

    .line 315
    iget v5, v5, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 171
    aput v5, v13, v10

    .line 172
    aget-object v5, v7, v3

    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 173
    iget-object v5, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->b:Landroid/graphics/Path;

    if-nez v3, :cond_a

    .line 174
    aget v9, v13, p1

    aget v11, v13, v10

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_7

    .line 176
    :cond_a
    aget v9, v13, p1

    aget v11, v13, v10

    invoke-virtual {v5, v9, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    :goto_7
    aget-object v9, v8, v3

    aget-object v11, v7, v3

    invoke-virtual {v9, v11, v5}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 179
    iget-object v9, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->d:Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;

    if-eqz v9, :cond_b

    .line 180
    aget-object v11, v8, v3

    aget-object v12, v7, v3

    invoke-interface {v9, v11, v12, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onCornerPathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    :cond_b
    add-int/lit8 v11, v3, 0x1

    .line 185
    rem-int/lit8 v12, v11, 0x4

    const/16 v16, 0x1

    .line 186
    aget-object v10, v8, v3

    move-object/from16 v17, v6

    .line 319
    iget v6, v10, Lcom/google/android/material/shape/ShapePath;->endX:F

    .line 186
    aput v6, v13, p1

    .line 323
    iget v6, v10, Lcom/google/android/material/shape/ShapePath;->endY:F

    .line 187
    aput v6, v13, v16

    .line 188
    aget-object v6, v7, v3

    invoke-virtual {v6, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 190
    aget-object v6, v8, v12

    .line 311
    iget v10, v6, Lcom/google/android/material/shape/ShapePath;->startX:F

    move-object/from16 v18, v7

    .line 190
    iget-object v7, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->i:[F

    aput v10, v7, p1

    .line 315
    iget v6, v6, Lcom/google/android/material/shape/ShapePath;->startY:F

    .line 191
    aput v6, v7, v16

    .line 192
    aget-object v6, v18, v12

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 194
    aget v6, v13, p1

    aget v10, v7, p1

    sub-float/2addr v6, v10

    move-object v10, v7

    float-to-double v6, v6

    aget v19, v13, v16

    aget v10, v10, v16

    sub-float v10, v19, v10

    move/from16 v19, v11

    float-to-double v10, v10

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    const v7, 0x3a83126f    # 0.001f

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 247
    aget-object v10, v8, v3

    iget v11, v10, Lcom/google/android/material/shape/ShapePath;->endX:F

    aput v11, v13, p1

    .line 248
    iget v10, v10, Lcom/google/android/material/shape/ShapePath;->endY:F

    aput v10, v13, v16

    .line 249
    aget-object v10, v18, v3

    invoke-virtual {v10, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v10, 0x1

    if-eq v3, v10, :cond_c

    const/4 v11, 0x3

    if-eq v3, v11, :cond_c

    .line 257
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    aget v20, v13, v10

    sub-float v11, v11, v20

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    goto :goto_8

    .line 253
    :cond_c
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aget v11, v13, p1

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 198
    :goto_8
    iget-object v11, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->g:Lcom/google/android/material/shape/ShapePath;

    invoke-virtual {v11, v7, v7}, Lcom/google/android/material/shape/ShapePath;->reset(FF)V

    const/4 v7, 0x1

    if-eq v3, v7, :cond_f

    const/4 v7, 0x2

    if-eq v3, v7, :cond_e

    const/4 v7, 0x3

    if-eq v3, v7, :cond_d

    .line 302
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v20

    :goto_9
    move-object/from16 v7, v20

    move-object/from16 v20, v8

    goto :goto_a

    .line 299
    :cond_d
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v20

    goto :goto_9

    :cond_e
    const/4 v7, 0x3

    .line 297
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v20

    goto :goto_9

    :cond_f
    const/4 v7, 0x3

    .line 295
    invoke-virtual {v15}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;

    move-result-object v20

    goto :goto_9

    .line 200
    :goto_a
    iget v8, v4, Lcom/google/android/material/shape/ShapeAppearancePathProvider$b;->e:F

    invoke-virtual {v7, v6, v10, v8, v11}, Lcom/google/android/material/shape/EdgeTreatment;->getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V

    .line 201
    iget-object v6, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->j:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 202
    aget-object v8, v17, v3

    invoke-virtual {v11, v8, v6}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 204
    iget-boolean v8, v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->l:Z

    if-eqz v8, :cond_10

    .line 206
    invoke-virtual {v7}, Lcom/google/android/material/shape/EdgeTreatment;->a()Z

    move-result v7

    if-nez v7, :cond_11

    .line 207
    invoke-virtual {v0, v6, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a(Landroid/graphics/Path;I)Z

    move-result v7

    if-nez v7, :cond_11

    .line 208
    invoke-virtual {v0, v6, v12}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;->a(Landroid/graphics/Path;I)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_b

    :cond_10
    const/16 v16, 0x1

    goto :goto_c

    .line 212
    :cond_11
    :goto_b
    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v6, v6, v2, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 311
    iget v5, v11, Lcom/google/android/material/shape/ShapePath;->startX:F

    .line 216
    aput v5, v13, p1

    .line 315
    iget v5, v11, Lcom/google/android/material/shape/ShapePath;->startY:F

    const/16 v16, 0x1

    .line 217
    aput v5, v13, v16

    .line 218
    aget-object v5, v17, v3

    invoke-virtual {v5, v13}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 219
    aget v5, v13, p1

    aget v6, v13, v16

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 222
    aget-object v5, v17, v3

    invoke-virtual {v11, v5, v1}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_d

    .line 224
    :goto_c
    aget-object v6, v17, v3

    invoke-virtual {v11, v6, v5}, Lcom/google/android/material/shape/ShapePath;->applyToPath(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    :goto_d
    if-eqz v9, :cond_12

    .line 228
    aget-object v5, v17, v3

    invoke-interface {v9, v11, v5, v3}, Lcom/google/android/material/shape/ShapeAppearancePathProvider$PathListener;->onEdgePathCreated(Lcom/google/android/material/shape/ShapePath;Landroid/graphics/Matrix;I)V

    :cond_12
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v3, v19

    move-object/from16 v8, v20

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_6

    .line 138
    :cond_13
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 143
    sget-object v2, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    move-object/from16 v9, p5

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_14
    return-void
.end method
