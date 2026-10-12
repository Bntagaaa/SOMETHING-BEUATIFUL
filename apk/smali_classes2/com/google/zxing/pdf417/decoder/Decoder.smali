.class public final Lcom/google/zxing/pdf417/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/Decoder;->a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v2, -0x1

    .line 71
    new-instance v5, Lcom/google/zxing/pdf417/decoder/a;

    invoke-direct {v5, v0}, Lcom/google/zxing/pdf417/decoder/a;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 64
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    .line 65
    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v12

    const/16 v6, 0x3a1

    .line 67
    new-array v7, v6, [I

    iput-object v7, v5, Lcom/google/zxing/pdf417/decoder/a;->e:[I

    .line 73
    new-array v8, v11, [I

    .line 74
    new-array v9, v6, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x2

    :goto_0
    const/16 v3, 0x5a

    if-ge v14, v12, :cond_a

    if-ge v7, v3, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x1

    :goto_1
    if-ge v3, v11, :cond_1

    .line 92
    invoke-virtual {v0, v3, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    const/16 v20, 0x0

    add-int/lit8 v13, v14, -0x1

    invoke-virtual {v0, v3, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eq v1, v13, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v20, 0x0

    int-to-float v1, v4

    const/high16 v3, 0x40c00000    # 6.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v11, :cond_3

    .line 99
    invoke-virtual {v0, v1, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v16, 0x1

    add-int/lit8 v1, v16, 0x2

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v1, v1, v3

    move/from16 v16, v4

    if-ltz v1, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_4
    if-eqz v6, :cond_7

    move v6, v7

    move v7, v10

    move v10, v15

    .line 116
    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/a;->b(II[I[II)I

    move-result v15

    move v7, v6

    if-eq v15, v2, :cond_6

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v11, :cond_5

    .line 124
    aput v20, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const/4 v10, 0x0

    goto :goto_4

    .line 120
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7
    :goto_4
    const/4 v6, 0x0

    const/16 v16, 0x0

    :cond_8
    :goto_5
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 84
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_a
    const/16 v18, 0x1

    const/16 v20, 0x0

    if-eqz v6, :cond_c

    if-ge v7, v3, :cond_b

    move v6, v7

    move v7, v10

    move v10, v15

    .line 142
    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/pdf417/decoder/a;->b(II[I[II)I

    move-result v15

    add-int/lit8 v7, v6, 0x1

    .line 144
    iput v7, v5, Lcom/google/zxing/pdf417/decoder/a;->b:I

    goto :goto_6

    .line 140
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_c
    move v10, v15

    .line 146
    :goto_6
    iget-object v0, v5, Lcom/google/zxing/pdf417/decoder/a;->e:[I

    iget v1, v5, Lcom/google/zxing/pdf417/decoder/a;->d:I

    if-ltz v1, :cond_24

    .line 161
    sget-object v3, Lcom/google/zxing/pdf417/decoder/a;->g:[I

    if-nez v1, :cond_d

    move-object v4, v3

    const/4 v6, 0x0

    goto :goto_7

    .line 164
    :cond_d
    new-array v4, v1, [I

    const/4 v6, 0x0

    .line 165
    invoke-static {v0, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    :goto_7
    iput-object v4, v5, Lcom/google/zxing/pdf417/decoder/a;->e:[I

    if-ltz v15, :cond_23

    if-nez v15, :cond_e

    goto :goto_8

    .line 164
    :cond_e
    new-array v3, v15, [I

    .line 165
    invoke-static {v9, v6, v3, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    :goto_8
    array-length v0, v3

    if-eqz v0, :cond_22

    .line 77
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/a;->getECLevel()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int v0, v18, v0

    .line 79
    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/a;->getErasures()[I

    move-result-object v1

    .line 129
    array-length v4, v1

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_21

    if-ltz v0, :cond_21

    const/16 v4, 0x200

    if-gt v0, v4, :cond_21

    move-object/from16 v4, p0

    .line 134
    iget-object v5, v4, Lcom/google/zxing/pdf417/decoder/Decoder;->a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v5, v3, v0, v1}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)V

    .line 95
    array-length v1, v3

    const/4 v5, 0x4

    if-lt v1, v5, :cond_20

    const/16 v20, 0x0

    .line 103
    aget v1, v3, v20

    .line 104
    array-length v5, v3

    if-gt v1, v5, :cond_1f

    if-nez v1, :cond_10

    .line 109
    array-length v1, v3

    if-ge v0, v1, :cond_f

    .line 110
    array-length v1, v3

    sub-int/2addr v1, v0

    aput v1, v3, v20

    goto :goto_9

    .line 112
    :cond_f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 85
    :cond_10
    :goto_9
    sget-object v0, Lcom/google/zxing/pdf417/decoder/b;->a:[C

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    aget v1, v3, v18

    const/4 v5, 0x2

    :goto_a
    const/16 v20, 0x0

    .line 91
    aget v6, v3, v20

    if-ge v5, v6, :cond_1d

    const/16 v6, 0x391

    if-eq v1, v6, :cond_1b

    const/16 v6, 0x39c

    if-eq v1, v6, :cond_1a

    packed-switch v1, :pswitch_data_0

    add-int/2addr v5, v2

    .line 113
    invoke-static {v3, v5, v0}, Lcom/google/zxing/pdf417/decoder/b;->b([IILjava/lang/StringBuilder;)I

    move-result v1

    const/4 v9, 0x0

    const/16 v19, 0xf

    goto/16 :goto_11

    :pswitch_0
    const/16 v1, 0xf

    .line 463
    new-array v7, v1, [I

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_b
    const/16 v20, 0x0

    .line 465
    aget v9, v3, v20

    if-ge v5, v9, :cond_19

    if-nez v8, :cond_19

    add-int/lit8 v10, v5, 0x1

    .line 466
    aget v11, v3, v5

    if-ne v10, v9, :cond_11

    const/4 v8, 0x1

    :cond_11
    const/16 v9, 0x384

    if-ge v11, v9, :cond_13

    .line 471
    aput v11, v7, v1

    add-int/lit8 v1, v1, 0x1

    :cond_12
    move v5, v10

    :goto_c
    const/16 v19, 0xf

    goto :goto_d

    :cond_13
    if-eq v11, v9, :cond_14

    const/16 v9, 0x385

    if-eq v11, v9, :cond_14

    if-eq v11, v6, :cond_14

    const/16 v9, 0x3a0

    if-eq v11, v9, :cond_14

    const/16 v9, 0x39b

    if-eq v11, v9, :cond_14

    const/16 v9, 0x39a

    if-ne v11, v9, :cond_12

    :cond_14
    const/4 v8, 0x1

    goto :goto_c

    .line 484
    :goto_d
    rem-int/lit8 v9, v1, 0xf

    if-eqz v9, :cond_16

    const/16 v9, 0x386

    if-eq v11, v9, :cond_16

    if-eqz v8, :cond_15

    goto :goto_e

    :cond_15
    const/4 v9, 0x0

    goto :goto_10

    .line 543
    :cond_16
    :goto_e
    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v10, v9

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v1, :cond_17

    .line 545
    sget-object v11, Lcom/google/zxing/pdf417/decoder/b;->c:[Ljava/math/BigInteger;

    sub-int v12, v1, v9

    add-int/lit8 v12, v12, -0x1

    aget-object v11, v11, v12

    aget v12, v7, v9

    int-to-long v12, v12

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 547
    :cond_17
    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    .line 548
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x31

    if-ne v10, v11, :cond_18

    const/4 v10, 0x1

    .line 551
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_10
    const/16 v18, 0x1

    goto :goto_b

    .line 549
    :cond_18
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_19
    const/4 v9, 0x0

    const/16 v19, 0xf

    move v1, v5

    goto :goto_11

    :pswitch_1
    const/4 v9, 0x0

    const/16 v19, 0xf

    .line 97
    invoke-static {v1, v3, v5, v0}, Lcom/google/zxing/pdf417/decoder/b;->a(I[IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_11

    :pswitch_2
    const/4 v9, 0x0

    const/16 v19, 0xf

    .line 94
    invoke-static {v3, v5, v0}, Lcom/google/zxing/pdf417/decoder/b;->b([IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_11

    :cond_1a
    const/4 v9, 0x0

    const/16 v19, 0xf

    .line 106
    invoke-static {v1, v3, v5, v0}, Lcom/google/zxing/pdf417/decoder/b;->a(I[IILjava/lang/StringBuilder;)I

    move-result v1

    goto :goto_11

    :cond_1b
    const/4 v9, 0x0

    const/16 v19, 0xf

    .line 103
    invoke-static {v1, v3, v5, v0}, Lcom/google/zxing/pdf417/decoder/b;->a(I[IILjava/lang/StringBuilder;)I

    move-result v1

    .line 116
    :goto_11
    array-length v5, v3

    if-ge v1, v5, :cond_1c

    const/16 v18, 0x1

    add-int/lit8 v5, v1, 0x1

    .line 117
    aget v1, v3, v1

    goto/16 :goto_a

    .line 119
    :cond_1c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 122
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1e

    .line 125
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2, v2}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    .line 123
    :cond_1e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 105
    :cond_1f
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 98
    :cond_20
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_21
    move-object/from16 v4, p0

    .line 132
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_22
    move-object/from16 v4, p0

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_23
    move-object/from16 v4, p0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_24
    move-object/from16 v4, p0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 49
    array-length v0, p1

    .line 50
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 53
    aget-object v5, p1, v4

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method
