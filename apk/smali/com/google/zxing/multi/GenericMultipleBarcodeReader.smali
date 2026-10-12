.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# instance fields
.field public final a:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a:Lcom/google/zxing/Reader;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/ArrayList;II)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v1, p0

    .line 78
    :try_start_0
    iget-object v2, v1, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a:Lcom/google/zxing/Reader;

    move-object/from16 v3, p2

    invoke-interface {v2, v0, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/Result;

    .line 84
    invoke-virtual {v7}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_4

    .line 143
    :cond_1
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    const/4 v7, 0x0

    if-nez v4, :cond_2

    move-object v4, v2

    :goto_0
    move-object/from16 v8, p3

    goto :goto_2

    .line 147
    :cond_2
    array-length v8, v4

    new-array v8, v8, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    .line 148
    :goto_1
    array-length v10, v4

    if-ge v9, v10, :cond_3

    .line 149
    aget-object v10, v4, v9

    .line 150
    new-instance v11, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    int-to-float v13, v5

    add-float/2addr v12, v13

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    int-to-float v13, v6

    add-float/2addr v10, v13

    invoke-direct {v11, v12, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 152
    :cond_3
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v10

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v11

    invoke-direct {v4, v9, v10, v8, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    goto :goto_0

    .line 92
    :goto_2
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 94
    array-length v4, v2

    if-nez v4, :cond_4

    goto/16 :goto_4

    .line 97
    :cond_4
    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v9

    .line 98
    invoke-virtual {v0}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v10

    int-to-float v4, v9

    int-to-float v11, v10

    .line 103
    array-length v12, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v12, :cond_9

    aget-object v16, v2, v15

    .line 104
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    .line 105
    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    cmpg-float v18, v17, v4

    if-gez v18, :cond_5

    move/from16 v4, v17

    :cond_5
    cmpg-float v18, v16, v11

    if-gez v18, :cond_6

    move/from16 v11, v16

    :cond_6
    cmpl-float v18, v17, v13

    if-lez v18, :cond_7

    move/from16 v13, v17

    :cond_7
    cmpl-float v17, v16, v14

    if-lez v17, :cond_8

    move/from16 v14, v16

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_9
    const/high16 v12, 0x42c80000    # 100.0f

    cmpl-float v2, v4, v12

    if-lez v2, :cond_a

    float-to-int v2, v4

    .line 122
    invoke-virtual {v0, v7, v7, v2, v10}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    move-object v4, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/ArrayList;II)V

    :cond_a
    cmpl-float v1, v11, v12

    if-lez v1, :cond_b

    float-to-int v1, v11

    .line 127
    invoke-virtual {v0, v7, v7, v9, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/ArrayList;II)V

    :cond_b
    add-int/lit8 v1, v9, -0x64

    int-to-float v1, v1

    cmpg-float v1, v13, v1

    if-gez v1, :cond_c

    float-to-int v1, v13

    sub-int v2, v9, v1

    .line 132
    invoke-virtual {v0, v1, v7, v2, v10}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v2

    add-int v5, p4, v1

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/ArrayList;II)V

    :cond_c
    add-int/lit8 v1, v10, -0x64

    int-to-float v1, v1

    cmpg-float v1, v14, v1

    if-gez v1, :cond_d

    float-to-int v1, v14

    sub-int/2addr v10, v1

    .line 137
    invoke-virtual {v0, v7, v1, v9, v10}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v0

    add-int v5, p5, v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/ArrayList;II)V

    :catch_0
    :cond_d
    :goto_4
    return-void
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 63
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 64
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/ArrayList;II)V

    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/zxing/Result;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/Result;

    return-object p1

    .line 66
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method
