.class final Lcom/google/android/material/color/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {p1, p2, p3}, Lcom/google/android/material/color/f;->a(FFF)I

    move-result p1

    .line 118
    invoke-static {p1}, Lcom/google/android/material/color/b;->fromInt(I)Lcom/google/android/material/color/b;

    move-result-object p2

    .line 119
    invoke-static {p1}, Lcom/google/android/material/color/e;->lstarFromInt(I)F

    move-result p1

    .line 120
    invoke-virtual {p2}, Lcom/google/android/material/color/b;->getHue()F

    move-result p3

    iput p3, p0, Lcom/google/android/material/color/f;->a:F

    .line 121
    invoke-virtual {p2}, Lcom/google/android/material/color/b;->getChroma()F

    move-result p2

    iput p2, p0, Lcom/google/android/material/color/f;->b:F

    .line 122
    iput p1, p0, Lcom/google/android/material/color/f;->c:F

    return-void
.end method

.method public static a(FFF)I
    .locals 22

    .line 160
    sget-object v0, Lcom/google/android/material/color/i;->k:Lcom/google/android/material/color/i;

    move/from16 v1, p1

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v2, v4

    if-ltz v6, :cond_b

    .line 172
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-lez v6, :cond_b

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v6, v2, v4

    if-ltz v6, :cond_0

    goto/16 :goto_7

    .line 176
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/g;->sanitizeDegrees(F)F

    move-result v2

    const/4 v5, 0x1

    move v5, v1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    sub-float v9, v7, v1

    .line 184
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3ecccccd    # 0.4f

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_9

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x447a0000    # 1000.0f

    const/high16 v11, 0x447a0000    # 1000.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    sub-float v14, v12, v9

    .line 228
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3c23d70a    # 0.01f

    const/high16 v16, 0x40000000    # 2.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_5

    sub-float v14, v9, v12

    div-float v14, v14, v16

    add-float/2addr v14, v12

    .line 230
    invoke-static {v14, v5, v2}, Lcom/google/android/material/color/b;->a(FFF)Lcom/google/android/material/color/b;

    move-result-object v15

    .line 231
    invoke-virtual {v15}, Lcom/google/android/material/color/b;->getInt()I

    move-result v15

    .line 232
    invoke-static {v15}, Lcom/google/android/material/color/e;->lstarFromInt(I)F

    move-result v17

    sub-float v18, p2, v17

    .line 233
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3e4ccccd    # 0.2f

    cmpg-float v19, v18, v19

    if-gez v19, :cond_1

    .line 236
    invoke-static {v15}, Lcom/google/android/material/color/b;->fromInt(I)Lcom/google/android/material/color/b;

    move-result-object v15

    .line 238
    invoke-virtual {v15}, Lcom/google/android/material/color/b;->getJ()F

    move-result v3

    const/16 v19, 0x0

    invoke-virtual {v15}, Lcom/google/android/material/color/b;->getChroma()F

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/google/android/material/color/b;->a(FFF)Lcom/google/android/material/color/b;

    move-result-object v3

    .line 70
    invoke-virtual {v15}, Lcom/google/android/material/color/b;->getJStar()F

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/material/color/b;->getJStar()F

    move-result v20

    sub-float v4, v4, v20

    .line 71
    invoke-virtual {v15}, Lcom/google/android/material/color/b;->getAStar()F

    move-result v20

    invoke-virtual {v3}, Lcom/google/android/material/color/b;->getAStar()F

    move-result v21

    sub-float v20, v20, v21

    .line 72
    invoke-virtual {v15}, Lcom/google/android/material/color/b;->getBStar()F

    move-result v21

    invoke-virtual {v3}, Lcom/google/android/material/color/b;->getBStar()F

    move-result v3

    sub-float v21, v21, v3

    mul-float v4, v4, v4

    mul-float v20, v20, v20

    add-float v20, v20, v4

    mul-float v21, v21, v21

    add-float v3, v21, v20

    float-to-double v3, v3

    .line 73
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    move/from16 p1, v1

    move/from16 v20, v2

    const-wide v1, 0x3fe428f5c28f5c29L    # 0.63

    .line 74
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    const-wide v3, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double v1, v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    cmpg-float v2, v1, v10

    if-gtz v2, :cond_2

    move v10, v1

    move-object v13, v15

    move/from16 v11, v18

    goto :goto_2

    :cond_1
    move/from16 p1, v1

    move/from16 v20, v2

    const/16 v19, 0x0

    :cond_2
    :goto_2
    cmpl-float v1, v11, v19

    if-nez v1, :cond_3

    const v1, 0x3089705f    # 1.0E-9f

    cmpg-float v1, v10, v1

    if-gez v1, :cond_3

    goto :goto_4

    :cond_3
    cmpg-float v1, v17, p2

    if-gez v1, :cond_4

    move v12, v14

    goto :goto_3

    :cond_4
    move v9, v14

    :goto_3
    move/from16 v1, p1

    move/from16 v2, v20

    goto/16 :goto_1

    :cond_5
    move/from16 p1, v1

    move/from16 v20, v2

    const/16 v19, 0x0

    :goto_4
    if-eqz v6, :cond_7

    if-eqz v13, :cond_6

    .line 189
    invoke-virtual {v13, v0}, Lcom/google/android/material/color/b;->b(Lcom/google/android/material/color/i;)I

    move-result v0

    return v0

    :cond_6
    sub-float v1, p1, v7

    div-float v1, v1, v16

    add-float v5, v1, v7

    const/4 v6, 0x0

    move/from16 v1, p1

    :goto_5
    move/from16 v2, v20

    goto/16 :goto_0

    :cond_7
    if-nez v13, :cond_8

    move v1, v5

    goto :goto_6

    :cond_8
    move/from16 v1, p1

    move v7, v5

    move-object v8, v13

    :goto_6
    sub-float v2, v1, v7

    div-float v2, v2, v16

    add-float v5, v2, v7

    goto :goto_5

    :cond_9
    if-nez v8, :cond_a

    .line 208
    invoke-static/range {p2 .. p2}, Lcom/google/android/material/color/e;->intFromLstar(F)I

    move-result v0

    return v0

    .line 211
    :cond_a
    invoke-virtual {v8, v0}, Lcom/google/android/material/color/b;->b(Lcom/google/android/material/color/i;)I

    move-result v0

    return v0

    .line 173
    :cond_b
    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/google/android/material/color/e;->intFromLstar(F)I

    move-result v0

    return v0
.end method

.method public static from(FFF)Lcom/google/android/material/color/f;
    .locals 1

    .line 53
    new-instance v0, Lcom/google/android/material/color/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/color/f;-><init>(FFF)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/android/material/color/f;
    .locals 3

    .line 63
    invoke-static {p0}, Lcom/google/android/material/color/b;->fromInt(I)Lcom/google/android/material/color/b;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/google/android/material/color/f;

    invoke-virtual {v0}, Lcom/google/android/material/color/b;->getHue()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/material/color/b;->getChroma()F

    move-result v0

    invoke-static {p0}, Lcom/google/android/material/color/e;->lstarFromInt(I)F

    move-result p0

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/color/f;-><init>(FFF)V

    return-object v1
.end method


# virtual methods
.method public getChroma()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/google/android/material/color/f;->b:F

    return v0
.end method

.method public getHue()F
    .locals 1

    .line 72
    iget v0, p0, Lcom/google/android/material/color/f;->a:F

    return v0
.end method

.method public getTone()F
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/material/color/f;->c:F

    return v0
.end method

.method public setTone(F)V
    .locals 2

    .line 114
    iget v0, p0, Lcom/google/android/material/color/f;->a:F

    iget v1, p0, Lcom/google/android/material/color/f;->b:F

    invoke-static {v0, v1, p1}, Lcom/google/android/material/color/f;->a(FFF)I

    move-result p1

    .line 118
    invoke-static {p1}, Lcom/google/android/material/color/b;->fromInt(I)Lcom/google/android/material/color/b;

    move-result-object v0

    .line 119
    invoke-static {p1}, Lcom/google/android/material/color/e;->lstarFromInt(I)F

    move-result p1

    .line 120
    invoke-virtual {v0}, Lcom/google/android/material/color/b;->getHue()F

    move-result v1

    iput v1, p0, Lcom/google/android/material/color/f;->a:F

    .line 121
    invoke-virtual {v0}, Lcom/google/android/material/color/b;->getChroma()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/f;->b:F

    .line 122
    iput p1, p0, Lcom/google/android/material/color/f;->c:F

    return-void
.end method

.method public toInt()I
    .locals 3

    .line 84
    iget v0, p0, Lcom/google/android/material/color/f;->a:F

    iget v1, p0, Lcom/google/android/material/color/f;->b:F

    iget v2, p0, Lcom/google/android/material/color/f;->c:F

    invoke-static {v0, v1, v2}, Lcom/google/android/material/color/f;->a(FFF)I

    move-result v0

    return v0
.end method
