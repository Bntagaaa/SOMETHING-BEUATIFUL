.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method


# virtual methods
.method public final a(IIIIZ)[I
    .locals 5

    add-int v0, p3, p4

    shr-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 174
    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    if-lt v1, p3, :cond_6

    if-eqz p5, :cond_0

    .line 175
    invoke-virtual {v2, v1, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, p1, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v3, p3, :cond_4

    if-eqz p5, :cond_3

    .line 181
    invoke-virtual {v2, v3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1, v3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    :goto_2
    sub-int v4, v1, v3

    if-lt v3, p3, :cond_6

    if-le v4, p2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    :goto_4
    if-ge v0, p4, :cond_d

    if-eqz p5, :cond_7

    .line 195
    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_5

    :cond_7
    invoke-virtual {v2, p1, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-eqz p3, :cond_8

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move p3, v0

    :cond_9
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_b

    if-eqz p5, :cond_a

    .line 201
    invoke-virtual {v2, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_a
    invoke-virtual {v2, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_b
    :goto_6
    sub-int v3, p3, v0

    if-ge p3, p4, :cond_d

    if-le v3, p2, :cond_c

    goto :goto_7

    :cond_c
    move v0, p3

    goto :goto_4

    :cond_d
    :goto_7
    add-int/lit8 v0, v0, -0x1

    if-le v0, v1, :cond_e

    .line 212
    filled-new-array {v1, v0}, [I

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .locals 13

    move/from16 v0, p5

    const/4 v1, 0x0

    move v3, p1

    move v8, v0

    :goto_0
    move/from16 v6, p8

    if-ge v8, v6, :cond_a

    move/from16 v5, p7

    if-lt v8, v5, :cond_a

    move/from16 v11, p4

    if-ge v3, v11, :cond_a

    move/from16 v10, p3

    if-lt v3, v10, :cond_a

    if-nez p2, :cond_0

    const/4 v12, 0x1

    move-object v7, p0

    move/from16 v9, p9

    .line 116
    invoke-virtual/range {v7 .. v12}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->a(IIIIZ)[I

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    move-object v2, p0

    move/from16 v4, p9

    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->a(IIIIZ)[I

    move-result-object v7

    :goto_1
    if-nez v7, :cond_9

    if-eqz v1, :cond_8

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_4

    sub-int v8, v8, p6

    .line 128
    aget v0, v1, v2

    if-ge v0, p1, :cond_3

    .line 129
    aget v1, v1, v4

    if-le v1, p1, :cond_2

    .line 131
    new-instance p1, Lcom/google/zxing/ResultPoint;

    if-lez p6, :cond_1

    int-to-float v0, v0

    goto :goto_2

    :cond_1
    int-to-float v0, v1

    :goto_2
    int-to-float v1, v8

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    .line 133
    :cond_2
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v0

    int-to-float v1, v8

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    .line 135
    :cond_3
    new-instance p1, Lcom/google/zxing/ResultPoint;

    aget v0, v1, v4

    int-to-float v0, v0

    int-to-float v1, v8

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    :cond_4
    sub-int/2addr v3, p2

    .line 139
    aget p1, v1, v2

    if-ge p1, v0, :cond_7

    .line 140
    aget v1, v1, v4

    if-le v1, v0, :cond_6

    .line 141
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v2, v3

    if-gez p2, :cond_5

    int-to-float p1, p1

    goto :goto_3

    :cond_5
    int-to-float p1, v1

    :goto_3
    invoke-direct {v0, v2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 143
    :cond_6
    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v3

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object v0

    .line 145
    :cond_7
    new-instance p1, Lcom/google/zxing/ResultPoint;

    int-to-float v0, v3

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p1

    .line 123
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    :cond_9
    add-int v8, v8, p6

    add-int/2addr v3, p2

    move-object v1, v7

    goto/16 :goto_0

    .line 151
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 51
    iget-object v1, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    .line 52
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    const/4 v10, 0x1

    shr-int/lit8 v5, v8, 0x1

    shr-int/lit8 v1, v4, 0x1

    .line 55
    div-int/lit16 v2, v8, 0x100

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 56
    div-int/lit16 v2, v4, 0x100

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    neg-int v6, v11

    const/4 v13, 0x2

    shr-int/lit8 v9, v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 62
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->b(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v2

    move v14, v6

    move v15, v9

    .line 64
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v7, v0, -0x1

    neg-int v2, v12

    shr-int/lit8 v9, v8, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    .line 65
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->b(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    .line 67
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v3, v0, -0x1

    move-object/from16 v0, p0

    move v2, v12

    .line 68
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->b(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v12

    move/from16 v17, v4

    .line 70
    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v4, v0, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v6, v11

    move v9, v15

    .line 71
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->b(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 73
    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v8, v0, 0x1

    const/4 v15, 0x3

    shr-int/lit8 v9, v17, 0x3

    move-object/from16 v0, p0

    move v6, v14

    .line 76
    invoke-virtual/range {v0 .. v9}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->b(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    const/4 v0, 0x4

    .line 79
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    aput-object v1, v0, v2

    aput-object v16, v0, v10

    aput-object v12, v0, v13

    aput-object v11, v0, v15

    return-object v0
.end method
