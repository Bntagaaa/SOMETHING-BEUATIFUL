.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$a;,
        Landroidx/core/graphics/BitmapCompat$b;,
        Landroidx/core/graphics/BitmapCompat$c;,
        Landroidx/core/graphics/BitmapCompat$d;,
        Landroidx/core/graphics/BitmapCompat$e;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 20
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-lez v1, :cond_23

    if-lez v2, :cond_23

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcRect must be contained by srcBm!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1b

    if-lt v4, v5, :cond_2

    .line 148
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$c;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 151
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    :goto_2
    if-eqz v3, :cond_4

    .line 152
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    :goto_3
    int-to-float v9, v1

    int-to-float v10, v7

    div-float/2addr v9, v10

    int-to-float v10, v2

    int-to-float v11, v8

    div-float/2addr v10, v11

    if-eqz v3, :cond_5

    .line 157
    iget v12, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    if-eqz v3, :cond_6

    .line 158
    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    const/4 v13, 0x1

    if-nez v12, :cond_8

    if-nez v3, :cond_8

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    if-ne v1, v14, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-ne v2, v14, :cond_8

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v0, v6, :cond_7

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v6

    .line 171
    :cond_8
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 172
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v15, 0x1d

    if-lt v4, v15, :cond_9

    .line 174
    invoke-static {v14}, Landroidx/core/graphics/BitmapCompat$d;->a(Landroid/graphics/Paint;)V

    goto :goto_6

    .line 176
    :cond_9
    new-instance v15, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v15, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_6
    if-ne v7, v1, :cond_a

    if-ne v8, v2, :cond_a

    .line 181
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, v12

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 183
    invoke-virtual {v1, v6, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_a
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    .line 188
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v15, v9, v11

    if-lez v15, :cond_b

    move v15, v12

    const/high16 p3, 0x3f800000    # 1.0f

    float-to-double v11, v9

    .line 189
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    :goto_7
    double-to-int v9, v11

    goto :goto_8

    :cond_b
    move v15, v12

    const/high16 p3, 0x3f800000    # 1.0f

    float-to-double v11, v9

    .line 190
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double v11, v11, v16

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    goto :goto_7

    :goto_8
    cmpl-float v11, v10, p3

    if-lez v11, :cond_c

    float-to-double v10, v10

    .line 191
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    :goto_9
    double-to-int v10, v10

    goto :goto_a

    :cond_c
    float-to-double v10, v10

    .line 192
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double v10, v10, v16

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    goto :goto_9

    :goto_a
    if-eqz p4, :cond_f

    if-lt v4, v5, :cond_f

    .line 205
    invoke-static {v0}, Landroidx/core/graphics/BitmapCompat$c;->c(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_f

    if-lez v9, :cond_d

    .line 206
    invoke-static {v7, v1, v13, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v4

    goto :goto_b

    :cond_d
    move v4, v7

    :goto_b
    if-lez v10, :cond_e

    .line 207
    invoke-static {v8, v2, v13, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    goto :goto_c

    :cond_e
    move v11, v8

    .line 208
    :goto_c
    invoke-static {v4, v11, v0, v13}, Landroidx/core/graphics/BitmapCompat$c;->b(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 210
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v12, v15

    int-to-float v12, v12

    neg-int v3, v3

    int-to-float v3, v3

    .line 211
    invoke-virtual {v11, v6, v12, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v3, v6

    move-object v6, v4

    move-object v4, v3

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_d

    :cond_f
    const/4 v4, 0x0

    move v12, v15

    const/4 v11, 0x0

    .line 221
    :goto_d
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v12, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v12, v9

    move/from16 v16, v10

    :goto_e
    if-nez v12, :cond_12

    if-eqz v16, :cond_10

    goto :goto_f

    :cond_10
    if-eq v4, v0, :cond_11

    if-eqz v4, :cond_11

    .line 311
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    return-object v6

    :cond_12
    :goto_f
    if-gez v12, :cond_13

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_13
    if-lez v12, :cond_14

    add-int/lit8 v12, v12, -0x1

    :cond_14
    :goto_10
    if-gez v16, :cond_16

    add-int/lit8 v16, v16, 0x1

    :cond_15
    :goto_11
    move/from16 v13, v16

    goto :goto_12

    :cond_16
    if-lez v16, :cond_15

    add-int/lit8 v16, v16, -0x1

    goto :goto_11

    .line 235
    :goto_12
    invoke-static {v7, v1, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v5

    move/from16 v17, v11

    .line 236
    invoke-static {v8, v2, v13, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    move/from16 v18, v12

    const/4 v12, 0x0

    .line 237
    invoke-virtual {v3, v12, v12, v5, v11}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v18, :cond_17

    if-nez v13, :cond_17

    const/4 v5, 0x1

    goto :goto_13

    :cond_17
    const/4 v5, 0x0

    :goto_13
    if-eqz v4, :cond_18

    .line 257
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v1, :cond_18

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v11, v2, :cond_18

    const/4 v11, 0x1

    goto :goto_14

    :cond_18
    const/4 v11, 0x0

    :goto_14
    if-eqz v4, :cond_1c

    if-eq v4, v0, :cond_1c

    if-eqz p4, :cond_19

    .line 258
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v19, v5

    const/16 v5, 0x1b

    if-lt v12, v5, :cond_1a

    .line 267
    invoke-static {v4}, Landroidx/core/graphics/BitmapCompat$c;->c(Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_15

    :cond_19
    move/from16 v19, v5

    :cond_1a
    :goto_15
    if-eqz v19, :cond_1b

    if-eqz v11, :cond_1d

    if-eqz v17, :cond_1b

    goto :goto_16

    :cond_1b
    const/16 v12, 0x1b

    goto :goto_1a

    :cond_1c
    move/from16 v19, v5

    :cond_1d
    :goto_16
    if-eq v4, v0, :cond_1e

    if-eqz v4, :cond_1e

    .line 275
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1e
    if-lez v18, :cond_1f

    move/from16 v4, v17

    goto :goto_17

    :cond_1f
    move/from16 v4, v18

    .line 284
    :goto_17
    invoke-static {v7, v1, v4, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v4

    if-lez v13, :cond_20

    move/from16 v5, v17

    goto :goto_18

    :cond_20
    move v5, v13

    .line 286
    :goto_18
    invoke-static {v8, v2, v5, v10}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v5

    .line 290
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1b

    if-lt v11, v12, :cond_22

    if-eqz p4, :cond_21

    if-nez v19, :cond_21

    const/4 v11, 0x1

    goto :goto_19

    :cond_21
    const/4 v11, 0x0

    .line 292
    :goto_19
    invoke-static {v4, v5, v0, v11}, Landroidx/core/graphics/BitmapCompat$c;->b(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1a

    .line 295
    :cond_22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-static {v4, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 301
    :goto_1a
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    invoke-virtual {v5, v6, v15, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    invoke-virtual {v15, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v5, v6

    move-object v6, v4

    move-object v4, v5

    move/from16 v16, v13

    move/from16 v11, v17

    move/from16 v12, v18

    const/16 v5, 0x1b

    const/4 v13, 0x1

    goto/16 :goto_e

    .line 134
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstW and dstH must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$b;->a(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$a;->a(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    invoke-static {p0, p1}, Landroidx/core/graphics/BitmapCompat$a;->b(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static sizeAtStep(IIII)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p2, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p3, p2

    shl-int p1, v0, p3

    mul-int p0, p0, p1

    return p0

    :cond_1
    neg-int p0, p2

    sub-int/2addr p0, v0

    shl-int p0, p1, p0

    return p0
.end method
