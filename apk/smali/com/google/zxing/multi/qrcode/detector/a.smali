.class final Lcom/google/zxing/multi/qrcode/detector/a;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/a$b;
    }
.end annotation


# static fields
.field public static final f:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/a;->f:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 232
    sget-object v6, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 233
    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    .line 234
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 235
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    int-to-float v9, v7

    const/high16 v10, 0x43640000    # 228.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    mul-float v9, v9, v10

    float-to-int v9, v9

    if-lt v9, v2, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v9, 0x3

    :cond_2
    const/4 v1, 0x5

    .line 248
    new-array v1, v1, [I

    add-int/lit8 v10, v9, -0x1

    :goto_1
    if-ge v10, v7, :cond_c

    .line 251
    aput v4, v1, v4

    .line 252
    aput v4, v1, v5

    .line 253
    aput v4, v1, v3

    .line 254
    aput v4, v1, v2

    const/4 v11, 0x4

    .line 255
    aput v4, v1, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v8, :cond_a

    .line 258
    invoke-virtual {v6, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_4

    and-int/lit8 v14, v13, 0x1

    if-ne v14, v5, :cond_3

    add-int/2addr v13, v5

    .line 263
    :cond_3
    aget v14, v1, v13

    add-int/2addr v14, v5

    aput v14, v1, v13

    goto :goto_5

    :cond_4
    and-int/lit8 v14, v13, 0x1

    if-nez v14, :cond_9

    if-ne v13, v11, :cond_8

    .line 267
    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 268
    invoke-virtual {v0, v1, v10, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v13

    if-nez v13, :cond_6

    :goto_3
    add-int/lit8 v13, v12, 0x1

    if-ge v13, v8, :cond_6

    .line 272
    invoke-virtual {v6, v13, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    move v12, v13

    goto :goto_3

    .line 277
    :cond_6
    :goto_4
    aput v4, v1, v4

    .line 278
    aput v4, v1, v5

    .line 279
    aput v4, v1, v3

    .line 280
    aput v4, v1, v2

    .line 281
    aput v4, v1, v11

    const/4 v13, 0x0

    goto :goto_5

    .line 283
    :cond_7
    aget v13, v1, v3

    aput v13, v1, v4

    .line 284
    aget v13, v1, v2

    aput v13, v1, v5

    .line 285
    aget v13, v1, v11

    aput v13, v1, v3

    .line 286
    aput v5, v1, v2

    .line 287
    aput v4, v1, v11

    const/4 v13, 0x3

    goto :goto_5

    :cond_8
    add-int/2addr v13, v5

    .line 291
    aget v14, v1, v13

    add-int/2addr v14, v5

    aput v14, v1, v13

    goto :goto_5

    .line 294
    :cond_9
    aget v14, v1, v13

    add-int/2addr v14, v5

    aput v14, v1, v13

    :goto_5
    add-int/2addr v12, v5

    goto :goto_2

    .line 299
    :cond_a
    invoke-static {v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 300
    invoke-virtual {v0, v1, v10, v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    :cond_b
    add-int/2addr v10, v9

    goto :goto_1

    .line 107
    :cond_c
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v2, :cond_1d

    if-ne v6, v2, :cond_d

    .line 119
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    new-array v2, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v6, v2, v4

    aput-object v7, v2, v5

    aput-object v1, v2, v3

    new-array v1, v5, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v2, v1, v4

    const/16 v18, 0x0

    const/16 v19, 0x1

    goto/16 :goto_e

    .line 129
    :cond_d
    new-instance v7, Lcom/google/zxing/multi/qrcode/detector/a$b;

    invoke-direct {v7, v4}, Lcom/google/zxing/multi/qrcode/detector/a$b;-><init>(I)V

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_6
    add-int/lit8 v9, v6, -0x2

    if-ge v8, v9, :cond_19

    .line 149
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v9, :cond_f

    :cond_e
    :goto_7
    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    goto/16 :goto_d

    :cond_f
    add-int/lit8 v10, v8, 0x1

    :goto_8
    add-int/lit8 v11, v6, -0x1

    if-ge v10, v11, :cond_e

    .line 155
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v11, :cond_11

    :cond_10
    const/16 v17, 0x2

    const/16 v18, 0x0

    :goto_9
    const/16 v19, 0x1

    goto/16 :goto_c

    .line 161
    :cond_11
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v12

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    div-float/2addr v12, v13

    .line 163
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v13

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3d4ccccd    # 0.05f

    const/high16 v15, 0x3f000000    # 0.5f

    cmpl-float v13, v13, v15

    if-lez v13, :cond_12

    cmpl-float v12, v12, v14

    if-ltz v12, :cond_12

    goto :goto_7

    :cond_12
    add-int/lit8 v12, v10, 0x1

    :goto_a
    if-ge v12, v6, :cond_10

    .line 171
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    if-nez v13, :cond_13

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    goto/16 :goto_b

    .line 177
    :cond_13
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v16

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v17

    sub-float v16, v16, v17

    const/16 v17, 0x2

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    const/16 v18, 0x0

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v16, v16, v3

    .line 179
    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v3

    invoke-virtual {v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v15

    if-lez v3, :cond_14

    cmpl-float v3, v16, v14

    if-ltz v3, :cond_14

    goto :goto_9

    .line 186
    :cond_14
    new-array v3, v2, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v9, v3, v18

    aput-object v11, v3, v5

    aput-object v13, v3, v17

    .line 187
    invoke-static {v3}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v4, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    .line 191
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    .line 192
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    const/16 v19, 0x1

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    .line 193
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    invoke-virtual {v4}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    add-float v13, v2, v4

    .line 196
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    div-float v13, v13, v20

    const/high16 v20, 0x43340000    # 180.0f

    cmpl-float v20, v13, v20

    if-gtz v20, :cond_18

    const/high16 v20, 0x41100000    # 9.0f

    cmpg-float v13, v13, v20

    if-gez v13, :cond_15

    goto :goto_b

    :cond_15
    sub-float v13, v2, v4

    .line 203
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v20

    div-float v13, v13, v20

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v20, 0x3dcccccd    # 0.1f

    cmpl-float v13, v13, v20

    if-ltz v13, :cond_16

    goto :goto_b

    :cond_16
    mul-float v2, v2, v2

    mul-float v4, v4, v4

    add-float/2addr v4, v2

    float-to-double v14, v4

    .line 209
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v4, v13

    sub-float v13, v5, v4

    .line 211
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v20

    if-ltz v4, :cond_17

    goto :goto_b

    .line 218
    :cond_17
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_b
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v14, 0x3d4ccccd    # 0.05f

    const/high16 v15, 0x3f000000    # 0.5f

    goto/16 :goto_a

    :goto_c
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_8

    :goto_d
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_19
    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 223
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 224
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    .line 304
    :goto_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    array-length v3, v1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1a

    aget-object v5, v1, v4

    .line 306
    invoke-static {v5}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 307
    new-instance v6, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v6, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 310
    :cond_1a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 311
    sget-object v1, Lcom/google/zxing/multi/qrcode/detector/a;->f:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v1

    .line 313
    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-object v1

    .line 228
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 112
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
