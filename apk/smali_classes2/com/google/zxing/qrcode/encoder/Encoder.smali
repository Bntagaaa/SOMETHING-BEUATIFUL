.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 5

    .line 188
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 216
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    array-length p1, p0

    .line 221
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v1, p1, :cond_3

    .line 225
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x81

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-le v0, v2, :cond_2

    :cond_1
    const/16 v2, 0xe0

    if-lt v0, v2, :cond_4

    const/16 v2, 0xeb

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 190
    :cond_3
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :catch_0
    :cond_4
    :goto_1
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_5
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 194
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 195
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_6

    const/16 v3, 0x39

    if-gt v2, v3, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/16 p1, 0x60

    const/4 v3, -0x1

    if-ge v2, p1, :cond_7

    .line 174
    sget-object p1, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    aget p1, p1, v2

    goto :goto_3

    :cond_7
    const/4 p1, -0x1

    :goto_3
    if-eq p1, v3, :cond_8

    const/4 p1, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    :cond_8
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_9
    if-eqz p1, :cond_a

    .line 205
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    :cond_a
    if-eqz v0, :cond_b

    .line 208
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 210
    :cond_b
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method

.method public static b(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 255
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v2

    .line 259
    invoke-virtual {v1, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v3, p0, 0x7

    .line 263
    div-int/lit8 v3, v3, 0x8

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 84
    :cond_0
    sget-object v3, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    :goto_0
    const-string v3, "ISO-8859-1"

    if-nez v2, :cond_1

    move-object v2, v3

    .line 91
    :cond_1
    invoke-static {v0, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v4

    .line 95
    new-instance v5, Lcom/google/zxing/common/BitArray;

    invoke-direct {v5}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 98
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/16 v7, 0x8

    const/4 v8, 0x4

    if-ne v4, v6, :cond_2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 577
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v6

    invoke-virtual {v5, v6, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 579
    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v3

    invoke-virtual {v5, v3, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 449
    :cond_2
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v3

    invoke-virtual {v5, v3, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 110
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 471
    sget-object v6, Lcom/google/zxing/qrcode/encoder/Encoder$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v6, v6, v9

    const/4 v9, 0x7

    const/4 v10, -0x1

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v6, v12, :cond_f

    const/4 v14, 0x2

    if-eq v6, v14, :cond_9

    const/4 v14, 0x3

    if-eq v6, v14, :cond_8

    if-ne v6, v8, :cond_7

    .line 553
    :try_start_0
    const-string v2, "Shift_JIS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    array-length v6, v2

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v6, :cond_6

    .line 559
    aget-byte v15, v2, v14

    and-int/lit16 v15, v15, 0xff

    add-int/lit8 v16, v14, 0x1

    const/16 p2, 0x1

    .line 560
    aget-byte v12, v2, v16

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v15, v7

    or-int/2addr v12, v15

    const v15, 0x8140

    if-lt v12, v15, :cond_3

    const v16, 0x8140

    const v15, 0x9ffc

    if-gt v12, v15, :cond_3

    sub-int v12, v12, v16

    goto :goto_2

    :cond_3
    const v15, 0xe040

    if-lt v12, v15, :cond_4

    const v15, 0xebbf

    if-gt v12, v15, :cond_4

    const v15, 0xc140

    sub-int/2addr v12, v15

    goto :goto_2

    :cond_4
    const/4 v12, -0x1

    :goto_2
    if-eq v12, v10, :cond_5

    shr-int/lit8 v15, v12, 0x8

    mul-int/lit16 v15, v15, 0xc0

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v15, v12

    const/16 v12, 0xd

    .line 572
    invoke-virtual {v3, v15, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v14, v14, 0x2

    const/4 v12, 0x1

    goto :goto_1

    .line 569
    :cond_5
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid byte sequence"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 p2, 0x1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 555
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 485
    :cond_7
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 p2, 0x1

    .line 541
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    array-length v6, v2

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_12

    aget-byte v14, v2, v12

    .line 546
    invoke-virtual {v3, v14, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 543
    new-instance v1, Lcom/google/zxing/WriterException;

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    const/16 p2, 0x1

    .line 514
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_12

    .line 517
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 173
    sget-object v14, Lcom/google/zxing/qrcode/encoder/Encoder;->a:[I

    const/16 v15, 0x60

    if-ge v12, v15, :cond_a

    .line 174
    aget v12, v14, v12

    goto :goto_5

    :cond_a
    const/4 v12, -0x1

    :goto_5
    if-eq v12, v10, :cond_e

    add-int/lit8 v7, v6, 0x1

    if-ge v7, v2, :cond_d

    .line 522
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ge v7, v15, :cond_b

    .line 174
    aget v7, v14, v7

    goto :goto_6

    :cond_b
    const/4 v7, -0x1

    :goto_6
    if-eq v7, v10, :cond_c

    mul-int/lit8 v12, v12, 0x2d

    add-int/2addr v12, v7

    const/16 v7, 0xb

    .line 527
    invoke-virtual {v3, v12, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_7

    .line 524
    :cond_c
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_d
    const/4 v6, 0x6

    .line 531
    invoke-virtual {v3, v12, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v6, v7

    :goto_7
    const/16 v7, 0x8

    goto :goto_4

    .line 519
    :cond_e
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :cond_f
    const/16 p2, 0x1

    .line 490
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    :goto_8
    if-ge v6, v2, :cond_12

    .line 493
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/lit8 v12, v6, 0x2

    if-ge v12, v2, :cond_10

    add-int/lit8 v14, v6, 0x1

    .line 496
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, -0x30

    .line 497
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v7, v7, 0x64

    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v7

    add-int/2addr v14, v12

    .line 498
    invoke-virtual {v3, v14, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v6, v6, 0x3

    goto :goto_8

    :cond_10
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_11

    .line 502
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v6

    .line 503
    invoke-virtual {v3, v7, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    move v6, v12

    goto :goto_8

    .line 507
    :cond_11
    invoke-virtual {v3, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_8

    .line 117
    :cond_12
    :goto_9
    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-static/range {p2 .. p2}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    add-int/2addr v2, v6

    .line 120
    invoke-static {v2, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->b(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 124
    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v4, v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    add-int/2addr v6, v2

    .line 127
    invoke-static {v6, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->b(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v2

    .line 129
    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 130
    invoke-virtual {v6, v5}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 132
    sget-object v5, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v4, v5, :cond_13

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    goto :goto_a

    :cond_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 457
    :goto_a
    invoke-virtual {v4, v2}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    shl-int v7, p2, v5

    if-ge v0, v7, :cond_3c

    .line 461
    invoke-virtual {v6, v0, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 135
    invoke-virtual {v6, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 137
    invoke-virtual {v2, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    .line 138
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v5

    sub-int/2addr v3, v5

    shl-int/lit8 v5, v3, 0x3

    .line 276
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-gt v7, v5, :cond_3b

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v8, :cond_14

    .line 280
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v12

    if-ge v12, v5, :cond_14

    .line 281
    invoke-virtual {v6, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 285
    :cond_14
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    and-int/2addr v7, v9

    if-lez v7, :cond_15

    :goto_c
    const/16 v8, 0x8

    if-ge v7, v8, :cond_15

    .line 288
    invoke-virtual {v6, v13}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 292
    :cond_15
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    sub-int v7, v3, v7

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v7, :cond_17

    and-int/lit8 v9, v8, 0x1

    if-nez v9, :cond_16

    const/16 v9, 0xec

    :goto_e
    const/16 v12, 0x8

    goto :goto_f

    :cond_16
    const/16 v9, 0x11

    goto :goto_e

    .line 294
    :goto_f
    invoke-virtual {v6, v9, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 296
    :cond_17
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ne v7, v5, :cond_3a

    .line 144
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v5

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v0

    .line 368
    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    if-ne v7, v3, :cond_39

    .line 379
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_10
    if-ge v8, v0, :cond_1f

    const/4 v15, 0x1

    .line 382
    new-array v10, v15, [I

    const/16 v17, 0xa

    .line 383
    new-array v11, v15, [I

    if-ge v8, v0, :cond_1e

    .line 316
    rem-int v15, v5, v0

    const/16 v18, 0x0

    sub-int v13, v0, v15

    .line 320
    div-int v19, v5, v0

    add-int/lit8 v20, v19, 0x1

    .line 324
    div-int v21, v3, v0

    add-int/lit8 v22, v21, 0x1

    move-object/from16 p0, v10

    sub-int v10, v19, v21

    move-object/from16 v19, v11

    sub-int v11, v20, v22

    if-ne v10, v11, :cond_1d

    move/from16 v20, v10

    add-int v10, v13, v15

    if-ne v0, v10, :cond_1c

    add-int v10, v21, v20

    mul-int v10, v10, v13

    add-int v23, v22, v11

    mul-int v23, v23, v15

    add-int v10, v23, v10

    if-ne v5, v10, :cond_1b

    if-ge v8, v13, :cond_18

    .line 350
    aput v21, p0, v18

    .line 351
    aput v20, v19, v18

    goto :goto_11

    .line 353
    :cond_18
    aput v22, p0, v18

    .line 354
    aput v11, v19, v18

    .line 388
    :goto_11
    aget v10, p0, v18

    .line 389
    new-array v11, v10, [B

    mul-int/lit8 v13, v9, 0x8

    const/4 v15, 0x0

    .line 390
    invoke-virtual {v6, v13, v11, v15, v10}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 391
    aget v13, v19, v15

    add-int v15, v10, v13

    .line 432
    new-array v15, v15, [I

    move/from16 v19, v0

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v10, :cond_19

    move/from16 v20, v0

    .line 434
    aget-byte v0, v11, v20

    and-int/lit16 v0, v0, 0xff

    aput v0, v15, v20

    add-int/lit8 v0, v20, 0x1

    goto :goto_12

    .line 436
    :cond_19
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    move-object/from16 v20, v6

    sget-object v6, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v6}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v0, v15, v13}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 438
    new-array v0, v13, [B

    const/4 v6, 0x0

    :goto_13
    if-ge v6, v13, :cond_1a

    add-int v21, v10, v6

    move/from16 v22, v6

    .line 440
    aget v6, v15, v21

    int-to-byte v6, v6

    aput-byte v6, v0, v22

    add-int/lit8 v6, v22, 0x1

    goto :goto_13

    .line 392
    :cond_1a
    new-instance v6, Lcom/google/zxing/qrcode/encoder/a;

    invoke-direct {v6, v11, v0}, Lcom/google/zxing/qrcode/encoder/a;-><init>([B[B)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 395
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/16 v18, 0x0

    .line 396
    aget v0, p0, v18

    add-int/2addr v9, v0

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v19

    move-object/from16 v6, v20

    const/16 p2, 0x1

    const/4 v10, -0x1

    const/16 v11, 0xa

    const/4 v13, 0x0

    goto/16 :goto_10

    .line 346
    :cond_1b
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Total bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1c
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "RS blocks mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_1d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "EC bytes mismatch"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1e
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Block ID too large"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/16 v17, 0xa

    if-ne v3, v9, :cond_38

    .line 402
    new-instance v0, Lcom/google/zxing/common/BitArray;

    invoke-direct {v0}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v12, :cond_22

    .line 406
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/encoder/a;

    .line 407
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/a;->getDataBytes()[B

    move-result-object v6

    .line 408
    array-length v8, v6

    if-ge v15, v8, :cond_20

    .line 409
    aget-byte v6, v6, v15

    const/16 v8, 0x8

    invoke-virtual {v0, v6, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_15

    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    :cond_22
    const/4 v15, 0x0

    :goto_16
    if-ge v15, v14, :cond_25

    .line 415
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/qrcode/encoder/a;

    .line 416
    invoke-virtual {v6}, Lcom/google/zxing/qrcode/encoder/a;->getErrorCorrectionBytes()[B

    move-result-object v6

    .line 417
    array-length v8, v6

    if-ge v15, v8, :cond_23

    .line 418
    aget-byte v6, v6, v15

    const/16 v8, 0x8

    invoke-virtual {v0, v6, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_17

    :cond_24
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 422
    :cond_25
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    if-ne v5, v3, :cond_37

    .line 149
    new-instance v3, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct {v3}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    .line 151
    invoke-virtual {v3, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 152
    invoke-virtual {v3, v4}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 153
    invoke-virtual {v3, v2}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 156
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    .line 157
    new-instance v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v5, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const v4, 0x7fffffff

    const/4 v10, -0x1

    const/4 v15, 0x0

    :goto_18
    const/16 v8, 0x8

    if-ge v15, v8, :cond_36

    .line 242
    invoke-static {v0, v1, v2, v15, v5}, Lcom/google/zxing/qrcode/encoder/c;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v6, 0x1

    .line 41
    invoke-static {v5, v6}, Lcom/google/zxing/qrcode/encoder/b;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/google/zxing/qrcode/encoder/b;->a(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v11

    add-int/2addr v7, v11

    .line 51
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v11

    .line 52
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v12

    .line 53
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_19
    const/16 p2, 0x1

    add-int/lit8 v6, v13, -0x1

    if-ge v14, v6, :cond_28

    const/4 v6, 0x0

    :goto_1a
    add-int/lit8 v8, v12, -0x1

    if-ge v6, v8, :cond_27

    .line 56
    aget-object v8, v11, v14

    aget-byte v9, v8, v6

    add-int/lit8 v19, v6, 0x1

    .line 57
    aget-byte v8, v8, v19

    if-ne v9, v8, :cond_26

    add-int/lit8 v8, v14, 0x1

    aget-object v8, v11, v8

    aget-byte v6, v8, v6

    if-ne v9, v6, :cond_26

    aget-byte v6, v8, v19

    if-ne v9, v6, :cond_26

    add-int/lit8 v16, v16, 0x1

    :cond_26
    move/from16 v6, v19

    const/16 p2, 0x1

    const/4 v9, 0x0

    goto :goto_1a

    :cond_27
    add-int/lit8 v14, v14, 0x1

    const/16 v8, 0x8

    const/4 v9, 0x0

    goto :goto_19

    :cond_28
    mul-int/lit8 v16, v16, 0x3

    add-int v16, v16, v7

    .line 72
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v6

    .line 73
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    .line 74
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1b
    if-ge v9, v8, :cond_31

    const/4 v12, 0x0

    :goto_1c
    if-ge v12, v7, :cond_30

    add-int/lit8 v13, v12, 0x6

    if-ge v13, v7, :cond_2b

    .line 78
    aget-object v14, v6, v9

    move-object/from16 p0, v6

    aget-byte v6, v14, v12

    move/from16 v19, v9

    const/4 v9, 0x1

    if-ne v6, v9, :cond_2c

    add-int/lit8 v6, v12, 0x1

    aget-byte v6, v14, v6

    if-nez v6, :cond_2c

    add-int/lit8 v6, v12, 0x2

    aget-byte v6, v14, v6

    if-ne v6, v9, :cond_2c

    add-int/lit8 v6, v12, 0x3

    aget-byte v6, v14, v6

    if-ne v6, v9, :cond_2c

    add-int/lit8 v6, v12, 0x4

    aget-byte v6, v14, v6

    if-ne v6, v9, :cond_2c

    add-int/lit8 v6, v12, 0x5

    aget-byte v6, v14, v6

    if-nez v6, :cond_2c

    aget-byte v6, v14, v13

    if-ne v6, v9, :cond_2c

    add-int/lit8 v6, v12, 0xa

    if-ge v6, v7, :cond_29

    add-int/lit8 v9, v12, 0x7

    aget-byte v9, v14, v9

    if-nez v9, :cond_29

    add-int/lit8 v9, v12, 0x8

    aget-byte v9, v14, v9

    if-nez v9, :cond_29

    add-int/lit8 v9, v12, 0x9

    aget-byte v9, v14, v9

    if-nez v9, :cond_29

    aget-byte v6, v14, v6

    if-eqz v6, :cond_2a

    :cond_29
    add-int/lit8 v6, v12, -0x4

    if-ltz v6, :cond_2c

    add-int/lit8 v9, v12, -0x1

    aget-byte v9, v14, v9

    if-nez v9, :cond_2c

    add-int/lit8 v9, v12, -0x2

    aget-byte v9, v14, v9

    if-nez v9, :cond_2c

    add-int/lit8 v9, v12, -0x3

    aget-byte v9, v14, v9

    if-nez v9, :cond_2c

    aget-byte v6, v14, v6

    if-nez v6, :cond_2c

    :cond_2a
    add-int/lit8 v11, v11, 0x28

    goto :goto_1d

    :cond_2b
    move-object/from16 p0, v6

    move/from16 v19, v9

    :cond_2c
    :goto_1d
    add-int/lit8 v9, v19, 0x6

    if-ge v9, v8, :cond_2f

    .line 98
    aget-object v6, p0, v19

    aget-byte v6, v6, v12

    const/4 v13, 0x1

    if-ne v6, v13, :cond_2f

    add-int/lit8 v6, v19, 0x1

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2f

    add-int/lit8 v6, v19, 0x2

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-ne v6, v13, :cond_2f

    add-int/lit8 v6, v19, 0x3

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-ne v6, v13, :cond_2f

    add-int/lit8 v6, v19, 0x4

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-ne v6, v13, :cond_2f

    add-int/lit8 v6, v19, 0x5

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2f

    aget-object v6, p0, v9

    aget-byte v6, v6, v12

    if-ne v6, v13, :cond_2f

    add-int/lit8 v9, v19, 0xa

    if-ge v9, v8, :cond_2d

    add-int/lit8 v6, v19, 0x7

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2d

    add-int/lit8 v6, v19, 0x8

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2d

    add-int/lit8 v6, v19, 0x9

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2d

    aget-object v6, p0, v9

    aget-byte v6, v6, v12

    if-eqz v6, :cond_2e

    :cond_2d
    add-int/lit8 v9, v19, -0x4

    if-ltz v9, :cond_2f

    add-int/lit8 v6, v19, -0x1

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2f

    add-int/lit8 v6, v19, -0x2

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2f

    add-int/lit8 v6, v19, -0x3

    aget-object v6, p0, v6

    aget-byte v6, v6, v12

    if-nez v6, :cond_2f

    aget-object v6, p0, v9

    aget-byte v6, v6, v12

    if-nez v6, :cond_2f

    :cond_2e
    add-int/lit8 v11, v11, 0x28

    :cond_2f
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, p0

    move/from16 v9, v19

    goto/16 :goto_1c

    :cond_30
    move-object/from16 p0, v6

    move/from16 v19, v9

    add-int/lit8 v9, v19, 0x1

    goto/16 :goto_1b

    :cond_31
    add-int v16, v16, v11

    .line 129
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v6

    .line 130
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    .line 131
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_1e
    if-ge v9, v8, :cond_34

    .line 133
    aget-object v12, v6, v9

    const/4 v13, 0x0

    :goto_1f
    if-ge v13, v7, :cond_33

    .line 135
    aget-byte v14, v12, v13

    move-object/from16 p0, v6

    const/4 v6, 0x1

    if-ne v14, v6, :cond_32

    add-int/lit8 v11, v11, 0x1

    :cond_32
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v6, p0

    goto :goto_1f

    :cond_33
    move-object/from16 p0, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 140
    :cond_34
    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    mul-int v7, v7, v6

    int-to-double v8, v11

    int-to-double v6, v7

    div-double/2addr v8, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v8, v6

    .line 142
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    mul-double v6, v6, v8

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0xa

    add-int v6, v6, v16

    if-ge v6, v4, :cond_35

    move v4, v6

    move v10, v15

    :cond_35
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_18

    .line 159
    :cond_36
    invoke-virtual {v3, v10}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 162
    invoke-static {v0, v1, v2, v10, v5}, Lcom/google/zxing/qrcode/encoder/c;->a(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    invoke-virtual {v3, v5}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-object v3

    .line 423
    :cond_37
    new-instance v1, Lcom/google/zxing/WriterException;

    const-string v2, "Interleaving error: "

    const-string v3, " and "

    .line 0
    invoke-static {v5, v2, v3}, L_COROUTINE/a;->o(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 423
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_38
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_39
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_3a
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Bits size does not equal capacity"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    move-object/from16 v20, v6

    .line 277
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_3c
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is bigger than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    sub-int/2addr v7, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
