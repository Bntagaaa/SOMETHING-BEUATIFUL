.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I


# instance fields
.field public final a:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->b:[I

    .line 51
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->c:[I

    const/16 v0, 0x9

    .line 54
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/zxing/pdf417/detector/Detector;->d:[I

    .line 58
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->e:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/zxing/pdf417/detector/Detector;->a:Lcom/google/zxing/BinaryBitmap;

    return-void
.end method

.method public static a([Lcom/google/zxing/ResultPoint;Z)V
    .locals 13

    const/4 v0, 0x0

    .line 300
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 301
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/4 v2, 0x2

    .line 302
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 303
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v4, 0x4

    .line 304
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 305
    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    const/4 v7, 0x6

    .line 306
    aget-object v8, p0, v7

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    .line 307
    aget-object v9, p0, v7

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float v10, v6, v9

    if-eqz p1, :cond_0

    neg-float v10, v10

    :cond_0
    const/high16 v11, 0x40400000    # 3.0f

    cmpl-float v12, v10, v11

    if-lez v12, :cond_1

    sub-float/2addr v8, v1

    sub-float/2addr v9, v0

    mul-float v2, v8, v8

    mul-float v3, v9, v9

    add-float/2addr v3, v2

    sub-float/2addr v5, v1

    mul-float v5, v5, v8

    div-float/2addr v5, v3

    .line 319
    new-instance v2, Lcom/google/zxing/ResultPoint;

    mul-float v8, v8, v5

    add-float/2addr v8, v1

    mul-float v5, v5, v9

    add-float/2addr v5, v0

    invoke-direct {v2, v8, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, p0, v4

    goto :goto_0

    :cond_1
    neg-float v0, v10

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2

    sub-float v0, v3, v5

    sub-float v1, v2, v6

    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v5, v4

    sub-float v4, v3, v8

    mul-float v4, v4, v0

    div-float/2addr v4, v5

    .line 326
    new-instance v5, Lcom/google/zxing/ResultPoint;

    mul-float v0, v0, v4

    sub-float/2addr v3, v0

    mul-float v4, v4, v1

    sub-float/2addr v2, v4

    invoke-direct {v5, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, p0, v7

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 329
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 330
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    const/4 v2, 0x3

    .line 331
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 332
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v4, 0x5

    .line 333
    aget-object v5, p0, v4

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 334
    aget-object v6, p0, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    const/4 v7, 0x7

    .line 335
    aget-object v8, p0, v7

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    .line 336
    aget-object v9, p0, v7

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    sub-float v10, v9, v6

    if-eqz p1, :cond_3

    neg-float v10, v10

    :cond_3
    cmpl-float p1, v10, v11

    if-lez p1, :cond_4

    sub-float/2addr v8, v1

    sub-float/2addr v9, v0

    mul-float p1, v8, v8

    mul-float v2, v9, v9

    add-float/2addr v2, p1

    sub-float/2addr v5, v1

    mul-float v5, v5, v8

    div-float/2addr v5, v2

    .line 348
    new-instance p1, Lcom/google/zxing/ResultPoint;

    mul-float v8, v8, v5

    add-float/2addr v8, v1

    mul-float v5, v5, v9

    add-float/2addr v5, v0

    invoke-direct {p1, v8, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p1, p0, v4

    return-void

    :cond_4
    neg-float p1, v10

    cmpl-float p1, p1, v11

    if-lez p1, :cond_5

    sub-float p1, v3, v5

    sub-float v0, v2, v6

    mul-float v1, p1, p1

    mul-float v4, v0, v0

    add-float/2addr v4, v1

    sub-float v1, v3, v8

    mul-float v1, v1, p1

    div-float/2addr v1, v4

    .line 355
    new-instance v4, Lcom/google/zxing/ResultPoint;

    mul-float p1, p1, v1

    sub-float/2addr v3, p1

    mul-float v1, v1, v0

    sub-float/2addr v2, v1

    invoke-direct {v4, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, p0, v7

    :cond_5
    return-void
.end method

.method public static b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 20

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 476
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 477
    array-length v2, v0

    move/from16 v5, p1

    move v7, v5

    move/from16 v4, p4

    const/4 v6, 0x0

    :goto_0
    add-int v8, p1, p3

    if-ge v5, v8, :cond_8

    move-object/from16 v8, p0

    move/from16 v9, p2

    .line 483
    invoke-virtual {v8, v5, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    xor-int/2addr v10, v4

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    .line 485
    aget v10, v1, v6

    add-int/2addr v10, v11

    aput v10, v1, v6

    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v10, v2, -0x1

    if-ne v6, v10, :cond_7

    .line 522
    array-length v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    .line 526
    aget v16, v1, v13

    add-int v14, v14, v16

    .line 527
    aget v16, v0, v13

    add-int v15, v15, v16

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    if-ge v14, v15, :cond_2

    const/16 p4, 0x1

    const v13, 0x7fffffff

    const/16 v19, 0x0

    goto :goto_4

    :cond_2
    shl-int/lit8 v16, v14, 0x8

    .line 537
    div-int v16, v16, v15

    const/16 v15, 0xcc

    mul-int v15, v15, v16

    shr-int/lit8 v15, v15, 0x8

    const/16 p4, 0x1

    const/4 v11, 0x0

    const/16 v17, 0x0

    :goto_2
    if-ge v11, v12, :cond_5

    .line 542
    aget v18, v1, v11

    shl-int/lit8 v13, v18, 0x8

    .line 543
    aget v18, v0, v11

    const/16 v19, 0x0

    mul-int v3, v18, v16

    if-le v13, v3, :cond_3

    sub-int/2addr v13, v3

    goto :goto_3

    :cond_3
    sub-int v13, v3, v13

    :goto_3
    if-le v13, v15, :cond_4

    const v13, 0x7fffffff

    goto :goto_4

    :cond_4
    add-int v17, v17, v13

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    .line 550
    div-int v13, v17, v14

    :goto_4
    const/16 v3, 0x6b

    if-ge v13, v3, :cond_6

    .line 489
    filled-new-array {v7, v5}, [I

    move-result-object v0

    return-object v0

    .line 491
    :cond_6
    aget v3, v1, v19

    aget v11, v1, p4

    add-int/2addr v3, v11

    add-int/2addr v7, v3

    add-int/lit8 v3, v2, -0x2

    const/4 v11, 0x2

    const/4 v12, 0x0

    .line 492
    invoke-static {v1, v11, v1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    aput v12, v1, v3

    .line 494
    aput v12, v1, v10

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_7
    const/16 p4, 0x1

    const/4 v12, 0x0

    add-int/lit8 v6, v6, 0x1

    .line 499
    :goto_5
    aput p4, v1, v6

    xor-int/lit8 v3, v4, 0x1

    move v4, v3

    :goto_6
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, v0}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 31
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v3, 0x4

    move-object/from16 v4, p0

    .line 85
    iget-object v5, v4, Lcom/google/zxing/pdf417/detector/Detector;->a:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v5}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    .line 87
    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    .line 141
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    const/16 v15, 0x8

    .line 143
    new-array v7, v15, [Lcom/google/zxing/ResultPoint;

    .line 146
    new-array v12, v15, [I

    const/16 v8, 0x9

    const/16 v26, 0x7

    if-eqz v0, :cond_1

    const/16 v10, 0x9

    goto :goto_1

    :cond_1
    const/4 v10, 0x7

    :goto_1
    shr-int v10, v14, v10

    .line 148
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/4 v8, 0x0

    :goto_2
    const/16 v10, 0x9

    .line 151
    sget-object v11, Lcom/google/zxing/pdf417/detector/Detector;->b:[I

    if-ge v8, v14, :cond_3

    const/16 v17, 0x9

    const/4 v10, 0x0

    move-object/from16 v18, v7

    const/4 v7, 0x0

    const/16 v1, 0x9

    const/16 v27, 0x3

    .line 152
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v7

    if-eqz v7, :cond_2

    .line 154
    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/16 v28, 0x2

    aget v2, v7, v5

    int-to-float v2, v2

    int-to-float v8, v8

    invoke-direct {v10, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v18, v5

    .line 155
    new-instance v2, Lcom/google/zxing/ResultPoint;

    aget v7, v7, v13

    int-to-float v7, v7

    invoke-direct {v2, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v18, v3

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/16 v28, 0x2

    add-int v8, v8, v16

    move-object/from16 v7, v18

    goto :goto_2

    :cond_3
    move-object/from16 v18, v7

    const/16 v1, 0x9

    const/16 v27, 0x3

    const/16 v28, 0x2

    const/4 v2, 0x0

    :goto_3
    const/16 v29, 0x5

    if-eqz v2, :cond_6

    add-int/lit8 v2, v14, -0x1

    move v8, v2

    :goto_4
    if-lez v8, :cond_5

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 164
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_4

    .line 166
    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v10, v2, v5

    int-to-float v10, v10

    int-to-float v8, v8

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v18, v13

    .line 167
    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v2, v2, v13

    int-to-float v2, v2

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v18, v29

    const/4 v2, 0x1

    goto :goto_5

    :cond_4
    sub-int v8, v8, v16

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    .line 174
    :cond_6
    :goto_5
    new-array v12, v1, [I

    .line 177
    sget-object v11, Lcom/google/zxing/pdf417/detector/Detector;->d:[I

    const/16 v30, 0x6

    if-eqz v2, :cond_9

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v14, :cond_8

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 180
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_7

    .line 182
    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v10, v2, v13

    int-to-float v10, v10

    int-to-float v8, v8

    invoke-direct {v7, v10, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v18, v28

    .line 183
    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v18, v30

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    add-int v8, v8, v16

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :cond_9
    :goto_7
    if-eqz v2, :cond_c

    sub-int/2addr v14, v13

    move v8, v14

    :goto_8
    if-lez v8, :cond_b

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 193
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v2

    if-eqz v2, :cond_a

    .line 195
    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v9, v2, v13

    int-to-float v9, v9

    int-to-float v8, v8

    invoke-direct {v7, v9, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v18, v27

    .line 196
    new-instance v7, Lcom/google/zxing/ResultPoint;

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-direct {v7, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v18, v26

    const/4 v2, 0x1

    goto :goto_9

    :cond_a
    sub-int v8, v8, v16

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :cond_c
    :goto_9
    if-eqz v2, :cond_d

    move-object/from16 v7, v18

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    :goto_a
    if-nez v7, :cond_1c

    .line 224
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    .line 225
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    shr-int/2addr v7, v13

    .line 228
    new-array v8, v15, [Lcom/google/zxing/ResultPoint;

    .line 231
    new-array v12, v15, [I

    if-eqz v0, :cond_e

    const/16 v0, 0x9

    goto :goto_b

    :cond_e
    const/4 v0, 0x7

    :goto_b
    shr-int v0, v2, v0

    .line 233
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v16, v2, -0x1

    move-object v9, v8

    move/from16 v8, v16

    .line 236
    :goto_c
    sget-object v11, Lcom/google/zxing/pdf417/detector/Detector;->c:[I

    if-lez v8, :cond_10

    const/4 v10, 0x1

    move-object/from16 v17, v9

    move v9, v7

    .line 237
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    if-eqz v9, :cond_f

    .line 239
    new-instance v10, Lcom/google/zxing/ResultPoint;

    aget v14, v9, v13

    int-to-float v14, v14

    int-to-float v8, v8

    invoke-direct {v10, v14, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v17, v5

    .line 240
    new-instance v10, Lcom/google/zxing/ResultPoint;

    aget v9, v9, v5

    int-to-float v9, v9

    invoke-direct {v10, v9, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v17, v3

    const/4 v8, 0x1

    goto :goto_d

    :cond_f
    sub-int/2addr v8, v0

    move-object/from16 v9, v17

    goto :goto_c

    :cond_10
    move-object/from16 v17, v9

    const/4 v8, 0x0

    :goto_d
    if-eqz v8, :cond_13

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v2, :cond_12

    const/4 v10, 0x1

    move v9, v7

    .line 249
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v9

    if-eqz v9, :cond_11

    .line 251
    new-instance v10, Lcom/google/zxing/ResultPoint;

    aget v11, v9, v13

    int-to-float v11, v11

    int-to-float v8, v8

    invoke-direct {v10, v11, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v17, v13

    .line 252
    new-instance v10, Lcom/google/zxing/ResultPoint;

    aget v9, v9, v5

    int-to-float v9, v9

    invoke-direct {v10, v9, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v17, v29

    const/4 v8, 0x1

    goto :goto_f

    :cond_11
    add-int/2addr v8, v0

    goto :goto_e

    :cond_12
    const/4 v8, 0x0

    .line 259
    :cond_13
    :goto_f
    new-array v12, v1, [I

    .line 262
    sget-object v11, Lcom/google/zxing/pdf417/detector/Detector;->e:[I

    if-eqz v8, :cond_16

    move/from16 v8, v16

    :goto_10
    if-lez v8, :cond_15

    const/4 v10, 0x0

    move v9, v7

    const/4 v7, 0x0

    .line 265
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v1

    move v7, v9

    if-eqz v1, :cond_14

    .line 267
    new-instance v9, Lcom/google/zxing/ResultPoint;

    aget v10, v1, v5

    int-to-float v10, v10

    int-to-float v8, v8

    invoke-direct {v9, v10, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v17, v28

    .line 268
    new-instance v9, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v13

    int-to-float v1, v1

    invoke-direct {v9, v1, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v17, v30

    const/4 v8, 0x1

    goto :goto_11

    :cond_14
    sub-int/2addr v8, v0

    goto :goto_10

    :cond_15
    const/4 v8, 0x0

    :cond_16
    :goto_11
    if-eqz v8, :cond_19

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v2, :cond_18

    const/4 v10, 0x0

    move v9, v7

    const/4 v7, 0x0

    .line 278
    invoke-static/range {v6 .. v12}, Lcom/google/zxing/pdf417/detector/Detector;->b(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v1

    move v7, v9

    if-eqz v1, :cond_17

    .line 280
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v2, v1, v5

    int-to-float v2, v2

    int-to-float v7, v8

    invoke-direct {v0, v2, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v17, v27

    .line 281
    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget v1, v1, v13

    int-to-float v1, v1

    invoke-direct {v0, v1, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v17, v26

    const/4 v8, 0x1

    goto :goto_13

    :cond_17
    add-int/2addr v8, v0

    goto :goto_12

    :cond_18
    const/4 v8, 0x0

    :cond_19
    :goto_13
    if-eqz v8, :cond_1a

    move-object/from16 v14, v17

    goto :goto_14

    :cond_1a
    const/4 v14, 0x0

    :goto_14
    if-eqz v14, :cond_1b

    .line 95
    invoke-static {v14, v13}, Lcom/google/zxing/pdf417/detector/Detector;->a([Lcom/google/zxing/ResultPoint;Z)V

    :cond_1b
    move-object v0, v14

    goto :goto_15

    .line 98
    :cond_1c
    invoke-static {v7, v5}, Lcom/google/zxing/pdf417/detector/Detector;->a([Lcom/google/zxing/ResultPoint;Z)V

    move-object v0, v7

    :goto_15
    if-eqz v0, :cond_20

    .line 375
    aget-object v1, v0, v5

    aget-object v2, v0, v3

    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    .line 376
    aget-object v2, v0, v13

    aget-object v7, v0, v29

    invoke-static {v2, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    add-float/2addr v2, v1

    const/high16 v1, 0x42080000    # 34.0f

    div-float/2addr v2, v1

    .line 378
    aget-object v1, v0, v30

    aget-object v7, v0, v28

    invoke-static {v1, v7}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    .line 379
    aget-object v7, v0, v26

    aget-object v8, v0, v27

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    add-float/2addr v7, v1

    const/high16 v1, 0x42100000    # 36.0f

    div-float/2addr v7, v1

    add-float/2addr v7, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v7, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v7, v1

    if-ltz v1, :cond_1f

    .line 110
    aget-object v1, v0, v3

    aget-object v2, v0, v30

    aget-object v8, v0, v29

    aget-object v9, v0, v26

    .line 400
    invoke-static {v1, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    div-float/2addr v1, v7

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 401
    invoke-static {v8, v9}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v15

    .line 402
    div-int/lit8 v1, v1, 0x11

    mul-int/lit8 v8, v1, 0x11

    if-lt v8, v13, :cond_1e

    .line 116
    aget-object v1, v0, v3

    aget-object v2, v0, v30

    aget-object v9, v0, v29

    aget-object v10, v0, v26

    .line 421
    invoke-static {v1, v9}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    div-float/2addr v1, v7

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 422
    invoke-static {v2, v10}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    div-float/2addr v2, v7

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    shr-int/lit8 v1, v2, 0x1

    if-le v1, v8, :cond_1d

    move v9, v1

    goto :goto_16

    :cond_1d
    move v9, v8

    .line 120
    :goto_16
    aget-object v1, v0, v3

    aget-object v2, v0, v29

    aget-object v7, v0, v30

    aget-object v10, v0, v26

    move-object v11, v7

    move-object v7, v6

    .line 436
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v6

    int-to-float v12, v8

    int-to-float v15, v9

    .line 438
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v22

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v23

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v25

    const/4 v1, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v14, v12

    move/from16 v17, v15

    invoke-virtual/range {v6 .. v25}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    .line 121
    new-instance v6, Lcom/google/zxing/common/DetectorResult;

    aget-object v7, v0, v29

    aget-object v8, v0, v3

    aget-object v9, v0, v30

    aget-object v0, v0, v26

    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    aput-object v7, v3, v5

    aput-object v8, v3, v1

    aput-object v9, v3, v28

    aput-object v0, v3, v27

    invoke-direct {v6, v2, v3}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v6

    .line 113
    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 107
    :cond_1f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 102
    :cond_20
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
