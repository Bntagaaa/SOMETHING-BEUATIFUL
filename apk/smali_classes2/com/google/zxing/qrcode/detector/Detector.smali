.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public b:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 4

    .line 236
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->c(IIII)F

    move-result v0

    .line 240
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1, p2, v2, p1}, Lcom/google/zxing/qrcode/detector/Detector;->c(IIII)F

    move-result p1

    .line 244
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    const/high16 v1, 0x40e00000    # 7.0f

    if-eqz p2, :cond_0

    div-float/2addr p1, v1

    return p1

    .line 247
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-eqz p2, :cond_1

    div-float/2addr v0, v1

    return v0

    :cond_1
    add-float/2addr v0, p1

    const/high16 p1, 0x41600000    # 14.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final b(IIII)F
    .locals 17

    sub-int v0, p4, p2

    .line 303
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move/from16 v4, p1

    move/from16 v1, p2

    move/from16 v6, p3

    move/from16 v5, p4

    goto :goto_1

    :cond_1
    move/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    :goto_1
    sub-int v7, v5, v1

    .line 313
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v6, v4

    .line 314
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v7

    shr-int/2addr v9, v3

    const/4 v10, -0x1

    if-ge v1, v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, -0x1

    :goto_2
    if-ge v4, v6, :cond_3

    const/4 v10, 0x1

    :cond_3
    add-int/2addr v5, v11

    move v12, v1

    move v13, v4

    const/4 v14, 0x0

    :goto_3
    if-eq v12, v5, :cond_b

    if-eqz v0, :cond_4

    move v2, v13

    goto :goto_4

    :cond_4
    move v2, v12

    :goto_4
    if-eqz v0, :cond_5

    move v15, v12

    goto :goto_5

    :cond_5
    move v15, v13

    :goto_5
    move/from16 v16, v0

    if-ne v14, v3, :cond_6

    const/4 v0, 0x1

    :goto_6
    move-object/from16 v3, p0

    move/from16 p2, v7

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    .line 330
    :goto_7
    iget-object v7, v3, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7, v2, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x2

    if-ne v14, v0, :cond_7

    .line 332
    invoke-static {v12, v13, v1, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    :cond_7
    add-int/lit8 v14, v14, 0x1

    :cond_8
    add-int/2addr v9, v8

    if-lez v9, :cond_a

    if-ne v13, v6, :cond_9

    :goto_8
    const/4 v0, 0x2

    goto :goto_9

    :cond_9
    add-int/2addr v13, v10

    sub-int v9, v9, p2

    :cond_a
    add-int/2addr v12, v11

    move/from16 v7, p2

    move/from16 v0, v16

    const/4 v3, 0x1

    goto :goto_3

    :cond_b
    move-object/from16 v3, p0

    goto :goto_8

    :goto_9
    if-ne v14, v0, :cond_c

    .line 350
    invoke-static {v5, v6, v1, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v0

    return v0

    :cond_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public final c(IIII)F
    .locals 6

    .line 262
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->b(IIII)F

    move-result v0

    sub-int/2addr p3, p1

    sub-int p3, p1, p3

    const/4 v1, 0x0

    .line 267
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez p3, :cond_0

    int-to-float v4, p1

    sub-int p3, p1, p3

    int-to-float p3, p3

    div-float/2addr v4, p3

    const/4 p3, 0x0

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-lt p3, v4, :cond_1

    .line 271
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, p1

    int-to-float v4, v4

    sub-int/2addr p3, p1

    int-to-float p3, p3

    div-float/2addr v4, p3

    .line 272
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    int-to-float v5, p2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    mul-float p4, p4, v4

    sub-float p4, v5, p4

    float-to-int p4, p4

    if-gez p4, :cond_2

    sub-int p4, p2, p4

    int-to-float p4, p4

    div-float/2addr v5, p4

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    if-lt p4, v1, :cond_3

    .line 281
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p2

    int-to-float v1, v1

    sub-int/2addr p4, p2

    int-to-float p4, p4

    div-float v5, v1, p4

    .line 282
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p4

    add-int/lit8 v1, p4, -0x1

    goto :goto_1

    :cond_3
    move v1, p4

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_1
    int-to-float p4, p1

    sub-int/2addr p3, p1

    int-to-float p3, p3

    mul-float p3, p3, v5

    add-float/2addr p3, p4

    float-to-int p3, p3

    .line 286
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/zxing/qrcode/detector/Detector;->b(IIII)F

    move-result p1

    add-float/2addr p1, v0

    sub-float/2addr p1, v3

    return p1
.end method

.method public final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 0

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p1

    add-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    return p1
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 76
    :cond_0
    sget-object v7, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    iput-object v7, v0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    .line 79
    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v8, v9, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    if-eqz v1, :cond_1

    .line 78
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 79
    :goto_1
    iget-object v7, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    .line 80
    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    mul-int/lit8 v11, v9, 0x3

    .line 88
    div-int/lit16 v11, v11, 0xe4

    if-lt v11, v4, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    const/4 v11, 0x3

    :cond_3
    const/4 v1, 0x5

    .line 94
    new-array v1, v1, [I

    add-int/lit8 v12, v11, -0x1

    const/4 v13, 0x0

    .line 95
    :goto_2
    iget-object v14, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/ArrayList;

    if-ge v12, v9, :cond_13

    if-nez v13, :cond_13

    .line 97
    aput v3, v1, v3

    .line 98
    aput v3, v1, v5

    .line 99
    aput v3, v1, v2

    .line 100
    aput v3, v1, v4

    const/4 v15, 0x4

    .line 101
    aput v3, v1, v15

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v6, v10, :cond_10

    .line 104
    invoke-virtual {v7, v6, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x3

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v5, :cond_4

    add-int/2addr v3, v5

    .line 109
    :cond_4
    aget v4, v1, v3

    add-int/2addr v4, v5

    aput v4, v1, v3

    const/16 p1, 0x4

    goto/16 :goto_9

    :cond_5
    const/16 v17, 0x3

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_f

    if-ne v3, v15, :cond_e

    .line 113
    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 114
    invoke-virtual {v8, v1, v12, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 119
    iget-boolean v3, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v3, :cond_6

    .line 120
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()Z

    move-result v13

    const/16 p1, 0x4

    goto :goto_7

    .line 433
    :cond_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_8

    :cond_7
    const/16 p1, 0x4

    const/4 v3, 0x0

    goto :goto_6

    .line 438
    :cond_8
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/16 p1, 0x4

    .line 48
    iget v15, v11, Lcom/google/zxing/qrcode/detector/FinderPattern;->d:I

    if-lt v15, v2, :cond_a

    if-nez v4, :cond_9

    move-object v4, v11

    goto :goto_5

    .line 448
    :cond_9
    iput-boolean v5, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    .line 449
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    div-int/2addr v3, v2

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v15, 0x4

    goto :goto_4

    .line 123
    :goto_6
    aget v4, v1, v2

    if-le v3, v4, :cond_b

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    add-int/2addr v12, v3

    add-int/lit8 v6, v10, -0x1

    .line 147
    :cond_b
    :goto_7
    aput v16, v1, v16

    .line 148
    aput v16, v1, v5

    .line 149
    aput v16, v1, v2

    .line 150
    aput v16, v1, v17

    .line 151
    aput v16, v1, p1

    const/4 v3, 0x0

    const/4 v11, 0x2

    goto :goto_9

    :cond_c
    const/16 p1, 0x4

    .line 137
    aget v3, v1, v2

    aput v3, v1, v16

    .line 138
    aget v3, v1, v17

    aput v3, v1, v5

    .line 139
    aget v3, v1, p1

    aput v3, v1, v2

    .line 140
    aput v5, v1, v17

    .line 141
    aput v16, v1, p1

    :goto_8
    const/4 v3, 0x3

    goto :goto_9

    :cond_d
    const/16 p1, 0x4

    .line 153
    aget v3, v1, v2

    aput v3, v1, v16

    .line 154
    aget v3, v1, v17

    aput v3, v1, v5

    .line 155
    aget v3, v1, p1

    aput v3, v1, v2

    .line 156
    aput v5, v1, v17

    .line 157
    aput v16, v1, p1

    goto :goto_8

    :cond_e
    const/16 p1, 0x4

    add-int/2addr v3, v5

    .line 161
    aget v4, v1, v3

    add-int/2addr v4, v5

    aput v4, v1, v3

    goto :goto_9

    :cond_f
    const/16 p1, 0x4

    .line 164
    aget v4, v1, v3

    add-int/2addr v4, v5

    aput v4, v1, v3

    :goto_9
    add-int/2addr v6, v5

    const/4 v4, 0x3

    const/4 v15, 0x4

    goto/16 :goto_3

    :cond_10
    const/16 v17, 0x3

    .line 168
    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 169
    invoke-virtual {v8, v1, v12, v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 171
    aget v3, v1, v16

    .line 172
    iget-boolean v4, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v4, :cond_11

    .line 174
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()Z

    move-result v4

    move v11, v3

    move v13, v4

    goto :goto_a

    :cond_11
    move v11, v3

    :cond_12
    :goto_a
    add-int/2addr v12, v11

    const/4 v3, 0x0

    const/4 v4, 0x3

    goto/16 :goto_2

    :cond_13
    const/16 v16, 0x0

    const/16 v17, 0x3

    .line 495
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_19

    const/4 v4, 0x0

    if-le v1, v3, :cond_16

    .line 506
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 507
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v8

    add-float/2addr v6, v8

    mul-float v8, v8, v8

    add-float/2addr v7, v8

    goto :goto_b

    :cond_14
    int-to-float v1, v1

    div-float/2addr v6, v1

    div-float/2addr v7, v1

    mul-float v1, v6, v6

    sub-float/2addr v7, v1

    float-to-double v7, v7

    .line 512
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v1, v7

    .line 514
    new-instance v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$c;

    invoke-direct {v3, v6}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$c;-><init>(F)V

    invoke-static {v14, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v6

    .line 516
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x0

    .line 518
    :goto_c
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_16

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_16

    .line 519
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 520
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v7

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v1

    if-lez v7, :cond_15

    .line 521
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    :cond_15
    add-int/2addr v3, v5

    goto :goto_c

    .line 527
    :cond_16
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-le v1, v3, :cond_18

    .line 531
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 532
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    add-float/2addr v4, v3

    goto :goto_d

    .line 535
    :cond_17
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v1

    .line 537
    new-instance v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$b;

    invoke-direct {v1, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$b;-><init>(F)V

    invoke-static {v14, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v14, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_18
    const/4 v1, 0x0

    .line 542
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v3, v3, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v4, v3, v1

    aput-object v6, v3, v5

    aput-object v7, v3, v2

    .line 181
    invoke-static {v3}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v1, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v1, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v1

    return-object v1

    .line 498
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    mul-float p4, p4, p1

    float-to-int p4, p4

    sub-int v0, p2, p4

    const/4 v1, 0x0

    .line 375
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 376
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    add-int/2addr p2, p4

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v6, p2, v4

    int-to-float p2, v6

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v2, v2, p1

    cmpg-float p2, p2, v2

    if-ltz p2, :cond_c

    sub-int p2, p3, p4

    .line 381
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 382
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p2

    sub-int/2addr p2, v10

    add-int/2addr p3, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v7, p2, v5

    int-to-float p2, v7

    cmpg-float p2, p2, v2

    if-ltz p2, :cond_b

    .line 387
    new-instance v2, Lcom/google/zxing/qrcode/detector/a;

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    move v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/google/zxing/qrcode/detector/a;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    .line 90
    iget p1, v2, Lcom/google/zxing/qrcode/detector/a;->e:I

    iget p2, v2, Lcom/google/zxing/qrcode/detector/a;->c:I

    add-int/2addr p1, p2

    .line 91
    iget p3, v2, Lcom/google/zxing/qrcode/detector/a;->f:I

    shr-int/lit8 p4, p3, 0x1

    iget v0, v2, Lcom/google/zxing/qrcode/detector/a;->d:I

    add-int/2addr v0, p4

    const/4 p4, 0x3

    .line 94
    new-array p4, p4, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_9

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    shr-int/2addr v4, v10

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    shr-int/2addr v4, v10

    neg-int v4, v4

    :goto_1
    add-int/2addr v4, v0

    .line 98
    aput v1, p4, v1

    .line 99
    aput v1, p4, v10

    const/4 v5, 0x2

    .line 100
    aput v1, p4, v5

    move v6, p2

    .line 105
    :goto_2
    iget-object v7, v2, Lcom/google/zxing/qrcode/detector/a;->a:Lcom/google/zxing/common/BitMatrix;

    if-ge v6, p1, :cond_1

    invoke-virtual {v7, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_3
    if-ge v6, p1, :cond_7

    .line 110
    invoke-virtual {v7, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_5

    if-ne v8, v10, :cond_2

    .line 113
    aget v9, p4, v8

    add-int/2addr v9, v10

    aput v9, p4, v8

    goto :goto_4

    :cond_2
    if-ne v8, v5, :cond_4

    .line 116
    invoke-virtual {v2, p4}, Lcom/google/zxing/qrcode/detector/a;->a([I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 117
    invoke-virtual {v2, v4, v6, p4}, Lcom/google/zxing/qrcode/detector/a;->b(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v8

    if-eqz v8, :cond_3

    return-object v8

    .line 122
    :cond_3
    aget v8, p4, v5

    aput v8, p4, v1

    .line 123
    aput v10, p4, v10

    .line 124
    aput v1, p4, v5

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 127
    aget v9, p4, v8

    add-int/2addr v9, v10

    aput v9, p4, v8

    goto :goto_4

    :cond_5
    if-ne v8, v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 134
    :cond_6
    aget v9, p4, v8

    add-int/2addr v9, v10

    aput v9, p4, v8

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 138
    :cond_7
    invoke-virtual {v2, p4}, Lcom/google/zxing/qrcode/detector/a;->a([I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 139
    invoke-virtual {v2, v4, p1, p4}, Lcom/google/zxing/qrcode/detector/a;->b(II[I)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v4

    if-eqz v4, :cond_8

    return-object v4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    :cond_9
    iget-object p1, v2, Lcom/google/zxing/qrcode/detector/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 150
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    return-object p1

    .line 153
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 384
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 378
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method public final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_6

    .line 201
    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v6

    div-float/2addr v6, v4

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v6

    .line 202
    invoke-static {v1, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    div-float/2addr v7, v4

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    add-int/2addr v7, v6

    const/4 v6, 0x1

    shr-int/2addr v7, v6

    add-int/lit8 v8, v7, 0x7

    and-int/lit8 v9, v8, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v9, :cond_2

    if-eq v9, v10, :cond_1

    if-eq v9, v11, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_1
    add-int/lit8 v8, v7, 0x6

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v7, 0x8

    .line 97
    :goto_0
    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v7

    .line 98
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v9

    add-int/lit8 v9, v9, -0x7

    .line 102
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v7

    array-length v7, v7

    const/4 v12, 0x4

    const/high16 v13, 0x40400000    # 3.0f

    if-lez v7, :cond_3

    .line 105
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v7, v14

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    add-float/2addr v14, v7

    .line 106
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v7, v15

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    add-float/2addr v15, v7

    int-to-float v7, v9

    div-float v7, v13, v7

    sub-float/2addr v5, v7

    .line 111
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    sub-float/2addr v14, v9

    mul-float v14, v14, v5

    add-float/2addr v14, v7

    float-to-int v7, v14

    .line 112
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    sub-float/2addr v15, v14

    mul-float v15, v15, v5

    add-float/2addr v15, v9

    float-to-int v5, v15

    const/4 v9, 0x4

    :goto_1
    const/16 v14, 0x10

    if-gt v9, v14, :cond_3

    int-to-float v14, v9

    .line 117
    :try_start_0
    invoke-virtual {v0, v4, v7, v5, v14}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    shl-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    int-to-float v5, v8

    const/high16 v7, 0x40600000    # 3.5f

    sub-float v16, v5, v7

    if-eqz v4, :cond_4

    .line 154
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 155
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    sub-float v9, v16, v13

    move/from16 v18, v9

    :goto_3
    move/from16 v26, v5

    move/from16 v27, v7

    goto :goto_4

    .line 160
    :cond_4
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    sub-float/2addr v5, v7

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    add-float/2addr v5, v7

    .line 161
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float/2addr v7, v9

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v7, v9

    move/from16 v18, v16

    goto :goto_3

    .line 166
    :goto_4
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v22

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v23

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v25

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v28

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v29

    const/high16 v17, 0x40600000    # 3.5f

    const/high16 v20, 0x40600000    # 3.5f

    const/high16 v14, 0x40600000    # 3.5f

    const/high16 v15, 0x40600000    # 3.5f

    move/from16 v19, v18

    move/from16 v21, v16

    invoke-static/range {v14 .. v29}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v5

    .line 189
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v7

    .line 190
    iget-object v9, v0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7, v9, v8, v8, v5}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    const/4 v7, 0x0

    if-nez v4, :cond_5

    .line 136
    new-array v4, v11, [Lcom/google/zxing/ResultPoint;

    aput-object v3, v4, v7

    aput-object v1, v4, v6

    aput-object v2, v4, v10

    goto :goto_5

    .line 138
    :cond_5
    new-array v8, v12, [Lcom/google/zxing/ResultPoint;

    aput-object v3, v8, v7

    aput-object v1, v8, v6

    aput-object v2, v8, v10

    aput-object v4, v8, v11

    move-object v4, v8

    .line 140
    :goto_5
    new-instance v1, Lcom/google/zxing/common/DetectorResult;

    invoke-direct {v1, v5, v4}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v1

    .line 94
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
