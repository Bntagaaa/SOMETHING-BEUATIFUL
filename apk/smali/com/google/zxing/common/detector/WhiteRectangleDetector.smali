.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    .line 51
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    .line 52
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    add-int/lit8 v1, p1, -0x1e

    shr-int/lit8 v1, v1, 0x1

    .line 53
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    add-int/lit8 v2, p1, 0x1e

    shr-int/lit8 v2, v2, 0x1

    .line 54
    iput v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    add-int/lit8 v3, v0, -0x1e

    shr-int/lit8 v3, v3, 0x1

    .line 55
    iput v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    add-int/lit8 v4, v0, 0x1e

    shr-int/lit8 v4, v4, 0x1

    .line 56
    iput v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    if-ltz v3, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v0, :cond_0

    if-ge v2, p1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    .line 67
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    .line 68
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    shr-int/lit8 p2, p2, 0x1

    sub-int v1, p3, p2

    .line 70
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    add-int/2addr p3, p2

    .line 71
    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    sub-int v2, p4, p2

    .line 72
    iput v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    add-int/2addr p4, p2

    .line 73
    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-ge p4, v0, :cond_0

    if-ge p3, p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(IIIZ)Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    .line 318
    invoke-virtual {v0, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 324
    invoke-virtual {v0, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_2

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final b(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 5

    .line 244
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 249
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    mul-float v2, v2, p4

    add-float/2addr v2, p2

    .line 250
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 251
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float p2, v3

    int-to-float p3, v2

    invoke-direct {p1, p2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x4

    .line 101
    iget v4, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    iget v5, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    iget v6, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    iget v7, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 103
    :cond_0
    :goto_0
    iget v12, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    const/4 v13, 0x0

    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    if-ge v5, v12, :cond_2

    .line 112
    invoke-virtual {v0, v6, v7, v5, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v10

    if-eqz v10, :cond_1

    add-int/2addr v5, v9

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    if-lt v5, v12, :cond_3

    :goto_2
    const/4 v10, 0x1

    goto :goto_6

    :cond_3
    const/4 v10, 0x1

    .line 128
    :cond_4
    :goto_3
    iget v14, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-eqz v10, :cond_5

    if-ge v7, v14, :cond_5

    .line 129
    invoke-virtual {v0, v4, v5, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/2addr v7, v9

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    if-lt v7, v14, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x1

    :cond_7
    :goto_4
    if-eqz v10, :cond_8

    if-ltz v4, :cond_8

    .line 146
    invoke-virtual {v0, v6, v7, v4, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v4, v4, -0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    if-gez v4, :cond_9

    goto :goto_2

    :cond_9
    move v10, v13

    const/4 v13, 0x1

    :cond_a
    :goto_5
    if-eqz v13, :cond_b

    if-ltz v6, :cond_b

    .line 163
    invoke-virtual {v0, v4, v5, v6, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v13

    if-eqz v13, :cond_a

    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    if-gez v6, :cond_c

    goto :goto_2

    :cond_c
    if-eqz v10, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_d
    const/4 v10, 0x0

    :goto_6
    if-nez v10, :cond_1b

    if-eqz v11, :cond_1b

    sub-int v10, v5, v4

    const/4 v11, 0x0

    move-object v14, v11

    const/4 v13, 0x1

    :goto_7
    if-ge v13, v10, :cond_f

    int-to-float v14, v4

    sub-int v15, v7, v13

    int-to-float v15, v15

    const/16 v16, 0x3

    add-int v1, v4, v13

    int-to-float v1, v1

    const/16 v17, 0x2

    int-to-float v3, v7

    .line 187
    invoke-virtual {v0, v14, v15, v1, v3}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v14

    if-eqz v14, :cond_e

    goto :goto_8

    :cond_e
    add-int/2addr v13, v9

    goto :goto_7

    :cond_f
    const/16 v16, 0x3

    const/16 v17, 0x2

    :goto_8
    if-eqz v14, :cond_1a

    move-object v3, v11

    const/4 v1, 0x1

    :goto_9
    if-ge v1, v10, :cond_11

    int-to-float v3, v4

    add-int v13, v6, v1

    int-to-float v13, v13

    add-int v15, v4, v1

    int-to-float v15, v15

    const/16 v18, 0x0

    int-to-float v8, v6

    .line 200
    invoke-virtual {v0, v3, v13, v15, v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v3

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    add-int/2addr v1, v9

    const/4 v8, 0x0

    goto :goto_9

    :cond_11
    const/16 v18, 0x0

    :goto_a
    if-eqz v3, :cond_19

    move-object v4, v11

    const/4 v1, 0x1

    :goto_b
    if-ge v1, v10, :cond_13

    int-to-float v4, v5

    add-int v8, v6, v1

    int-to-float v8, v8

    sub-int v13, v5, v1

    int-to-float v13, v13

    int-to-float v15, v6

    .line 213
    invoke-virtual {v0, v4, v8, v13, v15}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v4

    if-eqz v4, :cond_12

    goto :goto_c

    :cond_12
    add-int/2addr v1, v9

    goto :goto_b

    :cond_13
    :goto_c
    if-eqz v4, :cond_18

    const/4 v1, 0x1

    :goto_d
    if-ge v1, v10, :cond_15

    int-to-float v6, v5

    sub-int v8, v7, v1

    int-to-float v8, v8

    sub-int v11, v5, v1

    int-to-float v11, v11

    int-to-float v13, v7

    .line 226
    invoke-virtual {v0, v6, v8, v11, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    if-eqz v11, :cond_14

    goto :goto_e

    :cond_14
    add-int/2addr v1, v9

    goto :goto_d

    :cond_15
    :goto_e
    if-eqz v11, :cond_17

    .line 281
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 282
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    .line 283
    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 284
    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    .line 285
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    .line 286
    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    .line 287
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    .line 288
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 290
    div-int/lit8 v12, v12, 0x2

    int-to-float v11, v12

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v11, v1, v11

    if-gez v11, :cond_16

    .line 291
    new-instance v11, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v10, v12

    add-float/2addr v3, v12

    invoke-direct {v11, v10, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v3, Lcom/google/zxing/ResultPoint;

    add-float/2addr v6, v12

    add-float/2addr v7, v12

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v8, v12

    sub-float/2addr v4, v12

    invoke-direct {v6, v8, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v12

    sub-float/2addr v5, v12

    invoke-direct {v4, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v1, v2, [Lcom/google/zxing/ResultPoint;

    aput-object v11, v1, v18

    aput-object v3, v1, v9

    aput-object v6, v1, v17

    aput-object v4, v1, v16

    return-object v1

    .line 297
    :cond_16
    new-instance v11, Lcom/google/zxing/ResultPoint;

    add-float/2addr v10, v12

    add-float/2addr v3, v12

    invoke-direct {v11, v10, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v3, Lcom/google/zxing/ResultPoint;

    add-float/2addr v6, v12

    sub-float/2addr v7, v12

    invoke-direct {v3, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v8, v12

    add-float/2addr v4, v12

    invoke-direct {v6, v8, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v4, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v1, v12

    sub-float/2addr v5, v12

    invoke-direct {v4, v1, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v1, v2, [Lcom/google/zxing/ResultPoint;

    aput-object v11, v1, v18

    aput-object v3, v1, v9

    aput-object v6, v1, v17

    aput-object v4, v1, v16

    return-object v1

    .line 233
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 220
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 207
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 194
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 239
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
