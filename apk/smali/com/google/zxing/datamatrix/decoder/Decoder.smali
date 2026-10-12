.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/google/zxing/datamatrix/decoder/a;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/zxing/datamatrix/decoder/a;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 77
    iget-object v1, v0, Lcom/google/zxing/datamatrix/decoder/a;->c:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v2

    new-array v3, v2, [B

    .line 83
    iget-object v4, v0, Lcom/google/zxing/datamatrix/decoder/a;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v5

    .line 84
    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x1

    if-ne v8, v5, :cond_7

    if-nez v9, :cond_7

    if-nez v10, :cond_7

    add-int/lit8 v10, v11, 0x1

    add-int/lit8 v6, v5, -0x1

    .line 226
    invoke-virtual {v0, v6, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v17

    shl-int/lit8 v17, v17, 0x1

    .line 230
    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_0

    or-int/lit8 v17, v17, 0x1

    :cond_0
    shl-int/lit8 v17, v17, 0x1

    const/4 v15, 0x2

    const/16 v18, 0x1

    .line 234
    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    or-int/lit8 v17, v17, 0x1

    :cond_1
    shl-int/lit8 v6, v17, 0x1

    add-int/lit8 v15, v4, -0x2

    .line 238
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_2

    or-int/lit8 v6, v6, 0x1

    :cond_2
    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v4, -0x1

    .line 242
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_3

    or-int/lit8 v6, v6, 0x1

    :cond_3
    shl-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    .line 246
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_4

    or-int/lit8 v6, v6, 0x1

    :cond_4
    shl-int/2addr v6, v7

    const/4 v7, 0x2

    const/16 v18, 0x1

    .line 250
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v19

    if-eqz v19, :cond_5

    or-int/lit8 v6, v6, 0x1

    :cond_5
    shl-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    .line 254
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_6

    or-int/lit8 v6, v6, 0x1

    :cond_6
    int-to-byte v6, v6

    .line 95
    aput-byte v6, v3, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v19, v3

    move v11, v10

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_7
    add-int/lit8 v6, v5, -0x2

    if-ne v8, v6, :cond_f

    if-nez v9, :cond_f

    and-int/lit8 v7, v4, 0x3

    if-eqz v7, :cond_f

    if-nez v12, :cond_f

    add-int/lit8 v7, v11, 0x1

    add-int/lit8 v12, v5, -0x3

    const/4 v15, 0x0

    .line 271
    invoke-virtual {v0, v12, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v12

    move-object/from16 v19, v3

    const/4 v3, 0x1

    shl-int/2addr v12, v3

    .line 275
    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_8

    or-int/lit8 v12, v12, 0x1

    :cond_8
    shl-int/lit8 v6, v12, 0x1

    add-int/lit8 v12, v5, -0x1

    .line 279
    invoke-virtual {v0, v12, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_9

    or-int/lit8 v6, v6, 0x1

    :cond_9
    shl-int/2addr v6, v3

    add-int/lit8 v12, v4, -0x4

    .line 283
    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_a

    or-int/lit8 v6, v6, 0x1

    :cond_a
    shl-int/2addr v6, v3

    add-int/lit8 v12, v4, -0x3

    .line 287
    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_b

    or-int/lit8 v6, v6, 0x1

    :cond_b
    shl-int/2addr v6, v3

    add-int/lit8 v12, v4, -0x2

    .line 291
    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_c

    or-int/lit8 v6, v6, 0x1

    :cond_c
    shl-int/2addr v6, v3

    add-int/lit8 v12, v4, -0x1

    .line 295
    invoke-virtual {v0, v15, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_d

    or-int/lit8 v6, v6, 0x1

    :cond_d
    shl-int/2addr v6, v3

    .line 299
    invoke-virtual {v0, v3, v12, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v12

    if-eqz v12, :cond_e

    or-int/lit8 v6, v6, 0x1

    :cond_e
    int-to-byte v3, v6

    .line 100
    aput-byte v3, v19, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move v11, v7

    const/4 v12, 0x1

    goto/16 :goto_5

    :cond_f
    move-object/from16 v19, v3

    add-int/lit8 v3, v5, 0x4

    if-ne v8, v3, :cond_17

    const/4 v15, 0x2

    if-ne v9, v15, :cond_17

    and-int/lit8 v3, v4, 0x7

    if-nez v3, :cond_17

    if-nez v13, :cond_17

    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v6, v5, -0x1

    const/4 v15, 0x0

    .line 316
    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v7

    const/4 v13, 0x1

    shl-int/2addr v7, v13

    add-int/lit8 v15, v4, -0x1

    .line 320
    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_10

    or-int/lit8 v7, v7, 0x1

    :cond_10
    shl-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v4, -0x3

    const/4 v13, 0x0

    const/16 v18, 0x1

    .line 324
    invoke-virtual {v0, v13, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_11

    or-int/lit8 v6, v6, 0x1

    :cond_11
    shl-int/lit8 v6, v6, 0x1

    move/from16 v20, v3

    add-int/lit8 v3, v4, -0x2

    .line 328
    invoke-virtual {v0, v13, v3, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v17

    if-eqz v17, :cond_12

    or-int/lit8 v6, v6, 0x1

    :cond_12
    shl-int/lit8 v6, v6, 0x1

    .line 332
    invoke-virtual {v0, v13, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v21

    if-eqz v21, :cond_13

    or-int/lit8 v6, v6, 0x1

    :cond_13
    shl-int/lit8 v6, v6, 0x1

    const/4 v13, 0x1

    .line 336
    invoke-virtual {v0, v13, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_14

    or-int/lit8 v6, v6, 0x1

    :cond_14
    shl-int/2addr v6, v13

    .line 340
    invoke-virtual {v0, v13, v3, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v3

    if-eqz v3, :cond_15

    or-int/lit8 v6, v6, 0x1

    :cond_15
    shl-int/lit8 v3, v6, 0x1

    .line 344
    invoke-virtual {v0, v13, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_16

    or-int/lit8 v3, v3, 0x1

    :cond_16
    int-to-byte v3, v3

    .line 105
    aput-byte v3, v19, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move/from16 v11, v20

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_17
    if-ne v8, v6, :cond_1f

    if-nez v9, :cond_1f

    and-int/lit8 v3, v4, 0x7

    const/4 v7, 0x4

    if-ne v3, v7, :cond_1f

    if-nez v14, :cond_1f

    add-int/lit8 v3, v11, 0x1

    add-int/lit8 v7, v5, -0x3

    const/4 v15, 0x0

    .line 361
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v7

    const/4 v14, 0x1

    shl-int/2addr v7, v14

    .line 365
    invoke-virtual {v0, v6, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v6

    if-eqz v6, :cond_18

    or-int/lit8 v7, v7, 0x1

    :cond_18
    shl-int/lit8 v6, v7, 0x1

    add-int/lit8 v7, v5, -0x1

    .line 369
    invoke-virtual {v0, v7, v15, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_19

    or-int/lit8 v6, v6, 0x1

    :cond_19
    shl-int/2addr v6, v14

    add-int/lit8 v7, v4, -0x2

    .line 373
    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_1a

    or-int/lit8 v6, v6, 0x1

    :cond_1a
    shl-int/2addr v6, v14

    add-int/lit8 v7, v4, -0x1

    .line 377
    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_1b

    or-int/lit8 v6, v6, 0x1

    :cond_1b
    shl-int/2addr v6, v14

    .line 381
    invoke-virtual {v0, v14, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v15

    if-eqz v15, :cond_1c

    or-int/lit8 v6, v6, 0x1

    :cond_1c
    shl-int/2addr v6, v14

    const/4 v15, 0x2

    .line 385
    invoke-virtual {v0, v15, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v18

    if-eqz v18, :cond_1d

    or-int/lit8 v6, v6, 0x1

    :cond_1d
    shl-int/2addr v6, v14

    const/4 v14, 0x3

    .line 389
    invoke-virtual {v0, v14, v7, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->a(IIII)Z

    move-result v7

    if-eqz v7, :cond_1e

    or-int/lit8 v6, v6, 0x1

    :cond_1e
    int-to-byte v6, v6

    .line 110
    aput-byte v6, v19, v11

    add-int/lit8 v8, v8, -0x2

    add-int/lit8 v9, v9, 0x2

    move v11, v3

    const/4 v14, 0x1

    goto :goto_5

    .line 117
    :cond_1f
    :goto_1
    iget-object v3, v0, Lcom/google/zxing/datamatrix/decoder/a;->b:Lcom/google/zxing/common/BitMatrix;

    if-ge v8, v5, :cond_20

    if-ltz v9, :cond_20

    invoke-virtual {v3, v9, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_20

    add-int/lit8 v6, v11, 0x1

    .line 118
    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->b(IIII)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v19, v11

    move v11, v6

    :cond_20
    add-int/lit8 v6, v8, -0x2

    add-int/lit8 v7, v9, 0x2

    if-ltz v6, :cond_22

    if-lt v7, v4, :cond_21

    goto :goto_2

    :cond_21
    move v8, v6

    move v9, v7

    goto :goto_1

    :cond_22
    :goto_2
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, 0x5

    :goto_3
    if-ltz v8, :cond_23

    if-ge v9, v4, :cond_23

    .line 128
    invoke-virtual {v3, v9, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-nez v6, :cond_23

    add-int/lit8 v6, v11, 0x1

    .line 129
    invoke-virtual {v0, v8, v9, v5, v4}, Lcom/google/zxing/datamatrix/decoder/a;->b(IIII)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v19, v11

    move v11, v6

    :cond_23
    add-int/lit8 v6, v8, 0x2

    add-int/lit8 v7, v9, -0x2

    if-ge v6, v5, :cond_25

    if-gez v7, :cond_24

    goto :goto_4

    :cond_24
    move v8, v6

    move v9, v7

    goto :goto_3

    :cond_25
    :goto_4
    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v9, -0x1

    :goto_5
    if-lt v8, v5, :cond_8e

    if-lt v9, v4, :cond_8e

    .line 139
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    if-ne v11, v0, :cond_8d

    .line 87
    iget-object v0, v1, Lcom/google/zxing/datamatrix/decoder/Version;->f:Lcom/google/zxing/datamatrix/decoder/Version$c;

    .line 137
    iget-object v3, v0, Lcom/google/zxing/datamatrix/decoder/Version$c;->b:[Lcom/google/zxing/datamatrix/decoder/Version$b;

    .line 54
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_6
    if-ge v5, v4, :cond_26

    aget-object v7, v3, v5

    .line 156
    iget v7, v7, Lcom/google/zxing/datamatrix/decoder/Version$b;->a:I

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 59
    :cond_26
    new-array v4, v6, [Lcom/google/zxing/datamatrix/decoder/b;

    .line 61
    array-length v5, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_7
    iget v9, v0, Lcom/google/zxing/datamatrix/decoder/Version$c;->a:I

    if-ge v7, v5, :cond_28

    aget-object v10, v3, v7

    const/4 v11, 0x0

    .line 156
    :goto_8
    iget v12, v10, Lcom/google/zxing/datamatrix/decoder/Version$b;->a:I

    if-ge v11, v12, :cond_27

    .line 64
    iget v12, v10, Lcom/google/zxing/datamatrix/decoder/Version$b;->b:I

    add-int v13, v9, v12

    add-int/lit8 v14, v8, 0x1

    .line 65
    new-instance v15, Lcom/google/zxing/datamatrix/decoder/b;

    new-array v13, v13, [B

    invoke-direct {v15, v12, v13}, Lcom/google/zxing/datamatrix/decoder/b;-><init>(I[B)V

    aput-object v15, v4, v8

    add-int/lit8 v11, v11, 0x1

    move v8, v14

    goto :goto_8

    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_28
    const/16 v17, 0x0

    .line 72
    aget-object v0, v4, v17

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/b;->b:[B

    array-length v0, v0

    sub-int/2addr v0, v9

    add-int/lit8 v3, v0, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_9
    if-ge v5, v3, :cond_2a

    const/4 v9, 0x0

    :goto_a
    if-ge v9, v8, :cond_29

    .line 82
    aget-object v10, v4, v9

    iget-object v10, v10, Lcom/google/zxing/datamatrix/decoder/b;->b:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v19, v7

    aput-byte v7, v10, v5

    add-int/lit8 v9, v9, 0x1

    move v7, v11

    goto :goto_a

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 87
    :cond_2a
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v1

    const/16 v5, 0x18

    if-ne v1, v5, :cond_2b

    const/4 v1, 0x1

    goto :goto_b

    :cond_2b
    const/4 v1, 0x0

    :goto_b
    const/16 v5, 0x8

    if-eqz v1, :cond_2c

    const/16 v9, 0x8

    goto :goto_c

    :cond_2c
    move v9, v8

    :goto_c
    const/4 v10, 0x0

    :goto_d
    if-ge v10, v9, :cond_2d

    .line 90
    aget-object v11, v4, v10

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/b;->b:[B

    add-int/lit8 v12, v7, 0x1

    aget-byte v7, v19, v7

    aput-byte v7, v11, v3

    add-int/lit8 v10, v10, 0x1

    move v7, v12

    goto :goto_d

    :cond_2d
    const/16 v17, 0x0

    .line 94
    aget-object v3, v4, v17

    iget-object v3, v3, Lcom/google/zxing/datamatrix/decoder/b;->b:[B

    array-length v3, v3

    :goto_e
    if-ge v0, v3, :cond_30

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v8, :cond_2f

    if-eqz v1, :cond_2e

    const/4 v10, 0x7

    if-le v9, v10, :cond_2e

    add-int/lit8 v10, v0, -0x1

    goto :goto_10

    :cond_2e
    move v10, v0

    .line 98
    :goto_10
    aget-object v11, v4, v9

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/b;->b:[B

    add-int/lit8 v12, v7, 0x1

    aget-byte v7, v19, v7

    aput-byte v7, v11, v10

    add-int/lit8 v9, v9, 0x1

    move v7, v12

    goto :goto_f

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_30
    if-ne v7, v2, :cond_8c

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    if-ge v0, v6, :cond_31

    .line 87
    aget-object v2, v4, v0

    .line 110
    iget v2, v2, Lcom/google/zxing/datamatrix/decoder/b;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 90
    :cond_31
    new-array v0, v1, [B

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v6, :cond_35

    .line 94
    aget-object v2, v4, v1

    .line 114
    iget-object v3, v2, Lcom/google/zxing/datamatrix/decoder/b;->b:[B

    .line 117
    array-length v7, v3

    .line 119
    new-array v8, v7, [I

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v7, :cond_32

    .line 121
    aget-byte v10, v3, v9

    and-int/lit16 v10, v10, 0xff

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 123
    :cond_32
    array-length v7, v3

    iget v2, v2, Lcom/google/zxing/datamatrix/decoder/b;->a:I

    sub-int/2addr v7, v2

    move-object/from16 v15, p0

    .line 125
    :try_start_0
    iget-object v9, v15, Lcom/google/zxing/datamatrix/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v9, v8, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v2, :cond_33

    .line 132
    aget v9, v8, v7

    int-to-byte v9, v9

    aput-byte v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_33
    const/4 v7, 0x0

    :goto_15
    if-ge v7, v2, :cond_34

    mul-int v8, v7, v6

    add-int/2addr v8, v1

    .line 100
    aget-byte v9, v3, v7

    aput-byte v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 127
    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_35
    move-object/from16 v15, p0

    .line 83
    new-instance v1, Lcom/google/zxing/common/BitSource;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    sget-object v6, Lcom/google/zxing/datamatrix/decoder/c$b;->b:Lcom/google/zxing/datamatrix/decoder/c$b;

    move-object v7, v6

    .line 89
    :goto_16
    sget-object v8, Lcom/google/zxing/datamatrix/decoder/c$b;->a:Lcom/google/zxing/datamatrix/decoder/c$b;

    const/16 v9, 0x1d

    const/16 v10, 0xfe

    if-ne v7, v6, :cond_4b

    const/4 v7, 0x0

    .line 128
    :cond_36
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    if-eqz v11, :cond_4a

    const/16 v12, 0x80

    if-gt v11, v12, :cond_38

    if-eqz v7, :cond_37

    add-int/lit16 v11, v11, 0x80

    :cond_37
    const/16 v18, 0x1

    add-int/lit8 v11, v11, -0x1

    int-to-char v7, v11

    .line 136
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v6

    :goto_17
    const/4 v12, 0x0

    goto/16 :goto_2f

    :cond_38
    const/16 v12, 0x81

    if-ne v11, v12, :cond_39

    move-object v7, v8

    goto :goto_17

    :cond_39
    const/16 v12, 0xe5

    if-gt v11, v12, :cond_3b

    add-int/lit16 v11, v11, -0x82

    const/16 v12, 0xa

    if-ge v11, v12, :cond_3a

    const/16 v12, 0x30

    .line 143
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    :cond_3a
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_3b
    const/16 v12, 0xe6

    if-ne v11, v12, :cond_3c

    .line 147
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/c$b;->c:Lcom/google/zxing/datamatrix/decoder/c$b;

    goto :goto_17

    :cond_3c
    const/16 v12, 0xe7

    if-ne v11, v12, :cond_3d

    .line 149
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/c$b;->g:Lcom/google/zxing/datamatrix/decoder/c$b;

    goto :goto_17

    :cond_3d
    const/16 v12, 0xe8

    if-ne v11, v12, :cond_3e

    .line 152
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_3e
    const/16 v12, 0xe9

    if-eq v11, v12, :cond_40

    const/16 v12, 0xea

    if-ne v11, v12, :cond_3f

    goto :goto_18

    :cond_3f
    const/16 v12, 0xeb

    if-ne v11, v12, :cond_41

    const/4 v7, 0x1

    :cond_40
    :goto_18
    const/4 v12, 0x0

    goto :goto_19

    :cond_41
    const/16 v12, 0xec

    .line 159
    const-string v13, "\u001e\u0004"

    if-ne v11, v12, :cond_42

    .line 160
    const-string v11, "[)>\u001e05\u001d"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    .line 161
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_42
    const/4 v12, 0x0

    const/16 v14, 0xed

    if-ne v11, v14, :cond_43

    .line 163
    const-string v11, "[)>\u001e06\u001d"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_43
    const/16 v13, 0xee

    if-ne v11, v13, :cond_44

    .line 166
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/c$b;->e:Lcom/google/zxing/datamatrix/decoder/c$b;

    goto/16 :goto_2f

    :cond_44
    const/16 v13, 0xef

    if-ne v11, v13, :cond_45

    .line 168
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/c$b;->d:Lcom/google/zxing/datamatrix/decoder/c$b;

    goto/16 :goto_2f

    :cond_45
    const/16 v13, 0xf0

    if-ne v11, v13, :cond_46

    .line 170
    sget-object v7, Lcom/google/zxing/datamatrix/decoder/c$b;->f:Lcom/google/zxing/datamatrix/decoder/c$b;

    goto/16 :goto_2f

    :cond_46
    const/16 v13, 0xf1

    if-ne v11, v13, :cond_47

    goto :goto_19

    :cond_47
    const/16 v13, 0xf2

    if-lt v11, v13, :cond_49

    if-ne v11, v10, :cond_48

    .line 177
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v11

    if-nez v11, :cond_48

    goto :goto_19

    .line 178
    :cond_48
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 181
    :cond_49
    :goto_19
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v11

    if-gtz v11, :cond_36

    goto/16 :goto_2e

    .line 130
    :cond_4a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4b
    const/4 v12, 0x0

    .line 92
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    sget-object v11, Lcom/google/zxing/datamatrix/decoder/c;->b:[C

    const/16 v12, 0x28

    const/4 v13, 0x2

    if-eq v7, v13, :cond_75

    const/16 v13, 0x20

    const/4 v9, 0x3

    if-eq v7, v9, :cond_62

    const/4 v9, 0x4

    if-eq v7, v9, :cond_57

    const/4 v9, 0x5

    const/4 v11, 0x6

    if-eq v7, v9, :cond_52

    if-ne v7, v11, :cond_51

    .line 451
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->getByteOffset()I

    move-result v7

    add-int/lit8 v9, v7, 0x1

    .line 452
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    add-int/lit8 v11, v7, 0x2

    invoke-static {v10, v9}, Lcom/google/zxing/datamatrix/decoder/c;->b(II)I

    move-result v9

    if-nez v9, :cond_4c

    .line 455
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    div-int/lit8 v9, v7, 0x8

    goto :goto_1a

    :cond_4c
    const/16 v10, 0xfa

    if-ge v9, v10, :cond_4d

    goto :goto_1a

    :cond_4d
    add-int/lit16 v9, v9, -0xf9

    mul-int/lit16 v9, v9, 0xfa

    .line 459
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    add-int/lit8 v7, v7, 0x3

    invoke-static {v10, v11}, Lcom/google/zxing/datamatrix/decoder/c;->b(II)I

    move-result v10

    add-int/2addr v9, v10

    move v11, v7

    :goto_1a
    if-ltz v9, :cond_50

    .line 467
    new-array v7, v9, [B

    const/4 v10, 0x0

    :goto_1b
    if-ge v10, v9, :cond_4f

    .line 471
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    if-lt v12, v5, :cond_4e

    .line 474
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    add-int/lit8 v13, v11, 0x1

    invoke-static {v12, v11}, Lcom/google/zxing/datamatrix/decoder/c;->b(II)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    move v11, v13

    goto :goto_1b

    .line 472
    :cond_4e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 476
    :cond_4f
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :try_start_1
    new-instance v9, Ljava/lang/String;

    const-string v10, "ISO8859_1"

    invoke-direct {v9, v7, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2e

    :catch_1
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Platform does not support required encoding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_50
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 109
    :cond_51
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 418
    :cond_52
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/16 v9, 0x10

    if-gt v7, v9, :cond_53

    const/4 v9, 0x4

    goto/16 :goto_2e

    :cond_53
    const/4 v7, 0x0

    const/4 v9, 0x4

    :goto_1c
    if-ge v7, v9, :cond_56

    .line 423
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    const/16 v12, 0x1f

    if-ne v10, v12, :cond_54

    .line 428
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->getBitOffset()I

    move-result v7

    rsub-int/lit8 v7, v7, 0x8

    if-eq v7, v5, :cond_86

    .line 430
    invoke-virtual {v1, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto/16 :goto_2e

    :cond_54
    and-int/lit8 v12, v10, 0x20

    if-nez v12, :cond_55

    or-int/lit8 v10, v10, 0x40

    :cond_55
    int-to-char v10, v10

    .line 438
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 440
    :cond_56
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    if-gtz v7, :cond_52

    goto/16 :goto_2e

    :cond_57
    const/4 v14, 0x3

    .line 368
    new-array v7, v14, [I

    .line 371
    :goto_1d
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v11

    if-ne v11, v5, :cond_58

    goto/16 :goto_2e

    .line 374
    :cond_58
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    if-ne v11, v10, :cond_59

    goto/16 :goto_2e

    .line 379
    :cond_59
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    invoke-static {v11, v9, v7}, Lcom/google/zxing/datamatrix/decoder/c;->a(II[I)V

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v14, :cond_60

    .line 382
    aget v11, v7, v9

    if-nez v11, :cond_5a

    const/16 v11, 0xd

    .line 384
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_5a
    const/4 v14, 0x1

    if-ne v11, v14, :cond_5b

    const/16 v11, 0x2a

    .line 386
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_5b
    const/4 v14, 0x2

    if-ne v11, v14, :cond_5c

    const/16 v11, 0x3e

    .line 388
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_5c
    const/4 v14, 0x3

    if-ne v11, v14, :cond_5d

    .line 390
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_5d
    const/16 v14, 0xe

    if-ge v11, v14, :cond_5e

    add-int/lit8 v11, v11, 0x2c

    int-to-char v11, v11

    .line 392
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_5e
    if-ge v11, v12, :cond_5f

    add-int/lit8 v11, v11, 0x33

    int-to-char v11, v11

    .line 394
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1f
    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x3

    goto :goto_1e

    .line 396
    :cond_5f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 399
    :cond_60
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v9

    if-gtz v9, :cond_61

    goto/16 :goto_2e

    :cond_61
    const/4 v9, 0x4

    const/4 v14, 0x3

    goto :goto_1d

    .line 279
    :cond_62
    new-array v7, v9, [I

    const/16 v16, 0x0

    const/16 v21, 0x0

    .line 283
    :goto_20
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    if-ne v12, v5, :cond_63

    goto/16 :goto_2e

    .line 286
    :cond_63
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    if-ne v12, v10, :cond_64

    goto/16 :goto_2e

    .line 291
    :cond_64
    invoke-virtual {v1, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    invoke-static {v12, v10, v7}, Lcom/google/zxing/datamatrix/decoder/c;->a(II[I)V

    move/from16 v12, v16

    move/from16 v5, v21

    const/4 v10, 0x0

    :goto_21
    if-ge v10, v9, :cond_73

    .line 294
    aget v14, v7, v10

    if-eqz v5, :cond_6f

    const/4 v13, 0x1

    if-eq v5, v13, :cond_6d

    const/4 v13, 0x2

    if-eq v5, v13, :cond_68

    if-ne v5, v9, :cond_67

    const/16 v9, 0x20

    if-ge v14, v9, :cond_66

    .line 341
    sget-object v5, Lcom/google/zxing/datamatrix/decoder/c;->d:[C

    aget-char v5, v5, v14

    if-eqz v12, :cond_65

    add-int/lit16 v5, v5, 0x80

    int-to-char v5, v5

    .line 343
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_22
    const/4 v12, 0x0

    goto :goto_23

    .line 346
    :cond_65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_23
    const/4 v5, 0x0

    goto :goto_24

    .line 350
    :cond_66
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 354
    :cond_67
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_68
    const/16 v5, 0x1b

    const/16 v9, 0x20

    if-ge v14, v5, :cond_6a

    .line 323
    aget-char v13, v11, v14

    if-eqz v12, :cond_69

    add-int/lit16 v13, v13, 0x80

    int-to-char v12, v13

    .line 325
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 328
    :cond_69
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_6a
    if-ne v14, v5, :cond_6b

    const/16 v5, 0x1d

    .line 331
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_6b
    const/16 v5, 0x1e

    if-ne v14, v5, :cond_6c

    const/4 v12, 0x1

    goto :goto_23

    .line 335
    :cond_6c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_6d
    const/16 v9, 0x20

    if-eqz v12, :cond_6e

    add-int/lit16 v14, v14, 0x80

    int-to-char v5, v14

    .line 313
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_6e
    int-to-char v5, v14

    .line 316
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_6f
    const/16 v9, 0x20

    const/4 v13, 0x3

    if-ge v14, v13, :cond_70

    add-int/lit8 v5, v14, 0x1

    goto :goto_24

    :cond_70
    const/16 v13, 0x28

    if-ge v14, v13, :cond_72

    .line 300
    sget-object v13, Lcom/google/zxing/datamatrix/decoder/c;->c:[C

    aget-char v13, v13, v14

    if-eqz v12, :cond_71

    add-int/lit16 v13, v13, 0x80

    int-to-char v12, v13

    .line 302
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    goto :goto_24

    .line 305
    :cond_71
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_24
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x3

    const/16 v13, 0x20

    goto/16 :goto_21

    .line 308
    :cond_72
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_73
    const/16 v9, 0x20

    .line 357
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    if-gtz v10, :cond_74

    goto/16 :goto_2e

    :cond_74
    move/from16 v21, v5

    move/from16 v16, v12

    const/16 v5, 0x8

    const/4 v9, 0x3

    const/16 v10, 0xfe

    const/16 v13, 0x20

    goto/16 :goto_20

    :cond_75
    const/4 v14, 0x3

    .line 194
    new-array v5, v14, [I

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 199
    :goto_25
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    const/16 v12, 0x8

    if-ne v10, v12, :cond_76

    goto/16 :goto_2e

    .line 202
    :cond_76
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v10

    const/16 v13, 0xfe

    if-ne v10, v13, :cond_77

    goto/16 :goto_2e

    .line 207
    :cond_77
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    invoke-static {v10, v13, v5}, Lcom/google/zxing/datamatrix/decoder/c;->a(II[I)V

    const/4 v10, 0x0

    :goto_26
    if-ge v10, v14, :cond_85

    .line 210
    aget v13, v5, v10

    if-eqz v9, :cond_81

    const/4 v12, 0x1

    if-eq v9, v12, :cond_7f

    const/4 v12, 0x2

    if-eq v9, v12, :cond_7a

    if-ne v9, v14, :cond_79

    if-eqz v7, :cond_78

    add-int/lit16 v13, v13, 0xe0

    int-to-char v7, v13

    .line 256
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_27

    :cond_78
    add-int/lit8 v13, v13, 0x60

    int-to-char v9, v13

    .line 259
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_27
    const/4 v9, 0x0

    const/16 v12, 0x28

    const/16 v14, 0x1b

    :goto_28
    const/16 v19, 0x1e

    :goto_29
    const/16 v20, 0x1d

    goto/16 :goto_2d

    .line 264
    :cond_79
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7a
    const/16 v14, 0x1b

    if-ge v13, v14, :cond_7c

    .line 238
    aget-char v9, v11, v13

    if-eqz v7, :cond_7b

    add-int/lit16 v9, v9, 0x80

    int-to-char v7, v9

    .line 240
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_2a

    .line 243
    :cond_7b
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    move v13, v7

    const/16 v7, 0x1e

    const/16 v9, 0x1d

    goto :goto_2b

    :cond_7c
    if-ne v13, v14, :cond_7d

    const/16 v9, 0x1d

    .line 246
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v13, v7

    const/16 v7, 0x1e

    goto :goto_2b

    :cond_7d
    const/16 v7, 0x1e

    const/16 v9, 0x1d

    if-ne v13, v7, :cond_7e

    const/4 v13, 0x1

    :goto_2b
    move v7, v13

    const/4 v9, 0x0

    const/16 v12, 0x28

    goto :goto_28

    .line 250
    :cond_7e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7f
    const/16 v9, 0x1d

    const/4 v12, 0x2

    const/16 v14, 0x1b

    const/16 v19, 0x1e

    if-eqz v7, :cond_80

    add-int/lit16 v13, v13, 0x80

    int-to-char v7, v13

    .line 229
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_2c

    :cond_80
    int-to-char v13, v13

    .line 232
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2c
    const/4 v9, 0x0

    const/16 v12, 0x28

    goto :goto_29

    :cond_81
    const/4 v12, 0x3

    const/16 v14, 0x1b

    const/16 v19, 0x1e

    const/16 v20, 0x1d

    if-ge v13, v12, :cond_82

    add-int/lit8 v9, v13, 0x1

    const/16 v12, 0x28

    goto :goto_2d

    :cond_82
    const/16 v12, 0x28

    if-ge v13, v12, :cond_84

    .line 216
    sget-object v22, Lcom/google/zxing/datamatrix/decoder/c;->a:[C

    aget-char v13, v22, v13

    if-eqz v7, :cond_83

    add-int/lit16 v13, v13, 0x80

    int-to-char v7, v13

    .line 218
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    goto :goto_2d

    .line 221
    :cond_83
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2d
    add-int/lit8 v10, v10, 0x1

    const/16 v12, 0x8

    const/4 v14, 0x3

    goto/16 :goto_26

    .line 224
    :cond_84
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_85
    const/16 v12, 0x28

    const/16 v14, 0x1b

    const/16 v19, 0x1e

    const/16 v20, 0x1d

    .line 267
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    if-gtz v10, :cond_8b

    :cond_86
    :goto_2e
    move-object v7, v6

    :goto_2f
    if-eq v7, v8, :cond_88

    .line 113
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v5

    if-gtz v5, :cond_87

    goto :goto_30

    :cond_87
    const/16 v5, 0x8

    goto/16 :goto_16

    .line 114
    :cond_88
    :goto_30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_89

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_89
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_8a

    move-object v4, v5

    :cond_8a
    invoke-direct {v1, v0, v2, v4, v5}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :cond_8b
    const/4 v14, 0x3

    goto/16 :goto_25

    :cond_8c
    move-object/from16 v15, p0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_8d
    move-object/from16 v15, p0

    .line 140
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_8e
    move-object/from16 v15, p0

    const/4 v7, 0x4

    const/16 v17, 0x0

    move-object/from16 v3, v19

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 51
    array-length v0, p1

    .line 52
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 55
    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method
