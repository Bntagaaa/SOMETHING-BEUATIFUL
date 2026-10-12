.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v8, 0x1

    .line 87
    new-instance v9, Lcom/google/zxing/qrcode/decoder/a;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Lcom/google/zxing/qrcode/decoder/a;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 88
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/a;->c()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v10

    .line 89
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/a;->b()Lcom/google/zxing/qrcode/decoder/e;

    move-result-object v11

    .line 150
    iget-object v11, v11, Lcom/google/zxing/qrcode/decoder/e;->a:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 153
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/a;->b()Lcom/google/zxing/qrcode/decoder/e;

    move-result-object v12

    .line 154
    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/a;->c()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v13

    .line 154
    iget-byte v12, v12, Lcom/google/zxing/qrcode/decoder/e;->b:B

    .line 158
    sget-object v14, Lcom/google/zxing/qrcode/decoder/c;->a:[Lcom/google/zxing/qrcode/decoder/c;

    if-ltz v12, :cond_4e

    const/4 v14, 0x7

    if-gt v12, v14, :cond_4e

    .line 79
    sget-object v15, Lcom/google/zxing/qrcode/decoder/c;->a:[Lcom/google/zxing/qrcode/decoder/c;

    aget-object v12, v15, v12

    .line 159
    iget-object v9, v9, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v15

    .line 160
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x64

    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v15, :cond_1

    .line 61
    invoke-virtual {v12, v14, v7}, Lcom/google/zxing/qrcode/decoder/c;->a(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 62
    invoke-virtual {v9, v7, v14}, Lcom/google/zxing/common/BitMatrix;->flip(II)V

    :cond_0
    add-int/2addr v7, v8

    goto :goto_1

    :cond_1
    add-int/2addr v14, v8

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v7

    .line 141
    new-instance v12, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v12, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/16 v14, 0x9

    .line 144
    invoke-virtual {v12, v0, v0, v14, v14}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    const/16 v18, 0xd

    add-int/lit8 v3, v7, -0x8

    .line 146
    invoke-virtual {v12, v3, v0, v6, v14}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 148
    invoke-virtual {v12, v0, v3, v14, v6}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 151
    iget-object v3, v13, Lcom/google/zxing/qrcode/decoder/Version;->b:[I

    array-length v4, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_7

    .line 153
    aget v21, v3, v1

    add-int/lit8 v6, v21, -0x2

    const/4 v5, 0x0

    const/16 v21, 0x2

    :goto_3
    if-ge v5, v4, :cond_6

    if-nez v1, :cond_3

    if-eqz v5, :cond_5

    add-int/lit8 v0, v4, -0x1

    if-eq v5, v0, :cond_5

    :cond_3
    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_4

    if-nez v5, :cond_4

    goto :goto_4

    .line 159
    :cond_4
    aget v0, v3, v5

    add-int/lit8 v0, v0, -0x2

    const/4 v2, 0x5

    invoke-virtual {v12, v0, v6, v2, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_5
    :goto_4
    add-int/2addr v5, v8

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    add-int/2addr v1, v8

    const/4 v0, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x8

    goto :goto_2

    :cond_7
    const/16 v21, 0x2

    add-int/lit8 v0, v7, -0x11

    const/4 v1, 0x6

    .line 164
    invoke-virtual {v12, v1, v14, v8, v0}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 166
    invoke-virtual {v12, v14, v1, v0, v8}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 168
    iget v0, v13, Lcom/google/zxing/qrcode/decoder/Version;->a:I

    const/16 v2, 0xb

    if-le v0, v1, :cond_8

    sub-int/2addr v7, v2

    const/4 v0, 0x0

    const/4 v3, 0x3

    .line 170
    invoke-virtual {v12, v7, v0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 172
    invoke-virtual {v12, v0, v7, v1, v3}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 165
    :cond_8
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v0

    new-array v3, v0, [B

    add-int/lit8 v4, v15, -0x1

    move v14, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v25, 0x1

    :goto_5
    if-lez v14, :cond_10

    if-ne v14, v1, :cond_9

    add-int/lit8 v14, v14, -0x1

    :cond_9
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v15, :cond_f

    if-eqz v25, :cond_a

    sub-int v26, v4, v1

    move/from16 v2, v26

    goto :goto_7

    :cond_a
    move v2, v1

    :goto_7
    move/from16 v28, v1

    const/4 v8, 0x0

    const/16 v27, 0x1

    :goto_8
    const/4 v1, 0x2

    if-ge v8, v1, :cond_e

    sub-int v1, v14, v8

    .line 181
    invoke-virtual {v12, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v29

    if-nez v29, :cond_d

    add-int/lit8 v6, v6, 0x1

    shl-int/lit8 v7, v7, 0x1

    .line 185
    invoke-virtual {v9, v1, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit8 v1, v7, 0x1

    :goto_9
    const/16 v7, 0x8

    goto :goto_a

    :cond_b
    move v1, v7

    goto :goto_9

    :goto_a
    if-ne v6, v7, :cond_c

    add-int/lit8 v6, v5, 0x1

    int-to-byte v1, v1

    .line 190
    aput-byte v1, v3, v5

    move v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_b

    :cond_c
    move v7, v1

    :cond_d
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v1, v28, 0x1

    const/16 v2, 0xb

    const/4 v8, 0x1

    const/16 v21, 0x2

    goto :goto_6

    :cond_f
    const/16 v27, 0x1

    xor-int/lit8 v25, v25, 0x1

    add-int/lit8 v14, v14, -0x2

    const/4 v1, 0x6

    const/16 v2, 0xb

    const/4 v8, 0x1

    const/16 v21, 0x2

    goto :goto_5

    :cond_10
    const/16 v27, 0x1

    .line 199
    invoke-virtual {v13}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v5, v1, :cond_4d

    .line 51
    invoke-virtual {v10}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 57
    invoke-virtual {v10, v11}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v1

    .line 62
    array-length v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_11

    aget-object v6, v1, v5

    .line 63
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 67
    :cond_11
    new-array v2, v4, [Lcom/google/zxing/qrcode/decoder/b;

    .line 69
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v5, :cond_13

    aget-object v8, v1, v7

    const/4 v9, 0x0

    .line 70
    :goto_e
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v12

    if-ge v9, v12, :cond_12

    .line 71
    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v12

    .line 72
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v13

    add-int/2addr v13, v12

    add-int/lit8 v14, v6, 0x1

    .line 73
    new-instance v15, Lcom/google/zxing/qrcode/decoder/b;

    new-array v13, v13, [B

    invoke-direct {v15, v12, v13}, Lcom/google/zxing/qrcode/decoder/b;-><init>(I[B)V

    aput-object v15, v2, v6

    add-int/lit8 v9, v9, 0x1

    move v6, v14

    goto :goto_e

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_13
    const/16 v23, 0x0

    .line 79
    aget-object v1, v2, v23

    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    array-length v1, v1

    add-int/lit8 v5, v4, -0x1

    :goto_f
    if-ltz v5, :cond_15

    .line 82
    aget-object v7, v2, v5

    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    array-length v7, v7

    if-ne v7, v1, :cond_14

    goto :goto_10

    :cond_14
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    :cond_15
    :goto_10
    add-int/lit8 v5, v5, 0x1

    .line 90
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v0

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_11
    if-ge v0, v1, :cond_17

    move v8, v7

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v6, :cond_16

    .line 96
    aget-object v9, v2, v7

    iget-object v9, v9, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    add-int/lit8 v12, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v9, v0

    add-int/lit8 v7, v7, 0x1

    move v8, v12

    goto :goto_12

    :cond_16
    add-int/lit8 v0, v0, 0x1

    move v7, v8

    goto :goto_11

    :cond_17
    move v0, v5

    :goto_13
    if-ge v0, v6, :cond_18

    .line 101
    aget-object v8, v2, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v8, v1

    add-int/lit8 v0, v0, 0x1

    move v7, v9

    goto :goto_13

    :cond_18
    const/16 v23, 0x0

    .line 104
    aget-object v0, v2, v23

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    array-length v0, v0

    :goto_14
    if-ge v1, v0, :cond_1b

    move v8, v7

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v6, :cond_1a

    if-ge v7, v5, :cond_19

    move v9, v1

    goto :goto_16

    :cond_19
    add-int/lit8 v9, v1, 0x1

    .line 108
    :goto_16
    aget-object v12, v2, v7

    iget-object v12, v12, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    add-int/lit8 v13, v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v12, v9

    add-int/lit8 v7, v7, 0x1

    move v8, v13

    goto :goto_15

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_14

    :cond_1b
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_17
    if-ge v0, v4, :cond_1c

    .line 98
    aget-object v3, v2, v0

    .line 115
    iget v3, v3, Lcom/google/zxing/qrcode/decoder/b;->a:I

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 101
    :cond_1c
    new-array v0, v1, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_18
    if-ge v1, v4, :cond_20

    .line 105
    aget-object v5, v2, v1

    .line 119
    iget-object v6, v5, Lcom/google/zxing/qrcode/decoder/b;->b:[B

    .line 127
    array-length v7, v6

    .line 129
    new-array v8, v7, [I

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v7, :cond_1d

    .line 131
    aget-byte v12, v6, v9

    and-int/lit16 v12, v12, 0xff

    aput v12, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 133
    :cond_1d
    array-length v7, v6

    iget v5, v5, Lcom/google/zxing/qrcode/decoder/b;->a:I

    sub-int/2addr v7, v5

    move-object/from16 v9, p0

    .line 135
    :try_start_0
    iget-object v12, v9, Lcom/google/zxing/qrcode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    invoke-virtual {v12, v8, v7}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :goto_1a
    if-ge v7, v5, :cond_1e

    .line 142
    aget v12, v8, v7

    int-to-byte v12, v12

    aput-byte v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :cond_1e
    move v7, v3

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v5, :cond_1f

    add-int/lit8 v8, v7, 0x1

    .line 110
    aget-byte v12, v6, v3

    aput-byte v12, v0, v7

    add-int/lit8 v3, v3, 0x1

    move v7, v8

    goto :goto_1b

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto :goto_18

    .line 137
    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_20
    move-object/from16 v9, p0

    .line 60
    new-instance v1, Lcom/google/zxing/common/BitSource;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 68
    :goto_1c
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_21

    .line 70
    sget-object v7, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_1d

    .line 73
    :cond_21
    :try_start_1
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    .line 78
    :goto_1d
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v7, v12, :cond_28

    .line 79
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v7, v12, :cond_22

    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v12, :cond_23

    :cond_22
    move-object/from16 v12, p2

    move-object/from16 v19, v1

    const/16 v15, 0xc0

    const/16 v21, 0x2

    const/16 v22, 0x8

    const/16 v24, 0x3

    const/16 v27, 0x1

    goto/16 :goto_2e

    .line 82
    :cond_23
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    const/16 v13, 0x10

    if-ne v7, v12, :cond_25

    .line 83
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-lt v8, v13, :cond_24

    .line 88
    invoke-virtual {v1, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    goto :goto_1f

    .line 84
    :cond_24
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 89
    :cond_25
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v12, :cond_2b

    const/16 v12, 0x8

    .line 329
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    const/16 v14, 0x80

    and-int/lit16 v8, v6, 0x80

    if-nez v8, :cond_26

    and-int/lit8 v6, v6, 0x7f

    goto :goto_1e

    :cond_26
    const/16 v8, 0xc0

    and-int/lit16 v15, v6, 0xc0

    if-ne v15, v14, :cond_27

    .line 336
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    and-int/lit8 v6, v6, 0x3f

    shl-int/2addr v6, v12

    or-int/2addr v6, v13

    goto :goto_1e

    :cond_27
    and-int/lit16 v12, v6, 0xe0

    if-ne v12, v8, :cond_2a

    .line 341
    invoke-virtual {v1, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    and-int/lit8 v6, v6, 0x1f

    shl-int/2addr v6, v13

    or-int/2addr v6, v8

    .line 92
    :goto_1e
    invoke-static {v6}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    if-eqz v6, :cond_29

    :cond_28
    :goto_1f
    move-object/from16 v12, p2

    move-object/from16 v19, v1

    const/16 v15, 0xc0

    const/16 v21, 0x2

    const/16 v22, 0x8

    const/16 v24, 0x3

    :goto_20
    const/16 v27, 0x1

    goto/16 :goto_2f

    .line 94
    :cond_29
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 344
    :cond_2a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2b
    const/16 v14, 0x80

    .line 98
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v12, :cond_2f

    .line 100
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    .line 101
    invoke-virtual {v7, v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v12

    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v8, v13, :cond_28

    mul-int/lit8 v8, v12, 0xd

    .line 138
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v13

    if-gt v8, v13, :cond_2e

    const/16 v21, 0x2

    mul-int/lit8 v8, v12, 0x2

    .line 144
    new-array v8, v8, [B

    move v13, v12

    const/4 v12, 0x0

    :goto_21
    if-lez v13, :cond_2d

    const/16 v15, 0xd

    .line 148
    invoke-virtual {v1, v15}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v20

    .line 149
    div-int/lit8 v15, v20, 0x60

    const/16 v22, 0x8

    shl-int/lit8 v15, v15, 0x8

    rem-int/lit8 v20, v20, 0x60

    or-int v15, v15, v20

    const/16 v4, 0x3bf

    if-ge v15, v4, :cond_2c

    const v4, 0xa1a1

    :goto_22
    add-int/2addr v15, v4

    goto :goto_23

    :cond_2c
    const v4, 0xa6a1

    goto :goto_22

    :goto_23
    shr-int/lit8 v4, v15, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 157
    aput-byte v4, v8, v12

    const/16 v27, 0x1

    add-int/lit8 v4, v12, 0x1

    and-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    .line 158
    aput-byte v15, v8, v4

    const/16 v21, 0x2

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v13, v13, -0x1

    const/16 v18, 0xd

    goto :goto_21

    .line 164
    :cond_2d
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string v12, "GB2312"

    invoke-direct {v4, v8, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1f

    .line 166
    :catch_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 139
    :cond_2e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 108
    :cond_2f
    invoke-virtual {v7, v10}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    .line 109
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v12, :cond_39

    :goto_24
    const/4 v12, 0x3

    if-lt v4, v12, :cond_32

    .line 292
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    const/16 v13, 0xa

    if-lt v12, v13, :cond_31

    .line 295
    invoke-virtual {v1, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    const/16 v15, 0x3e8

    if-ge v12, v15, :cond_30

    .line 299
    div-int/lit8 v15, v12, 0x64

    invoke-static {v15}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    div-int/lit8 v15, v12, 0xa

    rem-int/2addr v15, v13

    invoke-static {v15}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    rem-int/2addr v12, v13

    invoke-static {v12}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x3

    goto :goto_24

    .line 297
    :cond_30
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 293
    :cond_31
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_32
    const/4 v12, 0x2

    if-ne v4, v12, :cond_36

    .line 306
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/4 v12, 0x7

    if-lt v4, v12, :cond_35

    .line 309
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    const/16 v13, 0x64

    if-ge v4, v13, :cond_34

    const/16 v17, 0xa

    .line 313
    div-int/lit8 v8, v4, 0xa

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_33
    const/16 v8, 0xa

    goto/16 :goto_1f

    .line 311
    :cond_34
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 307
    :cond_35
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_36
    const/4 v12, 0x7

    const/16 v13, 0x64

    const/4 v15, 0x1

    if-ne v4, v15, :cond_33

    .line 317
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    if-lt v4, v8, :cond_38

    .line 320
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    const/16 v8, 0xa

    if-ge v4, v8, :cond_37

    .line 324
    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    .line 322
    :cond_37
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 318
    :cond_38
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_39
    const/16 v8, 0xa

    const/4 v12, 0x7

    const/16 v13, 0x64

    .line 111
    sget-object v15, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v15, :cond_40

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    :goto_25
    const/4 v8, 0x1

    if-le v4, v8, :cond_3b

    .line 254
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    const/16 v12, 0xb

    if-lt v8, v12, :cond_3a

    .line 257
    invoke-virtual {v1, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    .line 258
    div-int/lit8 v16, v8, 0x2d

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    rem-int/lit8 v8, v8, 0x2d

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x2

    const/4 v12, 0x7

    goto :goto_25

    .line 255
    :cond_3a
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3b
    if-ne v4, v8, :cond_3d

    .line 264
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/4 v8, 0x6

    if-lt v4, v8, :cond_3c

    .line 267
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/decoder/d;->a(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 265
    :cond_3c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3d
    const/4 v8, 0x6

    :goto_26
    if-eqz v5, :cond_28

    .line 272
    :goto_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v15, v4, :cond_28

    .line 273
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v12, 0x25

    if-ne v4, v12, :cond_3f

    .line 274
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v27, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v15, v4, :cond_3e

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v12, :cond_3e

    .line 276
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_3e
    const/16 v4, 0x1d

    .line 279
    invoke-virtual {v2, v15, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_28

    :cond_3f
    const/16 v27, 0x1

    :goto_28
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x6

    goto :goto_27

    .line 113
    :cond_40
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v8, :cond_44

    const/16 v24, 0x3

    shl-int/lit8 v8, v4, 0x3

    .line 213
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    if-gt v8, v12, :cond_43

    .line 217
    new-array v8, v4, [B

    const/4 v12, 0x0

    :goto_29
    if-ge v12, v4, :cond_41

    const/16 v15, 0x8

    .line 219
    invoke-virtual {v1, v15}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v8, v12

    const/16 v27, 0x1

    add-int/lit8 v12, v12, 0x1

    const/16 v13, 0x64

    goto :goto_29

    :cond_41
    if-nez v6, :cond_42

    move-object/from16 v12, p2

    .line 228
    invoke-static {v8, v12}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2a

    :cond_42
    move-object/from16 v12, p2

    .line 230
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 233
    :goto_2a
    :try_start_3
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    .line 237
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v1

    const/16 v15, 0xc0

    const/16 v21, 0x2

    const/16 v22, 0x8

    goto/16 :goto_20

    .line 235
    :catch_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 214
    :cond_43
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_44
    move-object/from16 v12, p2

    const/16 v24, 0x3

    .line 115
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v8, :cond_48

    const/16 v15, 0xd

    mul-int/lit8 v8, v4, 0xd

    .line 174
    invoke-virtual {v1}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v13

    if-gt v8, v13, :cond_47

    const/16 v21, 0x2

    mul-int/lit8 v8, v4, 0x2

    .line 180
    new-array v8, v8, [B

    move v13, v4

    const/4 v4, 0x0

    :goto_2b
    if-lez v13, :cond_46

    .line 184
    invoke-virtual {v1, v15}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v14

    move-object/from16 v19, v1

    const/16 v15, 0xc0

    .line 185
    div-int/lit16 v1, v14, 0xc0

    const/16 v22, 0x8

    shl-int/lit8 v1, v1, 0x8

    rem-int/2addr v14, v15

    or-int/2addr v1, v14

    const/16 v14, 0x1f00

    if-ge v1, v14, :cond_45

    const v14, 0x8140

    :goto_2c
    add-int/2addr v1, v14

    goto :goto_2d

    :cond_45
    const v14, 0xc140

    goto :goto_2c

    :goto_2d
    shr-int/lit8 v14, v1, 0x8

    int-to-byte v14, v14

    .line 193
    aput-byte v14, v8, v4

    const/16 v27, 0x1

    add-int/lit8 v14, v4, 0x1

    int-to-byte v1, v1

    .line 194
    aput-byte v1, v8, v14

    const/16 v21, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v1, v19

    const/16 v14, 0x80

    const/16 v15, 0xd

    goto :goto_2b

    :cond_46
    move-object/from16 v19, v1

    const/16 v15, 0xc0

    const/16 v21, 0x2

    const/16 v22, 0x8

    const/16 v27, 0x1

    .line 200
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string v4, "SJIS"

    invoke-direct {v1, v8, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2f

    .line 202
    :catch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 175
    :cond_47
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 118
    :cond_48
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :goto_2e
    const/4 v5, 0x1

    .line 123
    :goto_2f
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v7, v1, :cond_4b

    .line 125
    new-instance v1, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_49

    const/4 v3, 0x0

    :cond_49
    if-nez v11, :cond_4a

    const/4 v4, 0x0

    goto :goto_30

    :cond_4a
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_30
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v1

    :cond_4b
    move-object/from16 v1, v19

    const/16 v16, 0x64

    const/16 v18, 0xd

    goto/16 :goto_1c

    .line 75
    :catch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4c
    move-object/from16 v9, p0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4d
    move-object/from16 v9, p0

    .line 200
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4e
    move-object/from16 v9, p0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 59
    array-length v0, p1

    .line 60
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 63
    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v1, v4, v3}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method
