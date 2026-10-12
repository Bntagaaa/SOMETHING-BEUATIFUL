.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[I

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->a:[C

    const/16 v0, 0x30

    .line 46
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->b:[I

    const/16 v1, 0x2f

    .line 54
    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->c:I

    return-void

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;II)V
    .locals 6

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 253
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    rem-int/lit8 v2, v2, 0x2f

    sget-object p1, Lcom/google/zxing/oned/Code93Reader;->a:[C

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_2

    return-void

    .line 259
    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method public static c([I)I
    .locals 8

    .line 148
    array-length v0, p0

    .line 150
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v5, p0, v3

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    .line 155
    aget v5, p0, v1

    shl-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x9

    div-int/2addr v5, v4

    shr-int/lit8 v6, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    const/16 v7, 0x7f

    if-le v5, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    const/4 v5, 0x1

    if-lt v6, v5, :cond_5

    const/4 v7, 0x4

    if-le v6, v7, :cond_2

    goto :goto_3

    :cond_2
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    shl-int/lit8 v3, v3, 0x1

    or-int/2addr v3, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    shl-int/2addr v3, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 p0, -0x1

    return p0

    :cond_6
    return v3
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 15
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

    move-object/from16 v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 115
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    const/4 v6, 0x6

    .line 119
    new-array v7, v6, [I

    move v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v5, v4, :cond_13

    .line 125
    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    xor-int/2addr v11, v9

    if-eqz v11, :cond_0

    .line 126
    aget v11, v7, v10

    add-int/2addr v11, v3

    aput v11, v7, v10

    move/from16 v13, p1

    goto/16 :goto_9

    :cond_0
    const/4 v11, 0x5

    if-ne v10, v11, :cond_12

    .line 129
    invoke-static {v7}, Lcom/google/zxing/oned/Code93Reader;->c([I)I

    move-result v12

    sget v13, Lcom/google/zxing/oned/Code93Reader;->c:I

    if-ne v12, v13, :cond_11

    .line 130
    filled-new-array {v8, v5}, [I

    move-result-object v4

    .line 62
    aget v5, v4, v3

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 63
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    new-array v10, v6, [I

    .line 70
    :goto_1
    invoke-static {v0, v5, v10}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 71
    invoke-static {v10}, Lcom/google/zxing/oned/Code93Reader;->c([I)I

    move-result v11

    if-ltz v11, :cond_10

    const/4 v12, 0x0

    .line 175
    :goto_2
    sget-object v13, Lcom/google/zxing/oned/Code93Reader;->b:[I

    array-length v14, v13

    if-ge v12, v14, :cond_f

    .line 176
    aget v13, v13, v12

    if-ne v13, v11, :cond_e

    .line 177
    sget-object v11, Lcom/google/zxing/oned/Code93Reader;->a:[C

    aget-char v11, v11, v12

    .line 76
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v13, v5

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_1

    .line 78
    aget v14, v10, v12

    add-int/2addr v13, v14

    add-int/2addr v12, v3

    goto :goto_3

    .line 82
    :cond_1
    invoke-virtual {v0, v13}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v12

    const/16 v13, 0x2a

    if-ne v11, v13, :cond_d

    .line 84
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    if-eq v12, v7, :cond_c

    .line 87
    invoke-virtual {v0, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v2, :cond_b

    .line 243
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    .line 244
    invoke-static {v8, v6, v9}, Lcom/google/zxing/oned/Code93Reader;->b(Ljava/lang/StringBuilder;II)V

    sub-int/2addr v0, v3

    const/16 v6, 0xf

    .line 245
    invoke-static {v8, v0, v6}, Lcom/google/zxing/oned/Code93Reader;->b(Ljava/lang/StringBuilder;II)V

    .line 98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v0, :cond_a

    .line 187
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x61

    if-lt v9, v10, :cond_9

    const/16 v10, 0x64

    if-gt v9, v10, :cond_9

    add-int/lit8 v10, v0, -0x1

    if-ge v7, v10, :cond_8

    add-int/2addr v7, v3

    .line 192
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x5a

    const/16 v13, 0x41

    packed-switch v9, :pswitch_data_0

    const/4 v9, 0x0

    goto :goto_6

    :pswitch_0
    if-lt v10, v13, :cond_2

    if-gt v10, v11, :cond_2

    add-int/lit8 v10, v10, 0x20

    :goto_5
    int-to-char v9, v10

    goto :goto_6

    .line 200
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_1
    if-lt v10, v13, :cond_3

    const/16 v9, 0x4f

    if-gt v10, v9, :cond_3

    add-int/lit8 v10, v10, -0x20

    goto :goto_5

    :cond_3
    if-ne v10, v11, :cond_4

    const/16 v9, 0x3a

    goto :goto_6

    .line 228
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_2
    if-lt v10, v13, :cond_5

    const/16 v9, 0x45

    if-gt v10, v9, :cond_5

    add-int/lit8 v10, v10, -0x26

    goto :goto_5

    :cond_5
    const/16 v9, 0x46

    if-lt v10, v9, :cond_6

    const/16 v9, 0x57

    if-gt v10, v9, :cond_6

    add-int/lit8 v10, v10, -0xb

    goto :goto_5

    .line 218
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_3
    if-lt v10, v13, :cond_7

    if-gt v10, v11, :cond_7

    add-int/lit8 v10, v10, -0x40

    goto :goto_5

    .line 232
    :goto_6
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 208
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 190
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    .line 236
    :cond_9
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    add-int/2addr v7, v3

    goto :goto_4

    .line 239
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    aget v6, v4, v3

    aget v4, v4, v1

    add-int/2addr v6, v4

    int-to-float v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-int/2addr v12, v5

    int-to-float v5, v12

    div-float/2addr v5, v6

    .line 104
    new-instance v6, Lcom/google/zxing/Result;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    move/from16 v13, p1

    int-to-float v8, v13

    invoke-direct {v7, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v4, Lcom/google/zxing/ResultPoint;

    invoke-direct {v4, v5, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v2, v2, [Lcom/google/zxing/ResultPoint;

    aput-object v7, v2, v1

    aput-object v4, v2, v3

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x0

    invoke-direct {v6, v0, v3, v2, v1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v6

    .line 93
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 88
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_d
    move/from16 v13, p1

    move v5, v12

    goto/16 :goto_1

    :cond_e
    move/from16 v13, p1

    add-int/2addr v12, v3

    goto/16 :goto_2

    .line 180
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 73
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    move/from16 v13, p1

    .line 132
    aget v12, v7, v1

    aget v14, v7, v3

    add-int/2addr v12, v14

    add-int/2addr v8, v12

    const/4 v12, 0x4

    .line 133
    invoke-static {v7, v2, v7, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aput v1, v7, v12

    .line 135
    aput v1, v7, v11

    add-int/lit8 v10, v10, -0x1

    goto :goto_8

    :cond_12
    move/from16 v13, p1

    add-int/2addr v10, v3

    .line 140
    :goto_8
    aput v3, v7, v10

    xor-int/2addr v9, v3

    :goto_9
    add-int/2addr v5, v3

    goto/16 :goto_0

    .line 144
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
