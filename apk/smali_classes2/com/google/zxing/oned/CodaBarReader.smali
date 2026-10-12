.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[I

.field public static final f:[C


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public b:[I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->d:[C

    const/16 v0, 0x14

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    const/4 v0, 0x4

    .line 60
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->f:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->a:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    .line 74
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    return-void
.end method

.method public static b([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 279
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public final c(I)I
    .locals 13

    add-int/lit8 v0, p1, 0x7

    .line 291
    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x2

    .line 295
    new-array v3, v1, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 296
    new-array v6, v1, [I

    const v7, 0x7fffffff

    aput v7, v6, v4

    aput v7, v6, v5

    .line 297
    new-array v7, v1, [I

    aput v4, v7, v4

    aput v4, v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_4

    add-int v9, p1, v8

    :goto_1
    if-ge v9, v0, :cond_3

    .line 301
    iget-object v10, p0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    aget v11, v10, v9

    aget v12, v6, v8

    if-ge v11, v12, :cond_1

    .line 302
    aput v11, v6, v8

    .line 304
    :cond_1
    aget v10, v10, v9

    aget v11, v3, v8

    if-le v10, v11, :cond_2

    .line 305
    aput v10, v3, v8

    :cond_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 308
    :cond_3
    aget v9, v6, v8

    aget v10, v3, v8

    add-int/2addr v9, v10

    div-int/2addr v9, v1

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    const/16 v0, 0x80

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_2
    const/4 v6, 0x7

    if-ge v1, v6, :cond_6

    and-int/lit8 v6, v1, 0x1

    shr-int/2addr v0, v5

    .line 316
    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    add-int v9, p1, v1

    aget v8, v8, v9

    aget v6, v7, v6

    if-le v8, v6, :cond_5

    or-int/2addr v3, v0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 321
    :cond_6
    :goto_3
    sget-object p1, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    array-length v0, p1

    if-ge v4, v0, :cond_8

    .line 322
    aget p1, p1, v4

    if-ne p1, v3, :cond_7

    return v4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    return v2
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 228
    iput v2, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    .line 230
    invoke-virtual {v1, v2}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v6

    .line 231
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_1a

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    if-ge v6, v7, :cond_2

    .line 238
    invoke-virtual {v1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v9

    if-eqz v10, :cond_0

    add-int/2addr v8, v5

    goto :goto_1

    .line 250
    :cond_0
    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    iget v11, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    aput v8, v10, v11

    add-int/2addr v11, v5

    .line 251
    iput v11, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    .line 252
    array-length v8, v10

    if-lt v11, v8, :cond_1

    mul-int/lit8 v8, v11, 0x2

    .line 253
    new-array v8, v8, [I

    .line 254
    invoke-static {v10, v2, v8, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iput-object v8, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    :cond_1
    xor-int/2addr v9, v5

    const/4 v8, 0x1

    :goto_1
    add-int/2addr v6, v5

    goto :goto_0

    .line 250
    :cond_2
    iget-object v1, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    iget v6, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    aput v8, v1, v6

    add-int/2addr v6, v5

    .line 251
    iput v6, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    .line 252
    array-length v7, v1

    if-lt v6, v7, :cond_3

    mul-int/lit8 v7, v6, 0x2

    .line 253
    new-array v7, v7, [I

    .line 254
    invoke-static {v1, v2, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    iput-object v7, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    :cond_3
    const/4 v1, 0x1

    .line 260
    :goto_2
    iget v6, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    if-ge v1, v6, :cond_19

    .line 261
    invoke-virtual {v0, v1}, Lcom/google/zxing/oned/CodaBarReader;->c(I)I

    move-result v6

    if-eq v6, v3, :cond_5

    .line 262
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->d:[C

    aget-char v6, v7, v6

    sget-object v8, Lcom/google/zxing/oned/CodaBarReader;->f:[C

    invoke-static {v8, v6}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v1

    const/4 v9, 0x0

    :goto_3
    add-int/lit8 v10, v1, 0x7

    if-ge v6, v10, :cond_4

    .line 267
    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    aget v10, v10, v6

    add-int/2addr v9, v10

    add-int/2addr v6, v5

    goto :goto_3

    :cond_4
    if-eq v1, v5, :cond_6

    .line 269
    iget-object v6, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    add-int/lit8 v10, v1, -0x1

    aget v6, v6, v10

    div-int/2addr v9, v4

    if-lt v6, v9, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v13, p1

    const/16 p3, -0x1

    const/16 v17, 0x1

    const/16 v21, 0x2

    goto/16 :goto_11

    .line 85
    :cond_6
    :goto_4
    iget-object v6, v0, Lcom/google/zxing/oned/CodaBarReader;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v9, v1

    .line 87
    :goto_5
    invoke-virtual {v0, v9}, Lcom/google/zxing/oned/CodaBarReader;->c(I)I

    move-result v10

    if-eq v10, v3, :cond_18

    int-to-char v11, v10

    .line 94
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v9, 0x8

    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-le v12, v5, :cond_7

    aget-char v10, v7, v10

    invoke-static {v8, v10}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_6

    .line 101
    :cond_7
    iget v10, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    if-lt v11, v10, :cond_17

    .line 104
    :goto_6
    iget-object v10, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    add-int/lit8 v9, v9, 0x7

    aget v10, v10, v9

    const/4 v12, -0x8

    const/4 v13, 0x0

    :goto_7
    if-ge v12, v3, :cond_8

    .line 107
    iget-object v14, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    add-int v15, v11, v12

    aget v14, v14, v15

    add-int/2addr v13, v14

    add-int/2addr v12, v5

    goto :goto_7

    .line 113
    :cond_8
    iget v12, v0, Lcom/google/zxing/oned/CodaBarReader;->c:I

    if-ge v11, v12, :cond_a

    div-int/2addr v13, v4

    if-lt v10, v13, :cond_9

    goto :goto_8

    .line 114
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_a
    :goto_8
    const/4 v10, 0x4

    .line 162
    new-array v12, v10, [I

    aput v2, v12, v2

    aput v2, v12, v5

    aput v2, v12, v4

    const/4 v13, 0x3

    aput v2, v12, v13

    .line 163
    new-array v14, v10, [I

    aput v2, v14, v2

    aput v2, v14, v5

    aput v2, v14, v4

    aput v2, v14, v13

    .line 164
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v15, v11, -0x1

    move/from16 v16, v1

    const/4 v11, 0x0

    .line 170
    :goto_9
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    sget-object v18, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    aget v17, v18, v17

    const/16 v19, 0x6

    const/16 v20, 0x6

    :goto_a
    if-ltz v20, :cond_b

    and-int/lit8 v21, v20, 0x1

    and-int/lit8 v22, v17, 0x1

    mul-int/lit8 v22, v22, 0x2

    add-int v22, v22, v21

    .line 175
    aget v21, v12, v22

    const/16 p3, -0x1

    iget-object v3, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    add-int v23, v16, v20

    aget v3, v3, v23

    add-int v21, v21, v3

    aput v21, v12, v22

    .line 176
    aget v3, v14, v22

    add-int/2addr v3, v5

    aput v3, v14, v22

    shr-int/lit8 v17, v17, 0x1

    add-int/lit8 v20, v20, -0x1

    const/4 v3, -0x1

    goto :goto_a

    :cond_b
    const/16 p3, -0x1

    if-lt v11, v15, :cond_16

    .line 187
    new-array v3, v10, [I

    .line 188
    new-array v10, v10, [I

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v4, :cond_c

    .line 193
    aput v2, v10, v11

    add-int/lit8 v16, v11, 0x2

    .line 194
    aget v17, v12, v11

    shl-int/lit8 v17, v17, 0x8

    aget v20, v14, v11

    div-int v17, v17, v20

    aget v20, v12, v16

    shl-int/lit8 v20, v20, 0x8

    aget v21, v14, v16

    div-int v20, v20, v21

    add-int v20, v20, v17

    shr-int/lit8 v17, v20, 0x1

    aput v17, v10, v16

    .line 196
    aput v17, v3, v11

    const/16 v17, 0x1

    .line 197
    aget v5, v12, v16

    mul-int/lit16 v5, v5, 0x200

    add-int/lit16 v5, v5, 0x180

    aget v20, v14, v16

    div-int v5, v5, v20

    aput v5, v3, v16

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_b

    :cond_c
    const/16 v17, 0x1

    move v11, v1

    const/4 v5, 0x0

    .line 203
    :goto_c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    aget v12, v18, v12

    const/4 v14, 0x6

    :goto_d
    if-ltz v14, :cond_e

    and-int/lit8 v16, v14, 0x1

    and-int/lit8 v20, v12, 0x1

    mul-int/lit8 v20, v20, 0x2

    add-int v20, v20, v16

    .line 208
    iget-object v4, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    add-int v16, v11, v14

    aget v4, v4, v16

    shl-int/lit8 v4, v4, 0x8

    .line 209
    aget v13, v10, v20

    if-lt v4, v13, :cond_d

    aget v13, v3, v20

    if-gt v4, v13, :cond_d

    shr-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v4, 0x2

    const/4 v13, 0x3

    goto :goto_d

    .line 210
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_e
    if-lt v5, v15, :cond_15

    const/4 v3, 0x0

    .line 120
    :goto_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 121
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    aget-char v4, v7, v4

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 124
    :cond_f
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 125
    invoke-static {v8, v3}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 129
    invoke-static {v8, v3}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_12

    .line 139
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v3, v1, :cond_10

    .line 144
    iget-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    aget v5, v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_10
    int-to-float v3, v4

    :goto_10
    if-ge v1, v9, :cond_11

    .line 148
    iget-object v5, v0, Lcom/google/zxing/oned/CodaBarReader;->b:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_11
    int-to-float v1, v4

    .line 151
    new-instance v4, Lcom/google/zxing/Result;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/zxing/ResultPoint;

    move/from16 v13, p1

    int-to-float v7, v13

    invoke-direct {v6, v3, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v3, Lcom/google/zxing/ResultPoint;

    invoke-direct {v3, v1, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/zxing/ResultPoint;

    aput-object v6, v1, v2

    aput-object v3, v1, v17

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v4

    .line 136
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 130
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 126
    :cond_14
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_15
    move/from16 v13, p1

    const/4 v4, 0x3

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x2

    const/4 v13, 0x3

    goto/16 :goto_c

    :cond_16
    move/from16 v13, p1

    const/4 v4, 0x3

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x8

    add-int/lit8 v11, v11, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v13, 0x3

    goto/16 :goto_9

    :cond_17
    move/from16 v13, p1

    move v9, v11

    goto/16 :goto_5

    .line 89
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :goto_11
    add-int/lit8 v1, v1, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 274
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 233
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
