.class final Lcom/google/android/material/color/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:[[F

.field public static final h:[[F


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x3

    .line 38
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [[F

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v2, 0x2

    aput-object v3, v4, v2

    sput-object v4, Lcom/google/android/material/color/b;->g:[[F

    .line 45
    new-array v3, v0, [F

    fill-array-data v3, :array_3

    new-array v4, v0, [F

    fill-array-data v4, :array_4

    new-array v6, v0, [F

    fill-array-data v6, :array_5

    new-array v0, v0, [[F

    aput-object v3, v0, v5

    aput-object v4, v0, v1

    aput-object v6, v0, v2

    sput-object v0, Lcom/google/android/material/color/b;->h:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3ecd759f
        0x3f2671bd
        -0x42ad373b    # -0.051461f
    .end array-data

    :array_1
    .array-data 4
        -0x417fdcdf
        0x3f9a2a3d
        0x3d3bd167
    .end array-data

    :array_2
    .array-data 4
        -0x44f7c02b    # -0.002079f
        0x3d4881e4
        0x3f740022
    .end array-data

    :array_3
    .array-data 4
        0x3fee583d
        -0x407e8f35
        0x3e18c46b
    .end array-data

    :array_4
    .array-data 4
        0x3ec669e1
        0x3f1f172e
        -0x43ecf866
    .end array-data

    :array_5
    .array-data 4
        -0x437e39f7
        -0x42f43b81
        0x3f86653c
    .end array-data
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Lcom/google/android/material/color/b;->a:F

    .line 167
    iput p2, p0, Lcom/google/android/material/color/b;->b:F

    .line 168
    iput p3, p0, Lcom/google/android/material/color/b;->c:F

    .line 172
    iput p4, p0, Lcom/google/android/material/color/b;->d:F

    .line 173
    iput p5, p0, Lcom/google/android/material/color/b;->e:F

    .line 174
    iput p6, p0, Lcom/google/android/material/color/b;->f:F

    return-void
.end method

.method public static a(FFF)Lcom/google/android/material/color/b;
    .locals 11

    .line 293
    sget-object v0, Lcom/google/android/material/color/i;->k:Lcom/google/android/material/color/i;

    .line 68
    iget v1, v0, Lcom/google/android/material/color/i;->d:F

    float-to-double v1, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 307
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 308
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getAw()F

    .line 309
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getFlRoot()F

    .line 310
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getFlRoot()F

    move-result v3

    mul-float v3, v3, p1

    .line 311
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, p1, v1

    .line 315
    iget v2, v0, Lcom/google/android/material/color/i;->d:F

    mul-float v1, v1, v2

    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getAw()F

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v0, v2

    div-float/2addr v1, v0

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

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    div-float v8, v1, v2

    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v3, v3

    mul-double v3, v3, v1

    .line 319
    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float v1, v1, v2

    float-to-double v2, v0

    .line 320
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v9, v1, v0

    .line 321
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v10, v1, v0

    .line 322
    new-instance v4, Lcom/google/android/material/color/b;

    move v7, p0

    move v6, p1

    move v5, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/material/color/b;-><init>(FFFFFF)V

    return-object v4
.end method

.method public static fromInt(I)Lcom/google/android/material/color/b;
    .locals 24

    move/from16 v0, p0

    .line 183
    sget-object v1, Lcom/google/android/material/color/i;->k:Lcom/google/android/material/color/i;

    const/high16 v2, 0xff0000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    const v3, 0xff00

    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v2, v4

    .line 201
    invoke-static {v2}, Lcom/google/android/material/color/e;->linearized(F)F

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v2, v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 202
    invoke-static {v3}, Lcom/google/android/material/color/e;->linearized(F)F

    move-result v3

    mul-float v3, v3, v5

    int-to-float v0, v0

    div-float/2addr v0, v4

    .line 203
    invoke-static {v0}, Lcom/google/android/material/color/e;->linearized(F)F

    move-result v0

    mul-float v0, v0, v5

    const v4, 0x3ed31e17

    mul-float v4, v4, v2

    const v6, 0x3eb71a0d

    mul-float v6, v6, v3

    add-float/2addr v6, v4

    const v4, 0x3e38d7b9

    mul-float v4, v4, v0

    add-float/2addr v4, v6

    const v6, 0x3e59b3d0    # 0.2126f

    mul-float v6, v6, v2

    const v7, 0x3f371759    # 0.7152f

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    const v6, 0x3d93dd98    # 0.0722f

    mul-float v6, v6, v0

    add-float/2addr v6, v7

    const v7, 0x3c9e47ef

    mul-float v2, v2, v7

    const v7, 0x3df40c29

    mul-float v3, v3, v7

    add-float/2addr v3, v2

    const v2, 0x3f7349cc

    mul-float v0, v0, v2

    add-float/2addr v0, v3

    .line 209
    sget-object v2, Lcom/google/android/material/color/b;->g:[[F

    const/4 v3, 0x0

    .line 210
    aget-object v7, v2, v3

    aget v8, v7, v3

    mul-float v8, v8, v4

    const/4 v9, 0x1

    aget v10, v7, v9

    mul-float v10, v10, v6

    add-float/2addr v10, v8

    const/4 v8, 0x2

    aget v7, v7, v8

    mul-float v7, v7, v0

    add-float/2addr v7, v10

    .line 211
    aget-object v10, v2, v9

    aget v11, v10, v3

    mul-float v11, v11, v4

    aget v12, v10, v9

    mul-float v12, v12, v6

    add-float/2addr v12, v11

    aget v10, v10, v8

    mul-float v10, v10, v0

    add-float/2addr v10, v12

    .line 212
    aget-object v2, v2, v8

    aget v11, v2, v3

    mul-float v4, v4, v11

    aget v11, v2, v9

    mul-float v6, v6, v11

    add-float/2addr v6, v4

    aget v2, v2, v8

    mul-float v0, v0, v2

    add-float/2addr v0, v6

    .line 215
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getRgbD()[F

    move-result-object v2

    aget v2, v2, v3

    mul-float v2, v2, v7

    .line 216
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getRgbD()[F

    move-result-object v3

    aget v3, v3, v9

    mul-float v3, v3, v10

    .line 217
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getRgbD()[F

    move-result-object v4

    aget v4, v4, v8

    mul-float v4, v4, v0

    .line 220
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v6, v1, Lcom/google/android/material/color/i;->h:F

    mul-float v0, v0, v6

    float-to-double v7, v0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    const-wide v11, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v0, v7

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v7, v7, v6

    float-to-double v7, v7

    div-double/2addr v7, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 222
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float v8, v8, v6

    float-to-double v13, v8

    div-double/2addr v13, v9

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v6, v11

    .line 223
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v8, 0x43c80000    # 400.0f

    mul-float v2, v2, v8

    mul-float v2, v2, v0

    const v11, 0x41d90a3d    # 27.13f

    add-float/2addr v0, v11

    div-float/2addr v2, v0

    .line 224
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float v0, v0, v8

    mul-float v0, v0, v7

    add-float/2addr v7, v11

    div-float/2addr v0, v7

    .line 225
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v3, v3, v8

    mul-float v3, v3, v6

    add-float/2addr v6, v11

    div-float/2addr v3, v6

    const-wide/high16 v6, 0x4026000000000000L    # 11.0

    float-to-double v11, v2

    mul-double v11, v11, v6

    const-wide/high16 v6, -0x3fd8000000000000L    # -12.0

    float-to-double v13, v0

    mul-double v13, v13, v6

    add-double/2addr v13, v11

    float-to-double v6, v3

    add-double/2addr v13, v6

    double-to-float v4, v13

    const/high16 v8, 0x41300000    # 11.0f

    div-float/2addr v4, v8

    add-float v8, v2, v0

    float-to-double v11, v8

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v6, v6, v13

    sub-double/2addr v11, v6

    double-to-float v6, v11

    const/high16 v7, 0x41100000    # 9.0f

    div-float/2addr v6, v7

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float v8, v2, v7

    mul-float v0, v0, v7

    add-float/2addr v8, v0

    const/high16 v11, 0x41a80000    # 21.0f

    mul-float v11, v11, v3

    add-float/2addr v11, v8

    div-float/2addr v11, v7

    const/high16 v8, 0x42200000    # 40.0f

    mul-float v2, v2, v8

    add-float/2addr v2, v0

    add-float/2addr v2, v3

    div-float/2addr v2, v7

    float-to-double v6, v6

    float-to-double v3, v4

    move-wide v15, v9

    .line 237
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v0, v9

    const/high16 v8, 0x43340000    # 180.0f

    mul-float v0, v0, v8

    const v9, 0x40490fdb    # (float)Math.PI

    div-float/2addr v0, v9

    const/4 v10, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    add-float/2addr v0, v12

    goto :goto_0

    :cond_0
    cmpl-float v10, v0, v12

    if-ltz v10, :cond_1

    sub-float/2addr v0, v12

    :cond_1
    :goto_0
    mul-float v9, v9, v0

    div-float/2addr v9, v8

    .line 246
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getNbb()F

    move-result v8

    mul-float v2, v2, v8

    .line 253
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getAw()F

    move-result v8

    div-float/2addr v2, v8

    move-wide/from16 v17, v13

    const/high16 p0, 0x43b40000    # 360.0f

    float-to-double v12, v2

    .line 254
    iget v2, v1, Lcom/google/android/material/color/i;->d:F

    iget v8, v1, Lcom/google/android/material/color/i;->j:F

    mul-float v8, v8, v2

    move-wide/from16 v19, v6

    const/high16 v10, 0x42c80000    # 100.0f

    float-to-double v5, v8

    .line 252
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v5, v5, v10

    div-float v6, v5, v10

    float-to-double v6, v6

    .line 258
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 259
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getAw()F

    .line 260
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getFlRoot()F

    float-to-double v6, v0

    const-wide v12, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v8, v6, v12

    if-gez v8, :cond_2

    add-float v12, v0, p0

    goto :goto_1

    :cond_2
    move v12, v0

    :goto_1
    float-to-double v6, v12

    .line 264
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    add-double v6, v6, v17

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v12, 0x400e666666666666L    # 3.8

    add-double/2addr v6, v12

    double-to-float v6, v6

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v6, v6, v7

    const v7, 0x45706276

    mul-float v6, v6, v7

    .line 265
    iget v7, v1, Lcom/google/android/material/color/i;->e:F

    mul-float v6, v6, v7

    iget v7, v1, Lcom/google/android/material/color/i;->c:F

    mul-float v6, v6, v7

    move-wide/from16 v7, v19

    .line 266
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v6, v6, v3

    const v3, 0x3e9c28f6    # 0.305f

    add-float/2addr v11, v3

    div-float/2addr v6, v11

    .line 268
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getN()F

    move-result v3

    float-to-double v3, v3

    const-wide v7, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const-wide v7, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v7, v3

    const-wide v3, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v6, v6

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    .line 269
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float v3, v3, v4

    float-to-double v6, v5

    div-double/2addr v6, v15

    .line 271
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float v19, v3, v4

    .line 272
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getFlRoot()F

    move-result v4

    mul-float v4, v4, v19

    mul-float v3, v3, v2

    .line 276
    invoke-virtual {v1}, Lcom/google/android/material/color/i;->getAw()F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    add-float/2addr v1, v2

    div-float/2addr v3, v1

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    const v1, 0x3fd9999a    # 1.7f

    mul-float v1, v1, v5

    const v2, 0x3be56042    # 0.007f

    mul-float v2, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    div-float v21, v1, v2

    const v1, 0x3cbac711    # 0.0228f

    mul-float v4, v4, v1

    float-to-double v1, v4

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float v1, v1, v2

    float-to-double v2, v9

    .line 281
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v4, v6

    mul-float v22, v1, v4

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v23, v1, v2

    .line 284
    new-instance v17, Lcom/google/android/material/color/b;

    move/from16 v18, v0

    move/from16 v20, v5

    invoke-direct/range {v17 .. v23}, Lcom/google/android/material/color/b;-><init>(FFFFFF)V

    return-object v17
.end method


# virtual methods
.method public final b(Lcom/google/android/material/color/i;)I
    .locals 18

    move-object/from16 v0, p1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/b;->getChroma()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/b;->getJ()F

    move-result v1

    float-to-double v1, v1

    cmpl-double v7, v1, v5

    if-nez v7, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/b;->getChroma()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/b;->getJ()F

    move-result v2

    float-to-double v7, v2

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v2, v7

    div-float/2addr v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    float-to-double v1, v1

    .line 386
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getN()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v9, v7

    const-wide v7, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v1, v7

    const-wide v7, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    .line 385
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/b;->getHue()F

    move-result v2

    const v7, 0x40490fdb    # (float)Math.PI

    mul-float v2, v2, v7

    const/high16 v7, 0x43340000    # 180.0f

    div-float/2addr v2, v7

    float-to-double v7, v2

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    add-double/2addr v9, v7

    .line 389
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    const-wide v11, 0x400e666666666666L    # 3.8

    add-double/2addr v9, v11

    double-to-float v2, v9

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float v2, v2, v9

    .line 391
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getAw()F

    move-result v9

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/color/b;->getJ()F

    move-result v10

    float-to-double v10, v10

    div-double/2addr v10, v3

    iget v3, v0, Lcom/google/android/material/color/i;->d:F

    float-to-double v3, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v3

    iget v3, v0, Lcom/google/android/material/color/i;->j:F

    float-to-double v3, v3

    div-double/2addr v12, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v9, v9, v3

    const v3, 0x45706276

    mul-float v2, v2, v3

    .line 394
    iget v3, v0, Lcom/google/android/material/color/i;->e:F

    mul-float v2, v2, v3

    iget v3, v0, Lcom/google/android/material/color/i;->c:F

    mul-float v2, v2, v3

    .line 395
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getNbb()F

    move-result v3

    div-float/2addr v9, v3

    .line 397
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 398
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    const v7, 0x3e9c28f6    # 0.305f

    add-float/2addr v7, v9

    const/high16 v8, 0x41b80000    # 23.0f

    mul-float v7, v7, v8

    mul-float v7, v7, v1

    mul-float v2, v2, v8

    const/high16 v8, 0x41300000    # 11.0f

    mul-float v8, v8, v1

    mul-float v8, v8, v4

    add-float/2addr v8, v2

    const/high16 v2, 0x42d80000    # 108.0f

    mul-float v1, v1, v2

    mul-float v1, v1, v3

    add-float/2addr v1, v8

    div-float/2addr v7, v1

    mul-float v4, v4, v7

    mul-float v7, v7, v3

    const/high16 v1, 0x43e60000    # 460.0f

    mul-float v9, v9, v1

    const v1, 0x43e18000    # 451.0f

    mul-float v1, v1, v4

    add-float/2addr v1, v9

    const/high16 v2, 0x43900000    # 288.0f

    mul-float v2, v2, v7

    add-float/2addr v2, v1

    const v1, 0x44af6000    # 1403.0f

    div-float/2addr v2, v1

    const v3, 0x445ec000    # 891.0f

    mul-float v3, v3, v4

    sub-float v3, v9, v3

    const v8, 0x43828000    # 261.0f

    mul-float v8, v8, v7

    sub-float/2addr v3, v8

    div-float/2addr v3, v1

    const/high16 v8, 0x435c0000    # 220.0f

    mul-float v4, v4, v8

    sub-float/2addr v9, v4

    const v4, 0x45c4e000    # 6300.0f

    mul-float v7, v7, v4

    sub-float/2addr v9, v7

    div-float/2addr v9, v1

    .line 407
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    const-wide v10, 0x403b2147ae147ae1L    # 27.13

    mul-double v7, v7, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v12, v1

    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    sub-double v12, v14, v12

    div-double/2addr v7, v12

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    double-to-float v1, v7

    .line 409
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    const/high16 v4, 0x42c80000    # 100.0f

    .line 410
    iget v7, v0, Lcom/google/android/material/color/i;->h:F

    div-float/2addr v4, v7

    mul-float v2, v2, v4

    float-to-double v7, v1

    const-wide v12, 0x40030c30c30c30c3L    # 2.380952380952381

    .line 411
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float v2, v2, v1

    .line 412
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    mul-double v7, v7, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-wide/from16 v16, v10

    float-to-double v10, v1

    sub-double v10, v14, v10

    div-double/2addr v7, v10

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    double-to-float v1, v7

    .line 414
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float v3, v3, v4

    float-to-double v7, v1

    .line 416
    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v1, v7

    mul-float v3, v3, v1

    .line 417
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    mul-double v7, v7, v16

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v10, v1

    sub-double/2addr v14, v10

    div-double/2addr v7, v14

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 419
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float v5, v5, v4

    float-to-double v6, v1

    .line 421
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float v5, v5, v1

    .line 422
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getRgbD()[F

    move-result-object v1

    const/4 v4, 0x0

    aget v1, v1, v4

    div-float/2addr v2, v1

    .line 423
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getRgbD()[F

    move-result-object v1

    const/4 v6, 0x1

    aget v1, v1, v6

    div-float/2addr v3, v1

    .line 424
    invoke-virtual {v0}, Lcom/google/android/material/color/i;->getRgbD()[F

    move-result-object v0

    const/4 v1, 0x2

    aget v0, v0, v1

    div-float/2addr v5, v0

    .line 426
    sget-object v0, Lcom/google/android/material/color/b;->h:[[F

    .line 427
    aget-object v7, v0, v4

    aget v8, v7, v4

    mul-float v8, v8, v2

    aget v9, v7, v6

    mul-float v9, v9, v3

    add-float/2addr v9, v8

    aget v7, v7, v1

    mul-float v7, v7, v5

    add-float/2addr v7, v9

    .line 428
    aget-object v8, v0, v6

    aget v9, v8, v4

    mul-float v9, v9, v2

    aget v10, v8, v6

    mul-float v10, v10, v3

    add-float/2addr v10, v9

    aget v8, v8, v1

    mul-float v8, v8, v5

    add-float/2addr v8, v10

    .line 429
    aget-object v0, v0, v1

    aget v4, v0, v4

    mul-float v2, v2, v4

    aget v4, v0, v6

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    aget v0, v0, v1

    mul-float v5, v5, v0

    add-float/2addr v5, v3

    .line 431
    invoke-static {v7, v8, v5}, Lcom/google/android/material/color/e;->intFromXyzComponents(FFF)I

    move-result v0

    return v0
.end method

.method public getAStar()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/google/android/material/color/b;->e:F

    return v0
.end method

.method public getBStar()F
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/android/material/color/b;->f:F

    return v0
.end method

.method public getChroma()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/android/material/color/b;->b:F

    return v0
.end method

.method public getHue()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/material/color/b;->a:F

    return v0
.end method

.method public getInt()I
    .locals 1

    .line 368
    sget-object v0, Lcom/google/android/material/color/i;->k:Lcom/google/android/material/color/i;

    invoke-virtual {p0, v0}, Lcom/google/android/material/color/b;->b(Lcom/google/android/material/color/i;)I

    move-result v0

    return v0
.end method

.method public getJ()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/google/android/material/color/b;->c:F

    return v0
.end method

.method public getJStar()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/google/android/material/color/b;->d:F

    return v0
.end method
