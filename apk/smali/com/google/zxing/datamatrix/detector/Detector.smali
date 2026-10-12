.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$c;,
        Lcom/google/zxing/datamatrix/detector/Detector$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public final b:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    .line 48
    new-instance v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/detector/Detector;->b:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    return-void
.end method

.method public static a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result p0

    invoke-static {p0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/util/HashMap;Lcom/google/zxing/ResultPoint;)V
    .locals 2

    .line 317
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 21

    .line 329
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v1

    move/from16 v3, p5

    int-to-float v0, v3

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v7, v0, v2

    move/from16 v4, p6

    int-to-float v0, v4

    sub-float v10, v0, v2

    .line 331
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual/range {p4 .. p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    invoke-virtual/range {p3 .. p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    move v9, v7

    move v12, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/zxing/ResultPoint;)Z
    .locals 4

    .line 306
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 59
    iget-object v1, v0, Lcom/google/zxing/datamatrix/detector/Detector;->b:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    invoke-virtual {v1}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    aget-object v3, v1, v2

    const/4 v4, 0x1

    .line 61
    aget-object v5, v1, v4

    const/4 v6, 0x2

    .line 62
    aget-object v7, v1, v6

    const/4 v8, 0x3

    .line 63
    aget-object v1, v1, v8

    .line 68
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-virtual {v0, v3, v5}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0, v3, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v0, v5, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v0, v7, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v11, Lcom/google/zxing/datamatrix/detector/Detector$c;

    invoke-direct {v11, v2}, Lcom/google/zxing/datamatrix/detector/Detector$c;-><init>(I)V

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/datamatrix/detector/Detector$b;

    .line 78
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/datamatrix/detector/Detector$b;

    .line 82
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 412
    iget-object v13, v11, Lcom/google/zxing/datamatrix/detector/Detector$b;->a:Lcom/google/zxing/ResultPoint;

    .line 83
    invoke-static {v12, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->b(Ljava/util/HashMap;Lcom/google/zxing/ResultPoint;)V

    .line 84
    iget-object v11, v11, Lcom/google/zxing/datamatrix/detector/Detector$b;->b:Lcom/google/zxing/ResultPoint;

    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->b(Ljava/util/HashMap;Lcom/google/zxing/ResultPoint;)V

    .line 412
    iget-object v11, v9, Lcom/google/zxing/datamatrix/detector/Detector$b;->a:Lcom/google/zxing/ResultPoint;

    .line 85
    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/detector/Detector;->b(Ljava/util/HashMap;Lcom/google/zxing/ResultPoint;)V

    .line 86
    iget-object v9, v9, Lcom/google/zxing/datamatrix/detector/Detector$b;->b:Lcom/google/zxing/ResultPoint;

    invoke-static {v12, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->b(Ljava/util/HashMap;Lcom/google/zxing/ResultPoint;)V

    .line 91
    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v11, 0x0

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 92
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/google/zxing/ResultPoint;

    .line 93
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    const/16 v18, 0x0

    .line 94
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    move-object/from16 v14, v17

    goto :goto_1

    :cond_0
    if-nez v13, :cond_1

    move-object/from16 v13, v17

    goto :goto_1

    :cond_1
    move-object/from16 v15, v17

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    if-eqz v13, :cond_17

    if-eqz v14, :cond_17

    if-eqz v15, :cond_17

    .line 111
    new-array v2, v8, [Lcom/google/zxing/ResultPoint;

    aput-object v13, v2, v18

    aput-object v14, v2, v4

    aput-object v15, v2, v6

    .line 113
    invoke-static {v2}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 116
    aget-object v9, v2, v18

    .line 117
    aget-object v13, v2, v4

    .line 118
    aget-object v2, v2, v6

    .line 122
    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {v12, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v5

    goto :goto_2

    .line 126
    :cond_4
    invoke-virtual {v12, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v7

    goto :goto_2

    :cond_5
    move-object v3, v1

    .line 141
    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v1

    .line 142
    invoke-virtual {v0, v9, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v5

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_6

    add-int/2addr v1, v4

    :cond_6
    add-int/2addr v1, v6

    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_7

    add-int/2addr v5, v4

    :cond_7
    add-int/2addr v5, v6

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v12, v5, 0x7

    if-ge v7, v12, :cond_8

    mul-int/lit8 v7, v5, 0x4

    mul-int/lit8 v12, v1, 0x7

    if-lt v7, v12, :cond_9

    :cond_8
    move-object v7, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v13

    goto/16 :goto_7

    .line 189
    :cond_9
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 273
    invoke-static {v13, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v1, v1

    div-float/2addr v5, v1

    .line 274
    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v7

    .line 275
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v12, v14

    int-to-float v7, v7

    div-float/2addr v12, v7

    .line 276
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v7

    .line 278
    new-instance v7, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    mul-float v12, v12, v5

    add-float/2addr v12, v15

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    mul-float v5, v5, v14

    add-float/2addr v5, v15

    invoke-direct {v7, v12, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 280
    invoke-static {v13, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    .line 281
    invoke-static {v9, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v1

    .line 282
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    sub-float/2addr v12, v14

    int-to-float v1, v1

    div-float/2addr v12, v1

    .line 283
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    div-float/2addr v14, v1

    .line 285
    new-instance v1, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    mul-float v12, v12, v5

    add-float/2addr v12, v15

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    mul-float v5, v5, v14

    add-float/2addr v5, v15

    invoke-direct {v1, v12, v5}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 287
    invoke-virtual {v0, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->c(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->c(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_4

    .line 293
    :cond_a
    invoke-virtual {v0, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->c(Lcom/google/zxing/ResultPoint;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_3

    .line 297
    :cond_b
    invoke-virtual {v0, v2, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v5

    invoke-virtual {v0, v9, v7}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 299
    invoke-virtual {v0, v2, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v11

    invoke-virtual {v0, v9, v1}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v5, v11, :cond_c

    :goto_3
    move-object v11, v7

    goto :goto_5

    :cond_c
    :goto_4
    move-object v11, v1

    :cond_d
    :goto_5
    if-nez v11, :cond_e

    goto :goto_6

    :cond_e
    move-object v3, v11

    .line 197
    :goto_6
    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v1

    invoke-virtual {v0, v9, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    and-int/lit8 v7, v5, 0x1

    if-ne v7, v4, :cond_f

    add-int/lit8 v5, v1, 0x2

    :cond_f
    move/from16 v24, v5

    .line 204
    iget-object v1, v0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    move/from16 v25, v24

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v23, v3

    move-object/from16 v22, v9

    move-object/from16 v21, v13

    invoke-static/range {v19 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector;->d(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    goto/16 :goto_c

    .line 227
    :goto_7
    invoke-static {v7, v2}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v1

    div-float/2addr v12, v13

    .line 228
    invoke-static {v9, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v13

    .line 229
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    int-to-float v13, v13

    div-float/2addr v14, v13

    .line 230
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    sub-float v15, v15, v16

    div-float/2addr v15, v13

    .line 232
    new-instance v13, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    mul-float v14, v14, v12

    add-float v14, v14, v16

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    mul-float v12, v12, v15

    add-float v12, v12, v16

    invoke-direct {v13, v14, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 234
    invoke-static {v7, v9}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v12

    int-to-float v12, v12

    int-to-float v14, v5

    div-float/2addr v12, v14

    .line 235
    invoke-static {v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    .line 236
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    sub-float v15, v15, v16

    int-to-float v14, v14

    div-float/2addr v15, v14

    .line 237
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    sub-float v16, v16, v17

    div-float v16, v16, v14

    .line 239
    new-instance v14, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    mul-float v15, v15, v12

    add-float v15, v15, v17

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    mul-float v12, v12, v16

    add-float v12, v12, v17

    invoke-direct {v14, v15, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 241
    invoke-virtual {v0, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->c(Lcom/google/zxing/ResultPoint;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 242
    invoke-virtual {v0, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->c(Lcom/google/zxing/ResultPoint;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_9

    .line 247
    :cond_10
    invoke-virtual {v0, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->c(Lcom/google/zxing/ResultPoint;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_8

    .line 251
    :cond_11
    invoke-virtual {v0, v9, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v11

    sub-int v11, v1, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v0, v2, v13}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v12

    sub-int v12, v5, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v12, v11

    .line 253
    invoke-virtual {v0, v9, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v11

    sub-int/2addr v1, v11

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v2, v14}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v5, v1

    if-gt v12, v5, :cond_12

    :goto_8
    move-object v11, v13

    goto :goto_a

    :cond_12
    :goto_9
    move-object v11, v14

    :cond_13
    :goto_a
    if-nez v11, :cond_14

    goto :goto_b

    :cond_14
    move-object v3, v11

    .line 171
    :goto_b
    invoke-virtual {v0, v9, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v1

    .line 172
    invoke-virtual {v0, v2, v3}, Lcom/google/zxing/datamatrix/detector/Detector;->e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/datamatrix/detector/Detector$b;->getTransitions()I

    move-result v5

    and-int/lit8 v11, v1, 0x1

    if-ne v11, v4, :cond_15

    add-int/2addr v1, v4

    :cond_15
    move/from16 v24, v1

    and-int/lit8 v1, v5, 0x1

    if-ne v1, v4, :cond_16

    add-int/2addr v5, v4

    :cond_16
    move/from16 v25, v5

    .line 184
    iget-object v1, v0, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v19, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v21, v7

    move-object/from16 v20, v9

    invoke-static/range {v19 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector;->d(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 213
    :goto_c
    new-instance v2, Lcom/google/zxing/common/DetectorResult;

    new-array v5, v10, [Lcom/google/zxing/ResultPoint;

    aput-object v20, v5, v18

    aput-object v21, v5, v4

    aput-object v22, v5, v6

    aput-object v3, v5, v8

    invoke-direct {v2, v1, v5}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v2

    .line 107
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method

.method public final e(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$b;
    .locals 17

    .line 357
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 359
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 360
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v4, v3, v1

    .line 361
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v5, v2, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    move/from16 v16, v1

    move v1, v0

    move/from16 v0, v16

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    :cond_1
    sub-int v5, v2, v0

    .line 371
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    sub-int v8, v3, v1

    .line 372
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    neg-int v9, v5

    shr-int/2addr v9, v7

    const/4 v10, -0x1

    if-ge v1, v3, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, -0x1

    :goto_1
    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, -0x1

    :goto_2
    if-eqz v4, :cond_4

    move v10, v1

    goto :goto_3

    :cond_4
    move v10, v0

    :goto_3
    if-eqz v4, :cond_5

    move v13, v0

    :goto_4
    move-object/from16 v12, p0

    goto :goto_5

    :cond_5
    move v13, v1

    goto :goto_4

    .line 377
    :goto_5
    iget-object v14, v12, Lcom/google/zxing/datamatrix/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v14, v10, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    :goto_6
    if-eq v0, v2, :cond_b

    if-eqz v4, :cond_6

    move v13, v1

    goto :goto_7

    :cond_6
    move v13, v0

    :goto_7
    if-eqz v4, :cond_7

    move v15, v0

    goto :goto_8

    :cond_7
    move v15, v1

    .line 379
    :goto_8
    invoke-virtual {v14, v13, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v13, v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    move v10, v13

    :cond_8
    add-int/2addr v9, v8

    if-lez v9, :cond_a

    if-ne v1, v3, :cond_9

    goto :goto_9

    :cond_9
    add-int/2addr v1, v11

    sub-int/2addr v9, v5

    :cond_a
    add-int/2addr v0, v7

    goto :goto_6

    .line 393
    :cond_b
    :goto_9
    new-instance v0, Lcom/google/zxing/datamatrix/detector/Detector$b;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lcom/google/zxing/datamatrix/detector/Detector$b;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    return-object v0
.end method
