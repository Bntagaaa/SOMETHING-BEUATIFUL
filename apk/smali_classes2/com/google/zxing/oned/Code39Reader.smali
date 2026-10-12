.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field public static final c:[C

.field public static final d:[I

.field public static final e:I


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->c:[C

    const/16 v0, 0x2c

    .line 46
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->d:[I

    const/16 v1, 0x27

    .line 54
    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->e:I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->a:Z

    .line 65
    iput-boolean v0, p0, Lcom/google/zxing/oned/Code39Reader;->b:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 76
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->a:Z

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->b:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    iput-boolean p1, p0, Lcom/google/zxing/oned/Code39Reader;->a:Z

    .line 92
    iput-boolean p2, p0, Lcom/google/zxing/oned/Code39Reader;->b:Z

    return-void
.end method

.method public static b([I)I
    .locals 10

    .line 210
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 215
    :goto_0
    array-length v3, p0

    const v4, 0x7fffffff

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    aget v6, p0, v5

    if-ge v6, v4, :cond_0

    if-le v6, v2, :cond_0

    move v4, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 225
    aget v7, p0, v2

    if-le v7, v4, :cond_2

    add-int/lit8 v8, v0, -0x1

    sub-int/2addr v8, v2

    const/4 v9, 0x1

    shl-int v8, v9, v8

    or-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v6, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne v3, v2, :cond_6

    :goto_3
    if-ge v1, v0, :cond_5

    if-lez v3, :cond_5

    .line 237
    aget v2, p0, v1

    if-le v2, v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    shl-int/lit8 v2, v2, 0x1

    if-lt v2, v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return v5

    :cond_6
    if-gt v3, v2, :cond_7

    :goto_4
    const/4 p0, -0x1

    return p0

    :cond_7
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 17
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
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x9

    .line 99
    new-array v6, v5, [I

    .line 174
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 175
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v8, v7, :cond_1d

    .line 183
    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    xor-int/2addr v12, v10

    if-eqz v12, :cond_0

    .line 184
    aget v12, v6, v11

    add-int/2addr v12, v4

    aput v12, v6, v11

    move/from16 v14, p1

    const/16 p3, 0x1

    const/4 v4, 0x2

    goto/16 :goto_f

    :cond_0
    const/16 v12, 0x8

    if-ne v11, v12, :cond_1c

    .line 188
    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->b([I)I

    move-result v13

    sget v14, Lcom/google/zxing/oned/Code39Reader;->e:I

    if-ne v13, v14, :cond_1b

    sub-int v13, v8, v9

    shr-int/2addr v13, v4

    sub-int v13, v9, v13

    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-virtual {v1, v13, v9, v3}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 190
    filled-new-array {v9, v8}, [I

    move-result-object v7

    .line 102
    aget v8, v7, v4

    invoke-virtual {v1, v8}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    .line 103
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    .line 105
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 109
    :goto_1
    invoke-static {v1, v8, v6}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 110
    invoke-static {v6}, Lcom/google/zxing/oned/Code39Reader;->b([I)I

    move-result v11

    if-ltz v11, :cond_1a

    const/4 v12, 0x0

    .line 253
    :goto_2
    sget-object v13, Lcom/google/zxing/oned/Code39Reader;->d:[I

    array-length v14, v13

    if-ge v12, v14, :cond_19

    .line 254
    aget v13, v13, v12

    if-ne v13, v11, :cond_18

    .line 255
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->c:[C

    aget-char v12, v11, v12

    .line 115
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v14, v8

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v5, :cond_1

    .line 117
    aget v15, v6, v13

    add-int/2addr v14, v15

    add-int/2addr v13, v4

    goto :goto_3

    .line 121
    :cond_1
    invoke-virtual {v1, v14}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v13

    const/16 v14, 0x2a

    if-ne v12, v14, :cond_17

    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_4
    if-ge v1, v5, :cond_2

    .line 127
    aget v14, v6, v1

    add-int/2addr v12, v14

    add-int/2addr v1, v4

    goto :goto_4

    :cond_2
    sub-int v1, v13, v8

    sub-int/2addr v1, v12

    if-eq v13, v9, :cond_4

    shr-int/2addr v1, v4

    if-lt v1, v12, :cond_3

    goto :goto_5

    .line 134
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 137
    :cond_4
    :goto_5
    iget-boolean v1, v0, Lcom/google/zxing/oned/Code39Reader;->a:Z

    const/16 v5, 0x2b

    if-eqz v1, :cond_7

    .line 138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v6, v1, :cond_5

    .line 141
    const-string v12, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/2addr v9, v12

    add-int/2addr v6, v4

    goto :goto_6

    .line 143
    :cond_5
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    rem-int/2addr v9, v5

    aget-char v9, v11, v9

    if-ne v6, v9, :cond_6

    .line 146
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_7

    .line 144
    :cond_6
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v1

    throw v1

    .line 149
    :cond_7
    :goto_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 155
    iget-boolean v1, v0, Lcom/google/zxing/oned/Code39Reader;->b:Z

    if-eqz v1, :cond_15

    .line 262
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v1, :cond_14

    .line 265
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    const/16 v14, 0x25

    const/16 v15, 0x24

    if-eq v11, v5, :cond_9

    if-eq v11, v15, :cond_9

    if-eq v11, v14, :cond_9

    if-ne v11, v12, :cond_8

    goto :goto_9

    .line 311
    :cond_8
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p3, 0x1

    const/16 v16, 0x0

    goto :goto_c

    :cond_9
    :goto_9
    add-int/2addr v9, v4

    const/16 p3, 0x1

    .line 267
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v16, 0x0

    const/16 v3, 0x5a

    const/16 v2, 0x41

    if-eq v11, v15, :cond_12

    if-eq v11, v14, :cond_f

    if-eq v11, v5, :cond_d

    if-eq v11, v12, :cond_a

    const/4 v2, 0x0

    goto :goto_b

    :cond_a
    if-lt v4, v2, :cond_b

    const/16 v2, 0x4f

    if-gt v4, v2, :cond_b

    add-int/lit8 v4, v4, -0x20

    :goto_a
    int-to-char v2, v4

    goto :goto_b

    :cond_b
    if-ne v4, v3, :cond_c

    const/16 v2, 0x3a

    goto :goto_b

    .line 303
    :cond_c
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_d
    if-lt v4, v2, :cond_e

    if-gt v4, v3, :cond_e

    add-int/lit8 v4, v4, 0x20

    goto :goto_a

    .line 275
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_f
    if-lt v4, v2, :cond_10

    const/16 v2, 0x45

    if-gt v4, v2, :cond_10

    add-int/lit8 v4, v4, -0x26

    goto :goto_a

    :cond_10
    const/16 v2, 0x46

    if-lt v4, v2, :cond_11

    const/16 v2, 0x57

    if-gt v4, v2, :cond_11

    add-int/lit8 v4, v4, -0xb

    goto :goto_a

    .line 293
    :cond_11
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_12
    if-lt v4, v2, :cond_13

    if-gt v4, v3, :cond_13

    add-int/lit8 v4, v4, -0x40

    goto :goto_a

    .line 307
    :goto_b
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_c
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_8

    .line 283
    :cond_13
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_14
    const/16 p3, 0x1

    const/16 v16, 0x0

    .line 314
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_15
    const/16 p3, 0x1

    const/16 v16, 0x0

    .line 158
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_d
    aget v2, v7, p3

    aget v3, v7, v16

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-int/2addr v13, v8

    int-to-float v4, v13

    div-float/2addr v4, v3

    .line 163
    new-instance v3, Lcom/google/zxing/Result;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    move/from16 v14, p1

    int-to-float v6, v14

    invoke-direct {v5, v2, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v2, Lcom/google/zxing/ResultPoint;

    invoke-direct {v2, v4, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    aput-object v5, v4, v16

    aput-object v2, v4, p3

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v5, v4, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3

    .line 151
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_17
    move/from16 v14, p1

    move v8, v13

    goto/16 :goto_1

    :cond_18
    move/from16 v14, p1

    const/16 p3, 0x1

    const/16 v16, 0x0

    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 258
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 112
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_1b
    move/from16 v14, p1

    const/16 p3, 0x1

    const/16 v16, 0x0

    .line 192
    aget v2, v6, v16

    aget v3, v6, p3

    add-int/2addr v2, v3

    add-int/2addr v9, v2

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 193
    invoke-static {v6, v4, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    aput v3, v6, v2

    .line 195
    aput v3, v6, v12

    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    :cond_1c
    move/from16 v14, p1

    const/16 p3, 0x1

    const/4 v4, 0x2

    add-int/lit8 v11, v11, 0x1

    .line 200
    :goto_e
    aput p3, v6, v11

    xor-int/lit8 v10, v10, 0x1

    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 204
    :cond_1d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
