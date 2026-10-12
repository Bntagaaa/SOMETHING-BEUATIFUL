.class public final Lcom/google/zxing/pdf417/encoder/PDF417Writer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([[B)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    .line 146
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3c

    array-length v3, p0

    add-int/lit8 v3, v3, 0x3c

    invoke-direct {v0, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 147
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 148
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1e

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    const/4 v4, 0x0

    .line 149
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 151
    aget-object v5, p0, v3

    aget-byte v5, v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v4, 0x1e

    .line 152
    invoke-virtual {v0, v5, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static b([[B)[[B
    .locals 8

    const/4 v0, 0x0

    .line 163
    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v2, 0x0

    .line 164
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 167
    array-length v3, p0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    .line 168
    :goto_1
    aget-object v6, p0, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 169
    aget-object v6, v1, v5

    aget-object v7, p0, v2

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v9, 0x1

    .line 40
    sget-object v10, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-ne v1, v10, :cond_3f

    .line 44
    new-instance v1, Lcom/google/zxing/pdf417/encoder/c;

    invoke-direct {v1}, Lcom/google/zxing/pdf417/encoder/c;-><init>()V

    if-eqz v4, :cond_2

    .line 47
    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 48
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 779
    iput-boolean v10, v1, Lcom/google/zxing/pdf417/encoder/c;->b:Z

    .line 50
    :cond_0
    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 51
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 771
    iput-object v10, v1, Lcom/google/zxing/pdf417/encoder/c;->c:Lcom/google/zxing/pdf417/encoder/Compaction;

    .line 53
    :cond_1
    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v4, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 54
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/pdf417/encoder/Dimensions;

    .line 55
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v10

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v11

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v12

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v4

    .line 761
    iput v10, v1, Lcom/google/zxing/pdf417/encoder/c;->e:I

    .line 762
    iput v11, v1, Lcom/google/zxing/pdf417/encoder/c;->d:I

    .line 763
    iput v12, v1, Lcom/google/zxing/pdf417/encoder/c;->f:I

    .line 764
    iput v4, v1, Lcom/google/zxing/pdf417/encoder/c;->g:I

    .line 674
    :cond_2
    iget-object v4, v1, Lcom/google/zxing/pdf417/encoder/c;->c:Lcom/google/zxing/pdf417/encoder/Compaction;

    sget-object v10, Lcom/google/zxing/pdf417/encoder/e;->a:[B

    .line 155
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 162
    sget-object v12, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/4 v13, 0x0

    if-ne v4, v12, :cond_3

    .line 163
    invoke-static {v0, v13, v11, v10, v13}, Lcom/google/zxing/pdf417/encoder/e;->c(Ljava/lang/String;IILjava/lang/StringBuilder;I)I

    :goto_0
    const/16 v17, 0x11

    goto/16 :goto_16

    .line 165
    :cond_3
    sget-object v12, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne v4, v12, :cond_4

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 167
    array-length v11, v4

    invoke-static {v4, v13, v11, v9, v10}, Lcom/google/zxing/pdf417/encoder/e;->a([BIIILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 169
    :cond_4
    sget-object v12, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    const/16 v15, 0x386

    if-ne v4, v12, :cond_5

    .line 170
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v13, v11, v0, v10}, Lcom/google/zxing/pdf417/encoder/e;->b(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x11

    :goto_1
    if-ge v4, v11, :cond_24

    .line 454
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x39

    const/16 v14, 0x30

    if-ge v4, v5, :cond_8

    .line 457
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v19

    move v9, v4

    move/from16 v13, v19

    const/16 v19, 0x0

    const/16 v21, 0x1

    :cond_6
    :goto_2
    if-lt v13, v14, :cond_7

    if-gt v13, v7, :cond_7

    if-ge v9, v5, :cond_7

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v5, :cond_6

    .line 462
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_2

    :cond_7
    move/from16 v5, v19

    goto :goto_3

    :cond_8
    const/16 v21, 0x1

    const/4 v5, 0x0

    :goto_3
    const/16 v9, 0xd

    if-lt v5, v9, :cond_9

    .line 178
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {v4, v5, v0, v10}, Lcom/google/zxing/pdf417/encoder/e;->b(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    add-int/2addr v4, v5

    const/4 v6, 0x2

    const/16 v16, 0x0

    goto/16 :goto_15

    .line 477
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    move v15, v4

    :goto_4
    if-ge v15, v13, :cond_f

    .line 480
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v7, v23

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_b

    if-lt v7, v14, :cond_b

    const/16 v14, 0x39

    if-gt v7, v14, :cond_b

    if-ge v15, v13, :cond_b

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ge v15, v13, :cond_a

    .line 486
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :cond_a
    const/16 v14, 0x30

    goto :goto_5

    :cond_b
    if-lt v8, v9, :cond_c

    sub-int/2addr v15, v4

    sub-int/2addr v15, v8

    goto :goto_7

    :cond_c
    if-lez v8, :cond_d

    :goto_6
    const/16 v7, 0x39

    const/16 v14, 0x30

    goto :goto_4

    .line 496
    :cond_d
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_e

    const/16 v8, 0xa

    if-eq v7, v8, :cond_e

    if-eq v7, v9, :cond_e

    const/16 v8, 0x20

    if-lt v7, v8, :cond_f

    const/16 v8, 0x7e

    if-gt v7, v8, :cond_f

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_f
    sub-int/2addr v15, v4

    :goto_7
    const/4 v7, 0x5

    if-ge v15, v7, :cond_22

    if-ne v5, v11, :cond_10

    goto/16 :goto_13

    :cond_10
    if-nez v12, :cond_11

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 517
    :cond_11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move v8, v4

    :goto_8
    if-ge v8, v5, :cond_14

    .line 520
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/4 v14, 0x0

    :goto_9
    if-ge v14, v9, :cond_13

    const/16 v15, 0x30

    if-lt v13, v15, :cond_13

    const/16 v15, 0x39

    if-gt v13, v15, :cond_13

    add-int/lit8 v14, v14, 0x1

    add-int v15, v8, v14

    if-lt v15, v5, :cond_12

    goto :goto_a

    .line 530
    :cond_12
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_9

    :cond_13
    :goto_a
    if-lt v14, v9, :cond_15

    :cond_14
    :goto_b
    sub-int/2addr v8, v4

    goto/16 :goto_11

    :cond_15
    const/4 v14, 0x0

    :goto_c
    if-ge v14, v7, :cond_1b

    const/16 v15, 0x9

    if-eq v13, v15, :cond_19

    const/16 v15, 0xa

    if-eq v13, v15, :cond_18

    if-eq v13, v9, :cond_18

    const/16 v9, 0x20

    if-lt v13, v9, :cond_16

    const/16 v9, 0x7e

    if-gt v13, v9, :cond_17

    goto :goto_d

    :cond_16
    const/16 v9, 0x7e

    :cond_17
    const/4 v13, 0x0

    goto :goto_e

    :cond_18
    const/16 v9, 0x7e

    goto :goto_d

    :cond_19
    const/16 v9, 0x7e

    const/16 v15, 0xa

    :goto_d
    const/4 v13, 0x1

    :goto_e
    if-eqz v13, :cond_1c

    add-int/lit8 v14, v14, 0x1

    add-int v13, v8, v14

    if-lt v13, v5, :cond_1a

    goto :goto_f

    .line 542
    :cond_1a
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v9, 0xd

    goto :goto_c

    :cond_1b
    const/16 v9, 0x7e

    const/16 v15, 0xa

    :cond_1c
    :goto_f
    if-lt v14, v7, :cond_1d

    goto :goto_b

    .line 547
    :cond_1d
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 552
    aget-byte v14, v12, v8

    const/16 v7, 0x3f

    if-ne v14, v7, :cond_1f

    if-ne v13, v7, :cond_1e

    goto :goto_10

    .line 553
    :cond_1e
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-encodable character detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " (Unicode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_10
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x5

    const/16 v9, 0xd

    goto/16 :goto_8

    :goto_11
    if-nez v8, :cond_20

    const/4 v8, 0x1

    :cond_20
    const/4 v5, 0x1

    if-ne v8, v5, :cond_21

    if-nez v6, :cond_21

    const/4 v7, 0x0

    .line 203
    invoke-static {v12, v4, v5, v7, v10}, Lcom/google/zxing/pdf417/encoder/e;->a([BIIILjava/lang/StringBuilder;)V

    goto :goto_12

    .line 206
    :cond_21
    invoke-static {v12, v4, v8, v6, v10}, Lcom/google/zxing/pdf417/encoder/e;->a([BIIILjava/lang/StringBuilder;)V

    const/4 v6, 0x1

    const/16 v16, 0x0

    :goto_12
    add-int/2addr v4, v8

    goto :goto_15

    :cond_22
    :goto_13
    if-eqz v6, :cond_23

    const/16 v5, 0x384

    .line 187
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_14

    :cond_23
    move/from16 v5, v16

    .line 191
    :goto_14
    invoke-static {v0, v4, v15, v10, v5}, Lcom/google/zxing/pdf417/encoder/e;->c(Ljava/lang/String;IILjava/lang/StringBuilder;I)I

    move-result v5

    add-int/2addr v4, v15

    move/from16 v16, v5

    :goto_15
    const/4 v9, 0x1

    const/4 v13, 0x0

    const/16 v15, 0x386

    goto/16 :goto_1

    .line 216
    :cond_24
    :goto_16
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 675
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 719
    iget v6, v1, Lcom/google/zxing/pdf417/encoder/c;->d:I

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_17
    iget v8, v1, Lcom/google/zxing/pdf417/encoder/c;->e:I

    if-gt v6, v8, :cond_26

    const/16 v22, 0x9

    add-int/lit8 v8, v5, 0x9

    .line 578
    div-int v9, v8, v6

    const/16 v21, 0x1

    add-int/lit8 v10, v9, 0x1

    mul-int v11, v6, v10

    add-int/2addr v8, v6

    if-lt v11, v8, :cond_25

    goto :goto_18

    :cond_25
    move v9, v10

    .line 723
    :goto_18
    iget v8, v1, Lcom/google/zxing/pdf417/encoder/c;->g:I

    if-ge v9, v8, :cond_27

    :cond_26
    const/16 v21, 0x1

    goto :goto_1b

    .line 727
    :cond_27
    iget v8, v1, Lcom/google/zxing/pdf417/encoder/c;->f:I

    if-le v9, v8, :cond_28

    goto :goto_19

    :cond_28
    mul-int/lit8 v8, v6, 0x11

    add-int/lit8 v8, v8, 0x45

    int-to-float v8, v8

    const v10, 0x3eb6c8b4    # 0.357f

    mul-float v8, v8, v10

    int-to-float v10, v9

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v10, v10, v11

    div-float/2addr v8, v10

    if-eqz v15, :cond_29

    const/high16 v10, 0x40400000    # 3.0f

    sub-float v11, v8, v10

    .line 734
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v11, v10

    if-lez v10, :cond_29

    :goto_19
    const/16 v21, 0x1

    goto :goto_1a

    :cond_29
    const/4 v7, 0x2

    .line 739
    new-array v10, v7, [I

    const/16 v20, 0x0

    aput v6, v10, v20

    const/16 v21, 0x1

    aput v9, v10, v21

    move v7, v8

    move-object v15, v10

    :goto_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :goto_1b
    if-nez v15, :cond_2b

    .line 744
    iget v6, v1, Lcom/google/zxing/pdf417/encoder/c;->d:I

    const/16 v22, 0x9

    add-int/lit8 v8, v5, 0x9

    .line 578
    div-int v7, v8, v6

    add-int/lit8 v9, v7, 0x1

    mul-int v10, v6, v9

    add-int/2addr v8, v6

    if-lt v10, v8, :cond_2a

    goto :goto_1c

    :cond_2a
    move v7, v9

    .line 745
    :goto_1c
    iget v8, v1, Lcom/google/zxing/pdf417/encoder/c;->g:I

    if-ge v7, v8, :cond_2b

    const/4 v7, 0x2

    .line 746
    new-array v15, v7, [I

    const/16 v20, 0x0

    aput v6, v15, v20

    aput v8, v15, v21

    goto :goto_1d

    :cond_2b
    const/16 v20, 0x0

    :goto_1d
    if-eqz v15, :cond_3e

    .line 679
    aget v6, v15, v20

    .line 680
    aget v7, v15, v21

    mul-int v8, v6, v7

    const/16 v9, 0x8

    sub-int/2addr v8, v9

    add-int/lit8 v10, v5, 0x1

    if-le v8, v10, :cond_2c

    sub-int/2addr v8, v5

    add-int/lit8 v8, v8, -0x1

    :goto_1e
    const/16 v22, 0x9

    goto :goto_1f

    :cond_2c
    const/4 v8, 0x0

    goto :goto_1e

    :goto_1f
    add-int/lit8 v10, v5, 0x9

    const/16 v11, 0x3a1

    if-gt v10, v11, :cond_3d

    add-int/2addr v5, v8

    add-int/lit8 v5, v5, 0x1

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    int-to-char v5, v5

    .line 691
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v8, :cond_2d

    const/16 v5, 0x384

    .line 694
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    const/16 v21, 0x1

    goto :goto_20

    .line 696
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    new-array v4, v9, [C

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    :goto_21
    const/4 v10, 0x7

    if-ge v8, v5, :cond_2f

    .line 182
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget-char v12, v4, v10

    add-int/2addr v11, v12

    const/16 v12, 0x3a1

    rem-int/2addr v11, v12

    .line 185
    :goto_22
    sget-object v13, Lcom/google/zxing/pdf417/encoder/d;->a:[[I

    const/4 v14, 0x1

    if-lt v10, v14, :cond_2e

    const/16 v18, 0x2

    .line 186
    aget-object v13, v13, v18

    aget v13, v13, v10

    mul-int v13, v13, v11

    rem-int/2addr v13, v12

    rsub-int v13, v13, 0x3a1

    add-int/lit8 v15, v10, -0x1

    .line 188
    aget-char v14, v4, v15

    add-int/2addr v14, v13

    rem-int/2addr v14, v12

    int-to-char v13, v14

    aput-char v13, v4, v10

    add-int/lit8 v10, v10, -0x1

    goto :goto_22

    :cond_2e
    const/16 v18, 0x2

    .line 190
    aget-object v10, v13, v18

    const/16 v20, 0x0

    aget v10, v10, v20

    mul-int v11, v11, v10

    rem-int/2addr v11, v12

    rsub-int v10, v11, 0x3a1

    .line 192
    rem-int/2addr v10, v12

    int-to-char v10, v10

    aput-char v10, v4, v20

    const/16 v21, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_21

    :cond_2f
    const/16 v12, 0x3a1

    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_23
    if-ltz v10, :cond_31

    .line 196
    aget-char v8, v4, v10

    if-eqz v8, :cond_30

    rsub-int v8, v8, 0x3a1

    int-to-char v8, v8

    .line 197
    aput-char v8, v4, v10

    .line 199
    :cond_30
    aget-char v8, v4, v10

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, -0x1

    goto :goto_23

    .line 201
    :cond_31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 0
    invoke-static {v0, v4}, L_COROUTINE/a;->z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    new-instance v4, Lcom/google/zxing/pdf417/encoder/a;

    invoke-direct {v4, v7, v6}, Lcom/google/zxing/pdf417/encoder/a;-><init>(II)V

    iput-object v4, v1, Lcom/google/zxing/pdf417/encoder/c;->a:Lcom/google/zxing/pdf417/encoder/a;

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_24
    if-ge v5, v7, :cond_36

    .line 628
    rem-int/lit8 v10, v5, 0x3

    .line 55
    iget v11, v4, Lcom/google/zxing/pdf417/encoder/a;->b:I

    const/4 v14, 0x1

    add-int/2addr v11, v14

    .line 55
    iput v11, v4, Lcom/google/zxing/pdf417/encoder/a;->b:I

    const v11, 0x1fea8

    .line 630
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/a;->a()Lcom/google/zxing/pdf417/encoder/b;

    move-result-object v12

    const/16 v13, 0x11

    invoke-static {v11, v13, v12}, Lcom/google/zxing/pdf417/encoder/c;->a(IILcom/google/zxing/pdf417/encoder/b;)V

    if-nez v10, :cond_32

    .line 635
    div-int/lit8 v11, v5, 0x3

    mul-int/lit8 v11, v11, 0x1e

    add-int/lit8 v12, v7, -0x1

    div-int/lit8 v12, v12, 0x3

    add-int/2addr v12, v11

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v13, v11

    goto :goto_25

    :cond_32
    const/4 v11, 0x6

    if-ne v10, v14, :cond_33

    .line 638
    div-int/lit8 v12, v5, 0x3

    mul-int/lit8 v12, v12, 0x1e

    add-int/2addr v11, v12

    add-int/lit8 v13, v7, -0x1

    rem-int/lit8 v15, v13, 0x3

    add-int/2addr v11, v15

    .line 639
    div-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v12

    move v12, v11

    goto :goto_25

    .line 641
    :cond_33
    div-int/lit8 v12, v5, 0x3

    mul-int/lit8 v12, v12, 0x1e

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v13, v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v7, -0x1

    .line 642
    rem-int/lit8 v12, v12, 0x3

    add-int/2addr v11, v12

    move v12, v13

    move v13, v11

    .line 645
    :goto_25
    sget-object v11, Lcom/google/zxing/pdf417/encoder/c;->h:[[I

    aget-object v14, v11, v10

    aget v12, v14, v12

    .line 646
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/a;->a()Lcom/google/zxing/pdf417/encoder/b;

    move-result-object v14

    const/16 v15, 0x11

    invoke-static {v12, v15, v14}, Lcom/google/zxing/pdf417/encoder/c;->a(IILcom/google/zxing/pdf417/encoder/b;)V

    move v12, v8

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v6, :cond_34

    .line 649
    aget-object v14, v11, v10

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v16

    aget v14, v14, v16

    .line 650
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/a;->a()Lcom/google/zxing/pdf417/encoder/b;

    move-result-object v9

    invoke-static {v14, v15, v9}, Lcom/google/zxing/pdf417/encoder/c;->a(IILcom/google/zxing/pdf417/encoder/b;)V

    const/4 v14, 0x1

    add-int/2addr v12, v14

    add-int/2addr v8, v14

    const/16 v9, 0x8

    const/16 v15, 0x11

    goto :goto_26

    :cond_34
    const/4 v14, 0x1

    .line 654
    iget-boolean v8, v1, Lcom/google/zxing/pdf417/encoder/c;->b:Z

    const v9, 0x3fa29

    if-eqz v8, :cond_35

    .line 655
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/a;->a()Lcom/google/zxing/pdf417/encoder/b;

    move-result-object v8

    invoke-static {v9, v14, v8}, Lcom/google/zxing/pdf417/encoder/c;->a(IILcom/google/zxing/pdf417/encoder/b;)V

    const/16 v13, 0x11

    goto :goto_27

    .line 657
    :cond_35
    aget-object v8, v11, v10

    aget v8, v8, v13

    .line 658
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/a;->a()Lcom/google/zxing/pdf417/encoder/b;

    move-result-object v10

    const/16 v13, 0x11

    invoke-static {v8, v13, v10}, Lcom/google/zxing/pdf417/encoder/c;->a(IILcom/google/zxing/pdf417/encoder/b;)V

    const/16 v8, 0x12

    .line 660
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/encoder/a;->a()Lcom/google/zxing/pdf417/encoder/b;

    move-result-object v10

    invoke-static {v9, v8, v10}, Lcom/google/zxing/pdf417/encoder/c;->a(IILcom/google/zxing/pdf417/encoder/b;)V

    :goto_27
    add-int/2addr v5, v14

    move v8, v12

    const/16 v9, 0x8

    const/16 v17, 0x11

    goto/16 :goto_24

    .line 535
    :cond_36
    iget-object v0, v1, Lcom/google/zxing/pdf417/encoder/c;->a:Lcom/google/zxing/pdf417/encoder/a;

    const/16 v4, 0x8

    const/4 v7, 0x2

    .line 107
    invoke-virtual {v0, v7, v4}, Lcom/google/zxing/pdf417/encoder/a;->b(II)[[B

    move-result-object v0

    if-le v3, v2, :cond_37

    const/4 v5, 0x1

    :goto_28
    const/16 v20, 0x0

    goto :goto_29

    :cond_37
    const/4 v5, 0x0

    goto :goto_28

    .line 109
    :goto_29
    aget-object v4, v0, v20

    array-length v4, v4

    array-length v6, v0

    if-ge v4, v6, :cond_38

    const/4 v4, 0x1

    goto :goto_2a

    :cond_38
    const/4 v4, 0x0

    :goto_2a
    xor-int/2addr v4, v5

    if-eqz v4, :cond_39

    .line 110
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->b([[B)[[B

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_2b

    :cond_39
    const/4 v5, 0x0

    .line 114
    :goto_2b
    aget-object v4, v0, v20

    array-length v4, v4

    div-int/2addr v2, v4

    .line 115
    array-length v4, v0

    div-int/2addr v3, v4

    if-ge v2, v3, :cond_3a

    :goto_2c
    const/4 v14, 0x1

    goto :goto_2d

    :cond_3a
    move v2, v3

    goto :goto_2c

    :goto_2d
    if-le v2, v14, :cond_3c

    .line 535
    iget-object v0, v1, Lcom/google/zxing/pdf417/encoder/c;->a:Lcom/google/zxing/pdf417/encoder/a;

    const/16 v18, 0x2

    mul-int/lit8 v7, v2, 0x2

    const/16 v4, 0x8

    mul-int/lit8 v2, v2, 0x8

    .line 125
    invoke-virtual {v0, v7, v2}, Lcom/google/zxing/pdf417/encoder/a;->b(II)[[B

    move-result-object v0

    if-eqz v5, :cond_3b

    .line 128
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->b([[B)[[B

    move-result-object v0

    .line 130
    :cond_3b
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->a([[B)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 132
    :cond_3c
    invoke-static {v0}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->a([[B)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0

    .line 686
    :cond_3d
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encoded message contains to many code words, message to big ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 751
    :cond_3e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Unable to fit message in columns"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can only encode PDF_417, but got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;ZIIIIIILcom/google/zxing/pdf417/encoder/Compaction;)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move v0, p6

    .line 88
    new-instance p6, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {p6, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 89
    sget-object v1, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p6, v1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object p3, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {p6, p3, p10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object p3, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    new-instance p10, Lcom/google/zxing/pdf417/encoder/Dimensions;

    invoke-direct {p10, v0, p7, p8, p9}, Lcom/google/zxing/pdf417/encoder/Dimensions;-><init>(IIII)V

    invoke-virtual {p6, p3, p10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 92
    invoke-virtual/range {p1 .. p6}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p2

    return-object p2
.end method
