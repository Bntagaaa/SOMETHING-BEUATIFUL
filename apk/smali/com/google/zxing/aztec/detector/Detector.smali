.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;)I
    .locals 10

    .line 621
    iget v0, p1, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    iget v1, p2, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    invoke-static {v0, p1, v1, p2}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-int/2addr p2, p1

    int-to-float p2, p2

    div-float/2addr p2, v2

    int-to-float v3, v0

    int-to-float v4, p1

    .line 551
    iget-object v5, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    int-to-float v8, v6

    cmpg-float v8, v8, v2

    if-gez v8, :cond_1

    add-float/2addr v3, v1

    add-float/2addr v4, p2

    .line 556
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eq v8, p1, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    int-to-float p2, v7

    div-float/2addr p2, v2

    float-to-double v1, p2

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double p2, v1, v3

    if-lez p2, :cond_2

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpg-double p2, v1, v5

    if-gez p2, :cond_2

    return v0

    :cond_2
    cmpg-double p2, v1, v3

    if-gtz p2, :cond_3

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    :cond_4
    const/4 p1, -0x1

    return p1

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;
    .locals 3

    .line 578
    iget v0, p1, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    add-int/2addr v0, p3

    .line 579
    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    :goto_0
    add-int/2addr p1, p4

    .line 581
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/2addr v0, p3

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p3

    sub-int/2addr p1, p4

    .line 589
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-ne v1, p2, :cond_1

    add-int/2addr v0, p3

    goto :goto_1

    :cond_1
    sub-int/2addr v0, p3

    .line 594
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {v2, v0, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p3

    if-ne p3, p2, :cond_2

    add-int/2addr p1, p4

    goto :goto_2

    :cond_2
    sub-int/2addr p1, p4

    .line 599
    new-instance p2, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    return-object p2
.end method

.method public final c(II)Z
    .locals 2

    if-ltz p1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-lez p2, :cond_0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p1

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;I)[Z
    .locals 7

    .line 479
    new-array v0, p3, [Z

    .line 621
    iget v1, p1, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    iget v2, p2, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    iget v3, p1, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    iget v4, p2, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    invoke-static {v1, v3, v2, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v1

    add-int/lit8 v2, p3, -0x1

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 482
    iget p2, p2, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    iget p1, p1, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float p2, p2, v2

    div-float/2addr p2, v1

    sub-int/2addr v4, v3

    int-to-float v4, v4

    mul-float v2, v2, v4

    div-float/2addr v2, v1

    int-to-float p1, p1

    int-to-float v1, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    .line 489
    invoke-static {p1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    aput-boolean v4, v0, v3

    add-float/2addr p1, p2

    add-float/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 340
    iget-object v9, v0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    const/4 v10, -0x1

    :try_start_0
    new-instance v11, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v11, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 341
    aget-object v12, v11, v3

    .line 342
    aget-object v13, v11, v8

    .line 343
    aget-object v14, v11, v6

    .line 344
    aget-object v11, v11, v7
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v16, 0xa

    goto :goto_0

    .line 350
    :catch_0
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    div-int/2addr v11, v6

    .line 351
    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v12

    div-int/2addr v12, v6

    .line 352
    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$b;

    add-int/lit8 v14, v11, 0x7

    add-int/lit8 v15, v12, -0x7

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v13, v3, v8, v10}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v13

    const/16 v16, 0xa

    .line 353
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$b;

    add-int/2addr v12, v5

    invoke-direct {v1, v14, v12}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v1, v3, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 354
    new-instance v14, Lcom/google/zxing/aztec/detector/Detector$b;

    sub-int/2addr v11, v5

    invoke-direct {v14, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v14, v3, v10, v8}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v14

    .line 355
    new-instance v12, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v12, v11, v15}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v12, v3, v10, v10}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    move-object v12, v13

    move-object v13, v1

    .line 360
    :goto_0
    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    add-float/2addr v15, v1

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v1, v15

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    add-float/2addr v15, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v15, v1

    invoke-static {v15}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v15

    .line 361
    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    add-float/2addr v11, v12

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    add-float/2addr v12, v11

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    add-float/2addr v11, v12

    div-float/2addr v11, v1

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    const/16 v12, 0xf

    .line 367
    :try_start_1
    new-instance v13, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v13, v9, v12, v15, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    .line 368
    aget-object v13, v9, v3

    .line 369
    aget-object v14, v9, v8

    .line 370
    aget-object v17, v9, v6

    .line 371
    aget-object v9, v9, v7
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v11, v17

    const/high16 v17, 0x40800000    # 4.0f

    goto :goto_1

    .line 376
    :catch_1
    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$b;

    add-int/lit8 v13, v15, 0x7

    add-int/lit8 v14, v11, -0x7

    invoke-direct {v9, v13, v14}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v9, v3, v8, v10}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v9

    const/high16 v17, 0x40800000    # 4.0f

    .line 377
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$b;

    add-int/2addr v11, v5

    invoke-direct {v1, v13, v11}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v1, v3, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v1

    .line 378
    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$b;

    sub-int/2addr v15, v5

    invoke-direct {v13, v15, v11}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v13, v3, v10, v8}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v11

    .line 379
    new-instance v13, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v13, v15, v14}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    invoke-virtual {v0, v13, v3, v10, v10}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/zxing/aztec/detector/Detector$b;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v13

    move-object v14, v13

    move-object v13, v9

    move-object v9, v14

    move-object v14, v1

    .line 384
    :goto_1
    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    add-float/2addr v15, v1

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    add-float/2addr v1, v15

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    add-float/2addr v15, v1

    div-float v15, v15, v17

    invoke-static {v15}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 385
    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v9, v13

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    add-float/2addr v13, v9

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v9, v13

    div-float v9, v9, v17

    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    .line 387
    new-instance v11, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v11, v1, v9}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 263
    iput v8, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    move-object v1, v11

    move-object v9, v1

    move-object v13, v9

    const/4 v14, 0x1

    :goto_2
    iget v15, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/16 v17, 0xf

    iget v12, v13, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    const/16 v18, 0x3

    iget v7, v13, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    const/16 v19, 0x0

    iget v3, v11, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    iget v4, v11, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    if-ge v15, v2, :cond_4

    .line 264
    invoke-virtual {v0, v11, v14, v8, v10}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v11

    .line 265
    invoke-virtual {v0, v1, v14, v8, v8}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v15

    const/16 v21, 0x9

    .line 266
    invoke-virtual {v0, v9, v14, v10, v8}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v13, v14, v10, v10}, Lcom/google/zxing/aztec/detector/Detector;->b(Lcom/google/zxing/aztec/detector/Detector$b;ZII)Lcom/google/zxing/aztec/detector/Detector$b;

    move-result-object v13

    .line 273
    iget v10, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    if-le v10, v6, :cond_3

    .line 621
    iget v10, v13, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    const/16 v23, 0x2

    iget v6, v13, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    const/16 v24, 0x1

    iget v8, v11, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    iget v5, v11, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    invoke-static {v10, v6, v8, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v26

    move/from16 v27, v5

    .line 274
    iget v5, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    int-to-float v5, v5

    mul-float v26, v26, v5

    .line 621
    invoke-static {v7, v12, v4, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v5

    move/from16 v28, v5

    .line 274
    iget v5, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    mul-float v5, v5, v28

    div-float v5, v26, v5

    move/from16 v26, v6

    float-to-double v5, v5

    const-wide/high16 v28, 0x3fe8000000000000L    # 0.75

    cmpg-double v30, v5, v28

    if-ltz v30, :cond_5

    const-wide/high16 v28, 0x3ff4000000000000L    # 1.25

    cmpl-double v30, v5, v28

    if-gtz v30, :cond_5

    .line 508
    new-instance v5, Lcom/google/zxing/aztec/detector/Detector$b;

    add-int/lit8 v8, v8, -0x3

    add-int/lit8 v6, v27, 0x3

    invoke-direct {v5, v8, v6}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 509
    new-instance v6, Lcom/google/zxing/aztec/detector/Detector$b;

    iget v8, v15, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    add-int/lit8 v8, v8, -0x3

    move/from16 v27, v10

    iget v10, v15, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    add-int/lit8 v10, v10, -0x3

    invoke-direct {v6, v8, v10}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 510
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$b;

    iget v10, v2, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v28, v11

    iget v11, v2, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    add-int/lit8 v11, v11, -0x3

    invoke-direct {v8, v10, v11}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 511
    new-instance v10, Lcom/google/zxing/aztec/detector/Detector$b;

    add-int/lit8 v11, v27, 0x3

    move-object/from16 v27, v2

    add-int/lit8 v2, v26, 0x3

    invoke-direct {v10, v11, v2}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 513
    invoke-virtual {v0, v10, v5}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_4

    .line 519
    :cond_0
    invoke-virtual {v0, v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;)I

    move-result v5

    if-eq v5, v2, :cond_1

    goto :goto_4

    .line 525
    :cond_1
    invoke-virtual {v0, v6, v8}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;)I

    move-result v5

    if-eq v5, v2, :cond_2

    goto :goto_4

    .line 531
    :cond_2
    invoke-virtual {v0, v8, v10}, Lcom/google/zxing/aztec/detector/Detector;->a(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;)I

    move-result v5

    if-ne v5, v2, :cond_5

    goto :goto_3

    :cond_3
    move-object/from16 v27, v2

    move-object/from16 v28, v11

    const/16 v23, 0x2

    const/16 v24, 0x1

    :goto_3
    xor-int/lit8 v14, v14, 0x1

    .line 263
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    move-object v1, v15

    move-object/from16 v9, v27

    move-object/from16 v11, v28

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/16 v12, 0xf

    goto/16 :goto_2

    :cond_4
    const/16 v21, 0x9

    const/16 v23, 0x2

    const/16 v24, 0x1

    .line 288
    :cond_5
    :goto_4
    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    const/4 v5, 0x5

    if-eq v2, v5, :cond_7

    const/4 v6, 0x7

    if-ne v2, v6, :cond_6

    goto :goto_5

    .line 289
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_7
    :goto_5
    if-ne v2, v5, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    .line 292
    :goto_6
    iput-boolean v6, v0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x3

    int-to-float v2, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    div-float/2addr v6, v2

    .line 296
    iget v2, v9, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    sub-int v8, v4, v2

    .line 297
    iget v9, v9, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    sub-int v10, v3, v9

    int-to-float v2, v2

    int-to-float v8, v8

    mul-float v8, v8, v6

    sub-float/2addr v2, v8

    .line 298
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    int-to-float v9, v9

    int-to-float v10, v10

    mul-float v10, v10, v6

    sub-float/2addr v9, v10

    .line 299
    invoke-static {v9}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    int-to-float v4, v4

    add-float/2addr v4, v8

    .line 300
    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    int-to-float v3, v3

    add-float/2addr v3, v10

    .line 301
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    .line 303
    iget v8, v1, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    sub-int v10, v8, v7

    .line 304
    iget v1, v1, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    sub-int v11, v1, v12

    int-to-float v7, v7

    int-to-float v10, v10

    mul-float v10, v10, v6

    sub-float/2addr v7, v10

    .line 306
    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    int-to-float v12, v12

    int-to-float v11, v11

    mul-float v6, v6, v11

    sub-float/2addr v12, v6

    .line 307
    invoke-static {v12}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    int-to-float v8, v8

    add-float/2addr v8, v10

    .line 308
    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    int-to-float v1, v1

    add-float/2addr v1, v6

    .line 309
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 311
    invoke-virtual {v0, v4, v3}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v0, v8, v1}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v0, v2, v9}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v0, v7, v11}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 316
    new-instance v6, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v6, v4, v3}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 317
    new-instance v3, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v3, v8, v1}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 318
    new-instance v1, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v1, v2, v9}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    .line 319
    new-instance v2, Lcom/google/zxing/aztec/detector/Detector$b;

    invoke-direct {v2, v7, v11}, Lcom/google/zxing/aztec/detector/Detector$b;-><init>(II)V

    const/4 v4, 0x4

    .line 321
    new-array v7, v4, [Lcom/google/zxing/aztec/detector/Detector$b;

    aput-object v6, v7, v19

    aput-object v3, v7, v24

    aput-object v1, v7, v23

    aput-object v2, v7, v18

    .line 86
    aget-object v1, v7, v19

    aget-object v2, v7, v24

    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/aztec/detector/Detector;->d(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;I)[Z

    move-result-object v1

    .line 87
    aget-object v2, v7, v24

    aget-object v3, v7, v23

    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/zxing/aztec/detector/Detector;->d(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;I)[Z

    move-result-object v2

    .line 88
    aget-object v3, v7, v23

    aget-object v4, v7, v18

    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/zxing/aztec/detector/Detector;->d(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;I)[Z

    move-result-object v3

    .line 89
    aget-object v4, v7, v18

    aget-object v6, v7, v19

    iget v8, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v4, v6, v8}, Lcom/google/zxing/aztec/detector/Detector;->d(Lcom/google/zxing/aztec/detector/Detector$b;Lcom/google/zxing/aztec/detector/Detector$b;I)[Z

    move-result-object v4

    .line 92
    aget-boolean v6, v1, v19

    if-eqz v6, :cond_9

    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v6, v6, 0x2

    aget-boolean v6, v1, v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    .line 93
    iput v6, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    .line 94
    aget-boolean v8, v2, v6

    if-eqz v8, :cond_a

    iget v8, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v8, v8, 0x2

    aget-boolean v8, v2, v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    .line 95
    iput v8, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    goto :goto_7

    .line 96
    :cond_a
    aget-boolean v8, v3, v6

    if-eqz v8, :cond_b

    iget v8, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v8, v8, 0x2

    aget-boolean v8, v3, v8

    if-eqz v8, :cond_b

    const/4 v8, 0x2

    .line 97
    iput v8, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    goto :goto_7

    :cond_b
    const/4 v8, 0x2

    .line 98
    aget-boolean v9, v4, v6

    if-eqz v9, :cond_27

    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    mul-int/lit8 v6, v6, 0x2

    aget-boolean v6, v4, v6

    if-eqz v6, :cond_27

    const/4 v6, 0x3

    .line 99
    iput v6, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    .line 111
    :goto_7
    iget-boolean v6, v0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    const/16 v8, 0xb

    if-eqz v6, :cond_e

    const/16 v6, 0x1c

    .line 112
    new-array v9, v6, [Z

    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x7

    if-ge v10, v11, :cond_c

    const/16 v23, 0x2

    add-int/lit8 v12, v10, 0x2

    .line 114
    aget-boolean v13, v1, v12

    aput-boolean v13, v9, v10

    add-int/lit8 v13, v10, 0x7

    .line 115
    aget-boolean v11, v2, v12

    aput-boolean v11, v9, v13

    add-int/lit8 v11, v10, 0xe

    .line 116
    aget-boolean v13, v3, v12

    aput-boolean v13, v9, v11

    add-int/lit8 v11, v10, 0x15

    .line 117
    aget-boolean v12, v4, v12

    aput-boolean v12, v9, v11

    const/16 v24, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_c
    const/16 v24, 0x1

    .line 120
    new-array v1, v6, [Z

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v6, :cond_d

    .line 122
    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    const/16 v25, 0x7

    mul-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v2

    rem-int/2addr v3, v6

    aget-boolean v3, v9, v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v24, 0x1

    goto :goto_9

    :cond_d
    const/16 v25, 0x7

    goto :goto_c

    :cond_e
    const/16 v25, 0x7

    const/16 v6, 0x28

    .line 125
    new-array v9, v6, [Z

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v8, :cond_11

    if-ge v10, v5, :cond_f

    const/16 v23, 0x2

    add-int/lit8 v11, v10, 0x2

    .line 128
    aget-boolean v12, v1, v11

    aput-boolean v12, v9, v10

    add-int/lit8 v12, v10, 0xa

    .line 129
    aget-boolean v13, v2, v11

    aput-boolean v13, v9, v12

    add-int/lit8 v12, v10, 0x14

    .line 130
    aget-boolean v13, v3, v11

    aput-boolean v13, v9, v12

    add-int/lit8 v12, v10, 0x1e

    .line 131
    aget-boolean v11, v4, v11

    aput-boolean v11, v9, v12

    :cond_f
    const/16 v24, 0x1

    if-le v10, v5, :cond_10

    add-int/lit8 v11, v10, -0x1

    const/16 v23, 0x2

    add-int/lit8 v12, v10, 0x2

    .line 134
    aget-boolean v13, v1, v12

    aput-boolean v13, v9, v11

    add-int/lit8 v11, v10, 0x9

    .line 135
    aget-boolean v13, v2, v12

    aput-boolean v13, v9, v11

    add-int/lit8 v11, v10, 0x13

    .line 136
    aget-boolean v13, v3, v12

    aput-boolean v13, v9, v11

    add-int/lit8 v11, v10, 0x1d

    .line 137
    aget-boolean v12, v4, v12

    aput-boolean v12, v9, v11

    const/16 v24, 0x1

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_11
    const/16 v24, 0x1

    .line 141
    new-array v1, v6, [Z

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v6, :cond_12

    .line 143
    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    rem-int/2addr v3, v6

    aget-boolean v3, v9, v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v24, 0x1

    goto :goto_b

    .line 148
    :cond_12
    :goto_c
    iget-boolean v2, v0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x7

    const/4 v3, 0x2

    goto :goto_d

    :cond_13
    const/16 v2, 0xa

    const/4 v3, 0x4

    :goto_d
    sub-int v4, v2, v3

    .line 217
    new-array v6, v2, [I

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v2, :cond_16

    const/4 v10, 0x1

    const/4 v11, 0x1

    :goto_f
    const/4 v12, 0x4

    if-gt v10, v12, :cond_15

    mul-int v13, v12, v9

    add-int/2addr v13, v12

    sub-int/2addr v13, v10

    .line 223
    aget-boolean v12, v1, v13

    if-eqz v12, :cond_14

    .line 224
    aget v12, v6, v9

    add-int/2addr v12, v11

    aput v12, v6, v9

    :cond_14
    const/16 v24, 0x1

    shl-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_15
    const/16 v24, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 231
    :cond_16
    :try_start_2
    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v9, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v2, v9}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 232
    invoke-virtual {v2, v6, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_2
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v3, :cond_19

    const/4 v4, 0x1

    const/4 v9, 0x1

    :goto_11
    const/4 v12, 0x4

    if-gt v4, v12, :cond_18

    mul-int/lit8 v10, v2, 0x4

    add-int/2addr v10, v12

    sub-int/2addr v10, v4

    .line 240
    aget v11, v6, v2

    and-int/2addr v11, v9

    if-ne v11, v9, :cond_17

    const/4 v11, 0x1

    goto :goto_12

    :cond_17
    const/4 v11, 0x0

    :goto_12
    aput-boolean v11, v1, v10

    const/16 v24, 0x1

    shl-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_18
    const/16 v24, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    const/16 v24, 0x1

    .line 441
    iget-boolean v2, v0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    if-eqz v2, :cond_1a

    const/4 v2, 0x6

    const/4 v5, 0x2

    goto :goto_13

    :cond_1a
    const/16 v2, 0xb

    :goto_13
    const/4 v3, 0x0

    :goto_14
    if-ge v3, v5, :cond_1c

    .line 450
    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    shl-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    .line 451
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_1b

    add-int/lit8 v4, v4, 0x1

    .line 452
    iput v4, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_1c
    move v3, v5

    :goto_15
    add-int v4, v5, v2

    if-ge v3, v4, :cond_1e

    .line 457
    iget v4, v0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    shl-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    .line 458
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_1d

    add-int/lit8 v4, v4, 0x1

    .line 459
    iput v4, v0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 463
    :cond_1e
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    .line 464
    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    const/16 v23, 0x2

    mul-int/lit8 v6, v2, 0x2

    const/4 v12, 0x4

    if-le v2, v12, :cond_1f

    const/4 v2, 0x1

    goto :goto_16

    :cond_1f
    const/4 v2, 0x0

    :goto_16
    add-int/2addr v6, v2

    add-int/lit8 v1, v1, -0x3

    .line 164
    div-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    div-float/2addr v1, v2

    const/16 v19, 0x0

    .line 167
    aget-object v2, v7, v19

    iget v3, v2, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    const/16 v23, 0x2

    aget-object v4, v7, v23

    iget v5, v4, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_20

    const/4 v6, 0x1

    goto :goto_17

    :cond_20
    const/4 v6, -0x1

    :goto_17
    add-int/2addr v3, v6

    .line 169
    iget v2, v2, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    iget v4, v4, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    sub-int/2addr v2, v4

    if-lez v2, :cond_21

    const/4 v4, 0x1

    goto :goto_18

    :cond_21
    const/4 v4, -0x1

    :goto_18
    add-int/2addr v2, v4

    int-to-float v4, v5

    int-to-float v3, v3

    mul-float v3, v3, v1

    sub-float/2addr v4, v3

    .line 172
    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    const/16 v23, 0x2

    .line 173
    aget-object v5, v7, v23

    iget v5, v5, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    int-to-float v5, v5

    int-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v5, v2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    const/16 v19, 0x0

    .line 175
    aget-object v6, v7, v19

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    .line 176
    aget-object v6, v7, v19

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    invoke-static {v6}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    const/16 v24, 0x1

    .line 178
    aget-object v6, v7, v24

    iget v9, v6, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    const/16 v18, 0x3

    aget-object v10, v7, v18

    iget v11, v10, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    sub-int/2addr v9, v11

    if-lez v9, :cond_22

    const/4 v12, 0x1

    goto :goto_19

    :cond_22
    const/4 v12, -0x1

    :goto_19
    add-int/2addr v9, v12

    .line 180
    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    sub-int/2addr v6, v10

    if-lez v6, :cond_23

    const/4 v10, 0x1

    goto :goto_1a

    :cond_23
    const/4 v10, -0x1

    :goto_1a
    add-int/2addr v6, v10

    int-to-float v10, v11

    int-to-float v9, v9

    mul-float v9, v9, v1

    sub-float/2addr v10, v9

    .line 183
    invoke-static {v10}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v10

    const/16 v18, 0x3

    .line 184
    aget-object v11, v7, v18

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    int-to-float v11, v11

    int-to-float v6, v6

    mul-float v1, v1, v6

    sub-float/2addr v11, v1

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v6

    const/16 v24, 0x1

    .line 185
    aget-object v11, v7, v24

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$b;->a:I

    int-to-float v11, v11

    add-float/2addr v11, v9

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v9

    .line 186
    aget-object v7, v7, v24

    iget v7, v7, Lcom/google/zxing/aztec/detector/Detector$b;->b:I

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    .line 188
    invoke-virtual {v0, v3, v2}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v0, v9, v1}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v0, v4, v5}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v0, v10, v6}, Lcom/google/zxing/aztec/detector/Detector;->c(II)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 192
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-direct {v7, v3, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v2, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v9

    int-to-float v1, v1

    invoke-direct {v2, v3, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v1, Lcom/google/zxing/ResultPoint;

    int-to-float v3, v4

    int-to-float v4, v5

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float v4, v10

    int-to-float v5, v6

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v12, 0x4

    new-array v4, v12, [Lcom/google/zxing/ResultPoint;

    const/16 v19, 0x0

    aput-object v7, v4, v19

    const/16 v24, 0x1

    aput-object v2, v4, v24

    const/16 v23, 0x2

    aput-object v1, v4, v23

    const/16 v18, 0x3

    aput-object v3, v4, v18

    .line 71
    iget v1, v0, Lcom/google/zxing/aztec/detector/Detector;->f:I

    rem-int/lit8 v2, v1, 0x4

    aget-object v2, v4, v2

    add-int/lit8 v7, v1, 0x3

    rem-int/2addr v7, v12

    aget-object v3, v4, v7

    add-int/lit8 v6, v1, 0x2

    rem-int/2addr v6, v12

    aget-object v5, v4, v6

    const/16 v24, 0x1

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v12

    aget-object v1, v4, v1

    .line 400
    iget-boolean v6, v0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    if-eqz v6, :cond_24

    .line 401
    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, v8

    :goto_1b
    move v9, v6

    goto :goto_1d

    .line 403
    :cond_24
    iget v6, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    if-gt v6, v12, :cond_25

    mul-int/lit8 v6, v6, 0x4

    :goto_1c
    add-int/lit8 v6, v6, 0xf

    goto :goto_1b

    :cond_25
    mul-int/lit8 v7, v6, 0x4

    sub-int/2addr v6, v12

    .line 406
    div-int/lit8 v6, v6, 0x8

    const/16 v24, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v23, 0x2

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    goto :goto_1c

    .line 410
    :goto_1d
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v7

    int-to-float v6, v9

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float v13, v6, v8

    .line 412
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v22

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v25

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v26

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    iget-object v8, v0, Lcom/google/zxing/aztec/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    move v10, v9

    move v15, v13

    move/from16 v16, v13

    move/from16 v18, v13

    invoke-virtual/range {v7 .. v26}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v26

    .line 73
    new-instance v25, Lcom/google/zxing/aztec/AztecDetectorResult;

    iget-boolean v1, v0, Lcom/google/zxing/aztec/detector/Detector;->b:Z

    iget v2, v0, Lcom/google/zxing/aztec/detector/Detector;->d:I

    iget v3, v0, Lcom/google/zxing/aztec/detector/Detector;->c:I

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v3

    move-object/from16 v27, v4

    invoke-direct/range {v25 .. v30}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    return-object v25

    .line 189
    :cond_26
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 234
    :catch_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 101
    :cond_27
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 313
    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
