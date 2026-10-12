.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    sget-object v1, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v0, v1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    return-void
.end method


# virtual methods
.method public final a([BIIII)V
    .locals 7

    add-int v0, p3, p4

    if-nez p5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 94
    :goto_0
    div-int v2, v0, v1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    if-eqz p5, :cond_1

    .line 96
    rem-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, p5, -0x1

    if-ne v5, v6, :cond_2

    .line 97
    :cond_1
    div-int v5, v4, v1

    add-int v6, v4, p2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/maxicode/decoder/Decoder;->a:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    div-int/2addr p4, v1

    invoke-virtual {v0, v2, p4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-ge v3, p3, :cond_6

    if-eqz p5, :cond_4

    .line 108
    rem-int/lit8 p4, v3, 0x2

    add-int/lit8 v0, p5, -0x1

    if-ne p4, v0, :cond_5

    :cond_4
    add-int p4, v3, p2

    .line 109
    div-int v0, v3, v1

    aget v0, v2, v0

    int-to-byte v0, v0

    aput-byte v0, p1, p4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void

    .line 103
    :catch_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 21
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

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x2

    const/16 v9, 0xa

    const/4 v10, 0x1

    const/16 v12, 0x90

    .line 73
    new-array v14, v12, [B

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v13

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v15

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v13, :cond_2

    .line 77
    sget-object v16, Lcom/google/zxing/maxicode/decoder/a;->a:[[I

    aget-object v16, v16, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v15, :cond_1

    .line 79
    aget v17, v16, v6

    move-object/from16 v11, p1

    const/16 v19, 0x6

    if-ltz v17, :cond_0

    .line 80
    invoke-virtual {v11, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 81
    div-int/lit8 v18, v17, 0x6

    aget-byte v20, v14, v18

    rem-int/lit8 v17, v17, 0x6

    rsub-int/lit8 v17, v17, 0x5

    shl-int v5, v10, v17

    int-to-byte v5, v5

    or-int v5, v20, v5

    int-to-byte v5, v5

    aput-byte v5, v14, v18

    :cond_0
    add-int/2addr v6, v10

    goto :goto_1

    :cond_1
    move-object/from16 v11, p1

    const/16 v19, 0x6

    add-int/2addr v4, v10

    goto :goto_0

    :cond_2
    const/16 v19, 0x6

    const/4 v15, 0x0

    const/16 v16, 0xa

    const/16 v17, 0xa

    const/16 v18, 0x0

    move-object/from16 v13, p0

    .line 57
    invoke-virtual/range {v13 .. v18}, Lcom/google/zxing/maxicode/decoder/Decoder;->a([BIIII)V

    .line 58
    aget-byte v4, v14, v3

    and-int/lit8 v4, v4, 0xf

    if-eq v4, v8, :cond_4

    if-eq v4, v0, :cond_4

    if-eq v4, v1, :cond_4

    if-ne v4, v2, :cond_3

    const/16 v15, 0x14

    const/16 v16, 0x44

    const/16 v17, 0x38

    const/16 v18, 0x1

    move-object/from16 v13, p0

    .line 69
    invoke-virtual/range {v13 .. v18}, Lcom/google/zxing/maxicode/decoder/Decoder;->a([BIIII)V

    const/16 v18, 0x2

    .line 70
    invoke-virtual/range {v13 .. v18}, Lcom/google/zxing/maxicode/decoder/Decoder;->a([BIIII)V

    const/16 v5, 0x4e

    .line 71
    new-array v5, v5, [B

    goto :goto_2

    .line 74
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4
    const/16 v15, 0x14

    const/16 v16, 0x54

    const/16 v17, 0x28

    const/16 v18, 0x1

    move-object/from16 v13, p0

    .line 64
    invoke-virtual/range {v13 .. v18}, Lcom/google/zxing/maxicode/decoder/Decoder;->a([BIIII)V

    const/16 v18, 0x2

    .line 65
    invoke-virtual/range {v13 .. v18}, Lcom/google/zxing/maxicode/decoder/Decoder;->a([BIIII)V

    const/16 v5, 0x5e

    .line 66
    new-array v5, v5, [B

    .line 77
    :goto_2
    invoke-static {v14, v3, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    array-length v6, v5

    sub-int/2addr v6, v9

    invoke-static {v14, v7, v5, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    sget-object v6, Lcom/google/zxing/maxicode/decoder/b;->a:Ljava/text/DecimalFormat;

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eq v4, v8, :cond_7

    if-eq v4, v0, :cond_7

    if-eq v4, v1, :cond_6

    if-eq v4, v2, :cond_5

    goto/16 :goto_4

    :cond_5
    const/16 v0, 0x4d

    .line 89
    invoke-static {v5, v10, v0}, Lcom/google/zxing/maxicode/decoder/b;->b([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_6
    const/16 v0, 0x5d

    .line 86
    invoke-static {v5, v10, v0}, Lcom/google/zxing/maxicode/decoder/b;->b([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_7
    if-ne v4, v8, :cond_8

    const/16 v7, 0x1e

    .line 121
    new-array v0, v7, [B

    fill-array-data v0, :array_0

    invoke-static {v5, v0}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v0

    .line 71
    new-instance v1, Ljava/text/DecimalFormat;

    const/4 v2, 0x6

    .line 117
    new-array v2, v2, [B

    fill-array-data v2, :array_1

    invoke-static {v5, v2}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v2

    .line 71
    const-string v7, "0000000000"

    invoke-virtual {v7, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v7, v0

    .line 72
    invoke-virtual {v1, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 126
    :cond_8
    sget-object v7, Lcom/google/zxing/maxicode/decoder/b;->c:[Ljava/lang/String;

    aget-object v11, v7, v3

    const/4 v12, 0x6

    new-array v13, v12, [B

    fill-array-data v13, :array_2

    invoke-static {v5, v13}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget-object v13, v7, v3

    new-array v14, v12, [B

    fill-array-data v14, :array_3

    invoke-static {v5, v14}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget-object v14, v7, v3

    new-array v15, v12, [B

    fill-array-data v15, :array_4

    invoke-static {v5, v15}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aget-object v15, v7, v3

    const/16 v16, 0x3

    new-array v0, v12, [B

    fill-array-data v0, :array_5

    invoke-static {v5, v0}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-object v15, v7, v3

    const/16 v17, 0x4

    new-array v1, v12, [B

    fill-array-data v1, :array_6

    invoke-static {v5, v1}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-object v7, v7, v3

    new-array v15, v12, [B

    fill-array-data v15, :array_7

    invoke-static {v5, v15}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    new-array v12, v12, [C

    aput-char v11, v12, v3

    aput-char v13, v12, v10

    aput-char v14, v12, v8

    aput-char v0, v12, v16

    aput-char v1, v12, v17

    aput-char v7, v12, v2

    invoke-static {v12}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_3
    sget-object v1, Lcom/google/zxing/maxicode/decoder/b;->b:Ljava/text/DecimalFormat;

    .line 109
    new-array v2, v9, [B

    fill-array-data v2, :array_8

    invoke-static {v5, v2}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v2

    int-to-long v7, v2

    .line 76
    invoke-virtual {v1, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-array v7, v9, [B

    fill-array-data v7, :array_9

    invoke-static {v5, v7}, Lcom/google/zxing/maxicode/decoder/b;->a([B[B)I

    move-result v7

    int-to-long v7, v7

    .line 77
    invoke-virtual {v1, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x54

    .line 78
    invoke-static {v5, v9, v7}, Lcom/google/zxing/maxicode/decoder/b;->b([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[)>\u001e01\u001d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x1d

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v6, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const/16 v7, 0x1d

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :goto_4
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x27t
        0x28t
        0x29t
        0x2at
        0x1ft
        0x20t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x21t
        0x22t
        0x23t
        0x24t
        0x19t
        0x1at
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x13t
        0x14t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0xdt
        0xet
    .end array-data

    nop

    :array_6
    .array-data 1
        0xft
        0x10t
        0x11t
        0x12t
        0x7t
        0x8t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x9t
        0xat
        0xbt
        0xct
        0x1t
        0x2t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x25t
        0x26t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x31t
        0x32t
        0x33t
        0x34t
    .end array-data
.end method
