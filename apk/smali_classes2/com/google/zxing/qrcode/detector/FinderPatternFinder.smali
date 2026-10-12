.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$b;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$c;
    }
.end annotation


# static fields
.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public final b:Ljava/util/ArrayList;

.field public c:Z

.field public final d:[I

.field public final e:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/ArrayList;

    const/4 p1, 0x5

    .line 65
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    .line 66
    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method public static a(I[I)F
    .locals 1

    const/4 v0, 0x4

    .line 191
    aget v0, p1, v0

    sub-int/2addr p0, v0

    const/4 v0, 0x3

    aget v0, p1, v0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    const/4 v0, 0x2

    aget p1, p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    return p0
.end method

.method public static foundPatternCross([I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 202
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    shl-int/lit8 v2, v2, 0x8

    .line 211
    div-int/2addr v2, v1

    .line 212
    div-int/lit8 v1, v2, 0x2

    .line 214
    aget v3, p0, v0

    shl-int/lit8 v3, v3, 0x8

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_3

    const/4 v3, 0x1

    aget v4, p0, v3

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_3

    mul-int/lit8 v4, v2, 0x3

    const/4 v5, 0x2

    aget v5, p0, v5

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v1, 0x3

    if-ge v4, v5, :cond_3

    const/4 v4, 0x3

    aget v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_3

    const/4 v4, 0x4

    aget p0, p0, v4

    shl-int/lit8 p0, p0, 0x8

    sub-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_3

    return v3

    :cond_3
    return v0
.end method


# virtual methods
.method public final b()Z
    .locals 10

    .line 465
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 466
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 48
    iget v8, v7, Lcom/google/zxing/qrcode/detector/FinderPattern;->d:I

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 469
    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ge v5, v2, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v1, v1

    div-float v1, v6, v1

    .line 481
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 482
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v4, v2

    goto :goto_1

    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float v6, v6, v0

    cmpg-float v0, v4, v6

    if-gtz v0, :cond_4

    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_2
    return v3
.end method

.method public final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final handlePossibleCenter([III)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 394
    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget v6, v1, v5

    add-int/2addr v3, v6

    const/4 v6, 0x3

    aget v7, v1, v6

    add-int/2addr v3, v7

    const/4 v7, 0x4

    aget v8, v1, v7

    add-int/2addr v3, v8

    move/from16 v8, p3

    .line 396
    invoke-static {v8, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a(I[I)F

    move-result v8

    float-to-int v8, v8

    .line 397
    aget v9, v1, v5

    .line 245
    iget-object v10, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    .line 222
    iget-object v12, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    aput v2, v12, v2

    .line 223
    aput v2, v12, v4

    .line 224
    aput v2, v12, v5

    .line 225
    aput v2, v12, v6

    .line 226
    aput v2, v12, v7

    move/from16 v13, p2

    :goto_0
    if-ltz v13, :cond_0

    .line 250
    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 251
    aget v14, v12, v5

    add-int/2addr v14, v4

    aput v14, v12, v5

    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_0
    const/high16 v14, 0x7fc00000    # Float.NaN

    if-gez v13, :cond_2

    :cond_1
    :goto_1
    const/high16 v9, 0x7fc00000    # Float.NaN

    goto/16 :goto_7

    :cond_2
    :goto_2
    if-ltz v13, :cond_3

    .line 257
    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-nez v15, :cond_3

    aget v15, v12, v4

    if-gt v15, v9, :cond_3

    add-int/lit8 v15, v15, 0x1

    .line 258
    aput v15, v12, v4

    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_3
    if-ltz v13, :cond_1

    .line 262
    aget v15, v12, v4

    if-le v15, v9, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    if-ltz v13, :cond_5

    .line 265
    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_5

    aget v15, v12, v2

    if-gt v15, v9, :cond_5

    add-int/lit8 v15, v15, 0x1

    .line 266
    aput v15, v12, v2

    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 269
    :cond_5
    aget v13, v12, v2

    if-le v13, v9, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v13, p2, 0x1

    :goto_4
    if-ge v13, v11, :cond_7

    .line 275
    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 276
    aget v15, v12, v5

    add-int/2addr v15, v4

    aput v15, v12, v5

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    if-ne v13, v11, :cond_8

    goto :goto_1

    :cond_8
    :goto_5
    if-ge v13, v11, :cond_9

    .line 282
    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-nez v15, :cond_9

    aget v15, v12, v6

    if-ge v15, v9, :cond_9

    add-int/lit8 v15, v15, 0x1

    .line 283
    aput v15, v12, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    if-eq v13, v11, :cond_1

    .line 286
    aget v15, v12, v6

    if-lt v15, v9, :cond_a

    goto :goto_1

    :cond_a
    :goto_6
    if-ge v13, v11, :cond_b

    .line 289
    invoke-virtual {v10, v8, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v15

    if-eqz v15, :cond_b

    aget v15, v12, v7

    if-ge v15, v9, :cond_b

    add-int/lit8 v15, v15, 0x1

    .line 290
    aput v15, v12, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 293
    :cond_b
    aget v11, v12, v7

    if-lt v11, v9, :cond_c

    goto :goto_1

    .line 299
    :cond_c
    aget v9, v12, v2

    aget v15, v12, v4

    add-int/2addr v9, v15

    aget v15, v12, v5

    add-int/2addr v9, v15

    aget v15, v12, v6

    add-int/2addr v9, v15

    add-int/2addr v9, v11

    sub-int/2addr v9, v3

    .line 301
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v11, v3, 0x2

    if-lt v9, v11, :cond_d

    goto/16 :goto_1

    .line 305
    :cond_d
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static {v13, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a(I[I)F

    move-result v9

    .line 398
    :goto_7
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_21

    float-to-int v11, v9

    .line 400
    aget v1, v1, v5

    .line 317
    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v13

    .line 222
    aput v2, v12, v2

    .line 223
    aput v2, v12, v4

    .line 224
    aput v2, v12, v5

    .line 225
    aput v2, v12, v6

    .line 226
    aput v2, v12, v7

    move v15, v8

    :goto_8
    if-ltz v15, :cond_e

    .line 321
    invoke-virtual {v10, v15, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 322
    aget v16, v12, v5

    add-int/lit8 v16, v16, 0x1

    aput v16, v12, v5

    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    :cond_e
    if-gez v15, :cond_f

    const/16 v16, 0x0

    goto/16 :goto_e

    :cond_f
    :goto_9
    if-ltz v15, :cond_10

    .line 328
    invoke-virtual {v10, v15, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v16

    if-nez v16, :cond_10

    const/16 v16, 0x0

    aget v2, v12, v4

    if-gt v2, v1, :cond_11

    add-int/lit8 v2, v2, 0x1

    .line 329
    aput v2, v12, v4

    add-int/lit8 v15, v15, -0x1

    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    const/16 v16, 0x0

    :cond_11
    if-ltz v15, :cond_1c

    .line 332
    aget v2, v12, v4

    if-le v2, v1, :cond_12

    goto/16 :goto_e

    :cond_12
    :goto_a
    if-ltz v15, :cond_13

    .line 335
    invoke-virtual {v10, v15, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_13

    aget v2, v12, v16

    if-gt v2, v1, :cond_13

    add-int/lit8 v2, v2, 0x1

    .line 336
    aput v2, v12, v16

    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    .line 339
    :cond_13
    aget v2, v12, v16

    if-le v2, v1, :cond_14

    goto/16 :goto_e

    :cond_14
    add-int/2addr v8, v4

    :goto_b
    if-ge v8, v13, :cond_15

    .line 344
    invoke-virtual {v10, v8, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 345
    aget v2, v12, v5

    add-int/2addr v2, v4

    aput v2, v12, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_15
    if-ne v8, v13, :cond_16

    goto :goto_e

    :cond_16
    :goto_c
    if-ge v8, v13, :cond_17

    .line 351
    invoke-virtual {v10, v8, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-nez v2, :cond_17

    aget v2, v12, v6

    if-ge v2, v1, :cond_17

    add-int/lit8 v2, v2, 0x1

    .line 352
    aput v2, v12, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_17
    if-eq v8, v13, :cond_1c

    .line 355
    aget v2, v12, v6

    if-lt v2, v1, :cond_18

    goto :goto_e

    :cond_18
    :goto_d
    if-ge v8, v13, :cond_19

    .line 358
    invoke-virtual {v10, v8, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_19

    aget v2, v12, v7

    if-ge v2, v1, :cond_19

    add-int/lit8 v2, v2, 0x1

    .line 359
    aput v2, v12, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 362
    :cond_19
    aget v2, v12, v7

    if-lt v2, v1, :cond_1a

    goto :goto_e

    .line 368
    :cond_1a
    aget v1, v12, v16

    aget v7, v12, v4

    add-int/2addr v1, v7

    aget v5, v12, v5

    add-int/2addr v1, v5

    aget v5, v12, v6

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    .line 370
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    if-lt v1, v3, :cond_1b

    goto :goto_e

    .line 374
    :cond_1b
    invoke-static {v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {v8, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a(I[I)F

    move-result v14

    .line 401
    :cond_1c
    :goto_e
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_22

    int-to-float v1, v3

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 404
    :goto_f
    iget-object v3, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1f

    .line 405
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 60
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    sub-float v6, v9, v6

    .line 60
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_1e

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    sub-float v6, v14, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_1e

    .line 61
    iget v6, v5, Lcom/google/zxing/qrcode/detector/FinderPattern;->c:F

    sub-float v7, v1, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v7, v8

    if-lez v8, :cond_1d

    cmpg-float v7, v7, v6

    if-gtz v7, :cond_1e

    .line 73
    :cond_1d
    iget v7, v5, Lcom/google/zxing/qrcode/detector/FinderPattern;->d:I

    add-int/lit8 v8, v7, 0x1

    int-to-float v7, v7

    .line 74
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    mul-float v10, v10, v7

    add-float/2addr v10, v14

    int-to-float v11, v8

    div-float/2addr v10, v11

    .line 75
    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    mul-float v5, v5, v7

    add-float/2addr v5, v9

    div-float/2addr v5, v11

    mul-float v7, v7, v6

    add-float/2addr v7, v1

    div-float/2addr v7, v11

    .line 77
    new-instance v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v1, v10, v5, v7, v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    .line 408
    invoke-virtual {v3, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 414
    :cond_1f
    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 34
    invoke-direct {v2, v14, v9, v1, v4}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    .line 415
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v1, v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    if-eqz v1, :cond_20

    .line 417
    invoke-interface {v1, v2}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_20
    return v4

    :cond_21
    const/16 v16, 0x0

    :cond_22
    return v16
.end method
