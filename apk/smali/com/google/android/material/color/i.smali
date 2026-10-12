.class final Lcom/google/android/material/color/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Lcom/google/android/material/color/i;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 34
    invoke-static {}, Lcom/google/android/material/color/e;->whitePointD65()[F

    move-result-object v4

    const/high16 v5, 0x42480000    # 50.0f

    .line 35
    invoke-static {v5}, Lcom/google/android/material/color/e;->yFromLstar(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x404fd4bbab8b494cL    # 63.66197723675813

    mul-double v6, v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    double-to-float v6, v6

    .line 116
    sget-object v7, Lcom/google/android/material/color/b;->g:[[F

    .line 118
    aget v10, v4, v3

    aget-object v11, v7, v3

    aget v12, v11, v3

    mul-float v12, v12, v10

    aget v13, v4, v2

    aget v14, v11, v2

    mul-float v14, v14, v13

    add-float/2addr v14, v12

    aget v12, v4, v1

    aget v11, v11, v1

    mul-float v11, v11, v12

    add-float/2addr v11, v14

    .line 119
    aget-object v14, v7, v2

    aget v15, v14, v3

    mul-float v15, v15, v10

    aget v16, v14, v2

    mul-float v16, v16, v13

    add-float v16, v16, v15

    aget v14, v14, v1

    mul-float v14, v14, v12

    add-float v14, v14, v16

    .line 120
    aget-object v7, v7, v1

    aget v15, v7, v3

    mul-float v10, v10, v15

    aget v15, v7, v2

    mul-float v13, v13, v15

    add-float/2addr v13, v10

    aget v7, v7, v1

    mul-float v12, v12, v7

    add-float/2addr v12, v13

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v13, 0x1

    float-to-double v1, v7

    const-wide v15, 0x3feccccccccccccdL    # 0.9

    const/16 v17, 0x0

    const v3, 0x3f170a3d    # 0.59f

    cmpl-double v18, v1, v15

    if-ltz v18, :cond_0

    const v1, 0x3f800002    # 1.0000002f

    const v2, 0x3f30a3d7    # 0.69f

    .line 124
    invoke-static {v3, v2, v1}, Lcom/google/android/material/color/g;->lerp(FFF)F

    move-result v1

    :goto_0
    move/from16 v20, v1

    goto :goto_1

    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    const v2, 0x3f066666    # 0.525f

    .line 125
    invoke-static {v2, v3, v1}, Lcom/google/android/material/color/g;->lerp(FFF)F

    move-result v1

    goto :goto_0

    :goto_1
    neg-float v1, v6

    const/high16 v2, 0x42280000    # 42.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x42b80000    # 92.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3e8e38e4

    mul-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float v1, v1, v7

    const/high16 v15, 0x3f800000    # 1.0f

    float-to-double v2, v1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v2, v18

    if-lez v16, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_1
    const-wide/16 v18, 0x0

    cmpg-double v16, v2, v18

    if-gez v16, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_2
    const/high16 v2, 0x42c80000    # 100.0f

    div-float v3, v2, v11

    mul-float v3, v3, v1

    add-float/2addr v3, v15

    sub-float/2addr v3, v1

    div-float v16, v2, v14

    mul-float v16, v16, v1

    add-float v16, v16, v15

    sub-float v16, v16, v1

    div-float/2addr v2, v12

    mul-float v2, v2, v1

    add-float/2addr v2, v15

    sub-float/2addr v2, v1

    .line 132
    new-array v1, v0, [F

    aput v3, v1, v17

    aput v16, v1, v13

    aput v2, v1, v10

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, v6

    add-float/2addr v2, v15

    div-float v2, v15, v2

    mul-float v3, v2, v2

    mul-float v3, v3, v2

    mul-float v3, v3, v2

    sub-float v2, v15, v3

    mul-float v3, v3, v6

    const v15, 0x3dcccccd    # 0.1f

    mul-float v15, v15, v2

    mul-float v15, v15, v2

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    const/high16 v2, 0x42480000    # 50.0f

    float-to-double v5, v6

    mul-double v5, v5, v18

    .line 140
    invoke-static {v5, v6}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float v15, v15, v5

    add-float/2addr v15, v3

    .line 141
    invoke-static {v2}, Lcom/google/android/material/color/e;->yFromLstar(F)F

    move-result v2

    aget v3, v4, v13

    div-float/2addr v2, v3

    float-to-double v3, v2

    .line 142
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3fbd70a4    # 1.48f

    add-float v25, v5, v6

    const-wide v5, 0x3fc999999999999aL    # 0.2

    .line 143
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x3f39999a    # 0.725f

    div-float v18, v4, v3

    .line 145
    aget v3, v1, v17

    mul-float v3, v3, v15

    mul-float v3, v3, v11

    float-to-double v3, v3

    div-double/2addr v3, v8

    const-wide v5, 0x3fdae147ae147ae1L    # 0.42

    .line 147
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aget v4, v1, v13

    mul-float v4, v4, v15

    mul-float v4, v4, v14

    move-wide/from16 v21, v8

    float-to-double v7, v4

    div-double v7, v7, v21

    .line 148
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v4, v7

    aget v7, v1, v10

    mul-float v7, v7, v15

    mul-float v7, v7, v12

    float-to-double v7, v7

    div-double v7, v7, v21

    .line 149
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    new-array v6, v0, [F

    aput v3, v6, v17

    aput v4, v6, v13

    aput v5, v6, v10

    .line 152
    aget v3, v6, v17

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v5, v3, v4

    const v7, 0x41d90a3d    # 27.13f

    add-float/2addr v3, v7

    div-float/2addr v5, v3

    aget v3, v6, v13

    mul-float v8, v3, v4

    add-float/2addr v3, v7

    div-float/2addr v8, v3

    aget v3, v6, v10

    mul-float v4, v4, v3

    add-float/2addr v3, v7

    div-float/2addr v4, v3

    new-array v0, v0, [F

    aput v5, v0, v17

    aput v8, v0, v13

    aput v4, v0, v10

    const/high16 v3, 0x40000000    # 2.0f

    .line 159
    aget v4, v0, v17

    mul-float v4, v4, v3

    aget v3, v0, v13

    add-float/2addr v4, v3

    const v3, 0x3d4ccccd    # 0.05f

    aget v0, v0, v10

    mul-float v0, v0, v3

    add-float/2addr v0, v4

    mul-float v17, v0, v18

    .line 160
    new-instance v0, Lcom/google/android/material/color/i;

    float-to-double v3, v15

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move/from16 v19, v18

    move-object/from16 v22, v1

    move/from16 v16, v2

    move/from16 v24, v3

    move/from16 v23, v15

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v15, v0

    invoke-direct/range {v15 .. v25}, Lcom/google/android/material/color/i;-><init>(FFFFFF[FFFF)V

    .line 33
    sput-object v15, Lcom/google/android/material/color/i;->k:Lcom/google/android/material/color/i;

    return-void
.end method

.method public constructor <init>(FFFFFF[FFFF)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput p1, p0, Lcom/google/android/material/color/i;->f:F

    .line 181
    iput p2, p0, Lcom/google/android/material/color/i;->a:F

    .line 182
    iput p3, p0, Lcom/google/android/material/color/i;->b:F

    .line 183
    iput p4, p0, Lcom/google/android/material/color/i;->c:F

    .line 184
    iput p5, p0, Lcom/google/android/material/color/i;->d:F

    .line 185
    iput p6, p0, Lcom/google/android/material/color/i;->e:F

    .line 186
    iput-object p7, p0, Lcom/google/android/material/color/i;->g:[F

    .line 187
    iput p8, p0, Lcom/google/android/material/color/i;->h:F

    .line 188
    iput p9, p0, Lcom/google/android/material/color/i;->i:F

    .line 189
    iput p10, p0, Lcom/google/android/material/color/i;->j:F

    return-void
.end method


# virtual methods
.method public getAw()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/google/android/material/color/i;->a:F

    return v0
.end method

.method public getFlRoot()F
    .locals 1

    .line 84
    iget v0, p0, Lcom/google/android/material/color/i;->i:F

    return v0
.end method

.method public getN()F
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/android/material/color/i;->f:F

    return v0
.end method

.method public getNbb()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/google/android/material/color/i;->b:F

    return v0
.end method

.method public getRgbD()[F
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/material/color/i;->g:[F

    return-object v0
.end method
