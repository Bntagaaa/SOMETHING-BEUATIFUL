.class Landroidx/core/content/res/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Landroidx/core/content/res/a;->a:F

    .line 130
    iput p2, p0, Landroidx/core/content/res/a;->b:F

    .line 131
    iput p3, p0, Landroidx/core/content/res/a;->c:F

    .line 135
    iput p4, p0, Landroidx/core/content/res/a;->d:F

    .line 136
    iput p5, p0, Landroidx/core/content/res/a;->e:F

    .line 137
    iput p6, p0, Landroidx/core/content/res/a;->f:F

    return-void
.end method

.method public static a(I)Landroidx/core/content/res/a;
    .locals 21

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    sget-object v3, Landroidx/core/content/res/h;->k:Landroidx/core/content/res/h;

    .line 137
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Landroidx/core/content/res/b;->b(I)F

    move-result v4

    .line 138
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v5}, Landroidx/core/content/res/b;->b(I)F

    move-result v5

    .line 139
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v6}, Landroidx/core/content/res/b;->b(I)F

    move-result v6

    .line 141
    sget-object v7, Landroidx/core/content/res/b;->d:[[F

    .line 142
    aget-object v8, v7, v2

    aget v9, v8, v2

    mul-float v9, v9, v4

    aget v10, v8, v1

    mul-float v10, v10, v5

    add-float/2addr v10, v9

    aget v8, v8, v0

    mul-float v8, v8, v6

    add-float/2addr v8, v10

    .line 143
    aget-object v9, v7, v1

    aget v10, v9, v2

    mul-float v10, v10, v4

    aget v11, v9, v1

    mul-float v11, v11, v5

    add-float/2addr v11, v10

    aget v9, v9, v0

    mul-float v9, v9, v6

    add-float/2addr v9, v11

    .line 144
    aget-object v7, v7, v0

    aget v10, v7, v2

    mul-float v4, v4, v10

    aget v10, v7, v1

    mul-float v5, v5, v10

    add-float/2addr v5, v4

    aget v4, v7, v0

    mul-float v6, v6, v4

    add-float/2addr v6, v5

    const/4 v4, 0x3

    .line 145
    new-array v4, v4, [F

    aput v8, v4, v2

    aput v9, v4, v1

    aput v6, v4, v0

    .line 174
    sget-object v5, Landroidx/core/content/res/b;->a:[[F

    .line 175
    aget v6, v4, v2

    aget-object v7, v5, v2

    aget v8, v7, v2

    mul-float v8, v8, v6

    aget v9, v4, v1

    aget v10, v7, v1

    mul-float v10, v10, v9

    add-float/2addr v10, v8

    aget v4, v4, v0

    aget v7, v7, v0

    mul-float v7, v7, v4

    add-float/2addr v7, v10

    .line 176
    aget-object v8, v5, v1

    aget v10, v8, v2

    mul-float v10, v10, v6

    aget v11, v8, v1

    mul-float v11, v11, v9

    add-float/2addr v11, v10

    aget v8, v8, v0

    mul-float v8, v8, v4

    add-float/2addr v8, v11

    .line 177
    aget-object v5, v5, v0

    aget v10, v5, v2

    mul-float v6, v6, v10

    aget v10, v5, v1

    mul-float v9, v9, v10

    add-float/2addr v9, v6

    aget v5, v5, v0

    mul-float v4, v4, v5

    add-float/2addr v4, v9

    .line 96
    iget-object v5, v3, Landroidx/core/content/res/h;->g:[F

    .line 180
    aget v2, v5, v2

    mul-float v2, v2, v7

    .line 181
    aget v1, v5, v1

    mul-float v1, v1, v8

    .line 182
    aget v0, v5, v0

    mul-float v0, v0, v4

    .line 185
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v3, Landroidx/core/content/res/h;->h:F

    mul-float v4, v4, v5

    float-to-double v6, v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const-wide v10, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    .line 186
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v5

    float-to-double v6, v6

    div-double/2addr v6, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    .line 187
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v7, v7, v5

    float-to-double v12, v7

    div-double/2addr v12, v8

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v5, v10

    .line 188
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v7, 0x43c80000    # 400.0f

    mul-float v2, v2, v7

    mul-float v2, v2, v4

    const v10, 0x41d90a3d    # 27.13f

    add-float/2addr v4, v10

    div-float/2addr v2, v4

    .line 189
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float v1, v1, v7

    mul-float v1, v1, v6

    add-float/2addr v6, v10

    div-float/2addr v1, v6

    .line 190
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float v0, v0, v7

    mul-float v0, v0, v5

    add-float/2addr v5, v10

    div-float/2addr v0, v5

    const-wide/high16 v4, 0x4026000000000000L    # 11.0

    float-to-double v6, v2

    mul-double v6, v6, v4

    const-wide/high16 v4, -0x3fd8000000000000L    # -12.0

    float-to-double v10, v1

    mul-double v10, v10, v4

    add-double/2addr v10, v6

    float-to-double v4, v0

    add-double/2addr v10, v4

    double-to-float v6, v10

    const/high16 v7, 0x41300000    # 11.0f

    div-float/2addr v6, v7

    add-float v7, v2, v1

    float-to-double v10, v7

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v12

    sub-double/2addr v10, v4

    double-to-float v4, v10

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v7, v2, v5

    mul-float v1, v1, v5

    add-float/2addr v7, v1

    const/high16 v10, 0x41a80000    # 21.0f

    mul-float v10, v10, v0

    add-float/2addr v10, v7

    div-float/2addr v10, v5

    const/high16 v7, 0x42200000    # 40.0f

    mul-float v2, v2, v7

    add-float/2addr v2, v1

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    float-to-double v0, v4

    float-to-double v14, v6

    .line 202
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float v0, v0, v1

    const v5, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v5

    const/4 v7, 0x0

    const/high16 v11, 0x43b40000    # 360.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_1

    add-float/2addr v0, v11

    :cond_0
    :goto_0
    move v15, v0

    goto :goto_1

    :cond_1
    cmpl-float v7, v0, v11

    if-ltz v7, :cond_0

    sub-float/2addr v0, v11

    goto :goto_0

    :goto_1
    mul-float v5, v5, v15

    div-float/2addr v5, v1

    .line 211
    iget v0, v3, Landroidx/core/content/res/h;->b:F

    mul-float v2, v2, v0

    .line 214
    iget v0, v3, Landroidx/core/content/res/h;->a:F

    div-float/2addr v2, v0

    float-to-double v1, v2

    .line 215
    iget v7, v3, Landroidx/core/content/res/h;->d:F

    iget v14, v3, Landroidx/core/content/res/h;->j:F

    mul-float v14, v14, v7

    move-wide/from16 v16, v8

    float-to-double v8, v14

    .line 214
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    div-float v2, v1, v2

    float-to-double v8, v2

    .line 219
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v0, v2

    float-to-double v8, v15

    const-wide v18, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v2, v8, v18

    if-gez v2, :cond_2

    add-float/2addr v11, v15

    goto :goto_2

    :cond_2
    move v11, v15

    :goto_2
    float-to-double v8, v11

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v18

    const-wide v18, 0x4066800000000000L    # 180.0

    div-double v8, v8, v18

    add-double/2addr v8, v12

    .line 225
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v11, 0x400e666666666666L    # 3.8

    add-double/2addr v8, v11

    double-to-float v2, v8

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v2, v2, v8

    const v8, 0x45706276

    mul-float v2, v2, v8

    .line 226
    iget v8, v3, Landroidx/core/content/res/h;->e:F

    mul-float v2, v2, v8

    iget v8, v3, Landroidx/core/content/res/h;->c:F

    mul-float v2, v2, v8

    mul-float v6, v6, v6

    mul-float v4, v4, v4

    add-float/2addr v4, v6

    float-to-double v8, v4

    .line 227
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v2, v2, v4

    const v4, 0x3e9c28f6    # 0.305f

    add-float/2addr v10, v4

    div-float/2addr v2, v10

    .line 228
    iget v4, v3, Landroidx/core/content/res/h;->f:F

    float-to-double v8, v4

    const-wide v10, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v10, v8

    const-wide v8, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v4, v8

    float-to-double v8, v2

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 229
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float v4, v4, v2

    float-to-double v8, v1

    div-double v8, v8, v16

    .line 231
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v2, v8

    mul-float v16, v4, v2

    .line 232
    iget v2, v3, Landroidx/core/content/res/h;->i:F

    mul-float v2, v2, v16

    mul-float v4, v4, v7

    div-float/2addr v4, v0

    float-to-double v3, v4

    .line 233
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    const v0, 0x3fd9999a    # 1.7f

    mul-float v0, v0, v1

    const v3, 0x3be56042    # 0.007f

    mul-float v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    div-float v18, v0, v3

    const v0, 0x3cbac711    # 0.0228f

    mul-float v2, v2, v0

    add-float/2addr v2, v4

    float-to-double v2, v2

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    double-to-float v0, v2

    const v2, 0x422f7048

    mul-float v0, v0, v2

    float-to-double v2, v5

    .line 239
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v19, v0, v4

    .line 240
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v20, v0, v2

    .line 242
    new-instance v14, Landroidx/core/content/res/a;

    move/from16 v17, v1

    invoke-direct/range {v14 .. v20}, Landroidx/core/content/res/a;-><init>(FFFFFF)V

    return-object v14
.end method

.method public static b(FFF)Landroidx/core/content/res/a;
    .locals 12

    .line 253
    sget-object v0, Landroidx/core/content/res/h;->k:Landroidx/core/content/res/h;

    .line 87
    iget v1, v0, Landroidx/core/content/res/h;->d:F

    float-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 268
    iget v3, v0, Landroidx/core/content/res/h;->a:F

    const/high16 v4, 0x40800000    # 4.0f

    add-float/2addr v3, v4

    .line 270
    iget v4, v0, Landroidx/core/content/res/h;->i:F

    mul-float v4, v4, p1

    .line 271
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, p1, v1

    .line 272
    iget v0, v0, Landroidx/core/content/res/h;->d:F

    mul-float v1, v1, v0

    div-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float v0, v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v1, 0x3fd9999a    # 1.7f

    mul-float v1, v1, p0

    const v2, 0x3be56042    # 0.007f

    mul-float v2, v2, p0

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v9, v1, v2

    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v3, v4

    mul-double v3, v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v1

    .line 277
    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float v1, v1, v2

    float-to-double v2, v0

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v10, v1, v0

    .line 279
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v11, v1, v0

    .line 280
    new-instance v5, Landroidx/core/content/res/a;

    move v8, p0

    move v7, p1

    move v6, p2

    invoke-direct/range {v5 .. v11}, Landroidx/core/content/res/a;-><init>(FFFFFF)V

    return-object v5
.end method


# virtual methods
.method public final c(Landroidx/core/content/res/h;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 308
    iget v2, v0, Landroidx/core/content/res/a;->b:F

    float-to-double v3, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    iget v7, v0, Landroidx/core/content/res/a;->c:F

    const-wide/16 v8, 0x0

    cmpl-double v10, v3, v8

    if-eqz v10, :cond_1

    float-to-double v3, v7

    cmpl-double v10, v3, v8

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    .line 310
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    float-to-double v2, v2

    .line 75
    iget v4, v1, Landroidx/core/content/res/h;->f:F

    float-to-double v10, v4

    const-wide v12, 0x3fd28f5c28f5c28fL    # 0.29

    .line 313
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v12, v10

    const-wide v10, 0x3fe75c28f5c28f5cL    # 0.73

    .line 312
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v2, v10

    const-wide v10, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x40490fdb    # (float)Math.PI

    .line 314
    iget v4, v0, Landroidx/core/content/res/a;->a:F

    mul-float v4, v4, v3

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v4, v3

    float-to-double v3, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    add-double/2addr v10, v3

    .line 316
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x400e666666666666L    # 3.8

    add-double/2addr v10, v12

    double-to-float v10, v10

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float v10, v10, v11

    float-to-double v11, v7

    div-double/2addr v11, v5

    .line 318
    iget v5, v1, Landroidx/core/content/res/h;->d:F

    float-to-double v5, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    div-double/2addr v13, v5

    iget v5, v1, Landroidx/core/content/res/h;->j:F

    float-to-double v5, v5

    div-double/2addr v13, v5

    .line 317
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    iget v6, v1, Landroidx/core/content/res/h;->a:F

    mul-float v6, v6, v5

    const v5, 0x45706276

    mul-float v10, v10, v5

    .line 320
    iget v5, v1, Landroidx/core/content/res/h;->e:F

    mul-float v10, v10, v5

    iget v5, v1, Landroidx/core/content/res/h;->c:F

    mul-float v10, v10, v5

    .line 321
    iget v5, v1, Landroidx/core/content/res/h;->b:F

    div-float/2addr v6, v5

    .line 323
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v5, v11

    .line 324
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3e9c28f6    # 0.305f

    add-float/2addr v4, v6

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float v4, v4, v7

    mul-float v4, v4, v2

    mul-float v10, v10, v7

    const/high16 v7, 0x41300000    # 11.0f

    mul-float v7, v7, v2

    mul-float v7, v7, v3

    add-float/2addr v7, v10

    const/high16 v10, 0x42d80000    # 108.0f

    mul-float v2, v2, v10

    mul-float v2, v2, v5

    add-float/2addr v2, v7

    div-float/2addr v4, v2

    mul-float v3, v3, v4

    mul-float v4, v4, v5

    const/high16 v2, 0x43e60000    # 460.0f

    mul-float v6, v6, v2

    const v2, 0x43e18000    # 451.0f

    mul-float v2, v2, v3

    add-float/2addr v2, v6

    const/high16 v5, 0x43900000    # 288.0f

    mul-float v5, v5, v4

    add-float/2addr v5, v2

    const v2, 0x44af6000    # 1403.0f

    div-float/2addr v5, v2

    const v7, 0x445ec000    # 891.0f

    mul-float v7, v7, v3

    sub-float v7, v6, v7

    const v10, 0x43828000    # 261.0f

    mul-float v10, v10, v4

    sub-float/2addr v7, v10

    div-float/2addr v7, v2

    const/high16 v10, 0x435c0000    # 220.0f

    mul-float v3, v3, v10

    sub-float/2addr v6, v3

    const v3, 0x45c4e000    # 6300.0f

    mul-float v4, v4, v3

    sub-float/2addr v6, v4

    div-float/2addr v6, v2

    .line 334
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    mul-double v2, v2, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v12, v4

    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    sub-double v12, v14, v12

    div-double/2addr v2, v12

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 335
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    iget v5, v1, Landroidx/core/content/res/h;->h:F

    div-float/2addr v4, v5

    mul-float v3, v3, v4

    float-to-double v12, v2

    move-wide/from16 v16, v10

    const-wide v10, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v2, v12

    mul-float v3, v3, v2

    .line 337
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v12, v2

    mul-double v12, v12, v16

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-wide/from16 v18, v14

    float-to-double v14, v2

    sub-double v14, v18, v14

    div-double/2addr v12, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-float v2, v12

    .line 338
    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float v5, v5, v4

    float-to-double v12, v2

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-float v2, v12

    mul-float v5, v5, v2

    .line 340
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v12, v2

    mul-double v12, v12, v16

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v14, v2

    sub-double v14, v18, v14

    div-double/2addr v12, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    double-to-float v2, v7

    .line 341
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    mul-float v6, v6, v4

    float-to-double v7, v2

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v2, v7

    mul-float v6, v6, v2

    .line 343
    iget-object v1, v1, Landroidx/core/content/res/h;->g:[F

    const/4 v2, 0x0

    aget v4, v1, v2

    div-float/2addr v3, v4

    const/4 v4, 0x1

    .line 344
    aget v7, v1, v4

    div-float/2addr v5, v7

    const/4 v7, 0x2

    .line 345
    aget v1, v1, v7

    div-float/2addr v6, v1

    .line 348
    sget-object v1, Landroidx/core/content/res/b;->b:[[F

    .line 349
    aget-object v8, v1, v2

    aget v9, v8, v2

    mul-float v9, v9, v3

    aget v10, v8, v4

    mul-float v10, v10, v5

    add-float/2addr v10, v9

    aget v8, v8, v7

    mul-float v8, v8, v6

    add-float/2addr v8, v10

    .line 350
    aget-object v9, v1, v4

    aget v10, v9, v2

    mul-float v10, v10, v3

    aget v11, v9, v4

    mul-float v11, v11, v5

    add-float/2addr v11, v10

    aget v9, v9, v7

    mul-float v9, v9, v6

    add-float/2addr v9, v11

    .line 351
    aget-object v1, v1, v7

    aget v2, v1, v2

    mul-float v3, v3, v2

    aget v2, v1, v4

    mul-float v5, v5, v2

    add-float/2addr v5, v3

    aget v1, v1, v7

    mul-float v6, v6, v1

    add-float/2addr v6, v5

    float-to-double v10, v8

    float-to-double v12, v9

    float-to-double v14, v6

    .line 353
    invoke-static/range {v10 .. v15}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v1

    return v1
.end method
