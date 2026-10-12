.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[[I


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/16 v2, 0xa

    .line 53
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/google/zxing/oned/ITFReader;->b:[I

    const/4 v3, 0x1

    .line 64
    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v4

    sput-object v4, Lcom/google/zxing/oned/ITFReader;->c:[I

    const/4 v4, 0x3

    .line 65
    filled-new-array {v3, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/ITFReader;->d:[I

    .line 70
    new-array v2, v2, [[I

    filled-new-array {v3, v3, v4, v4, v3}, [I

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    filled-new-array {v4, v3, v3, v3, v4}, [I

    move-result-object v5

    aput-object v5, v2, v3

    filled-new-array {v3, v4, v3, v3, v4}, [I

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    filled-new-array {v4, v4, v3, v3, v3}, [I

    move-result-object v5

    aput-object v5, v2, v4

    filled-new-array {v3, v3, v4, v3, v4}, [I

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v2, v6

    filled-new-array {v4, v3, v4, v3, v3}, [I

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v2, v6

    filled-new-array {v3, v4, v4, v3, v3}, [I

    move-result-object v5

    aput-object v5, v2, v1

    filled-new-array {v3, v3, v3, v4, v4}, [I

    move-result-object v1

    const/4 v5, 0x7

    aput-object v1, v2, v5

    filled-new-array {v4, v3, v3, v4, v3}, [I

    move-result-object v1

    aput-object v1, v2, v0

    filled-new-array {v3, v4, v3, v4, v3}, [I

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/ITFReader;->e:[[I

    return-void

    :array_0
    .array-data 4
        0x2c
        0x18
        0x14
        0x12
        0x10
        0xe
        0xc
        0xa
        0x8
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->a:I

    return-void
.end method

.method public static b([I)I
    .locals 5

    const/16 v0, 0x6b

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 333
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->e:[[I

    aget-object v3, v3, v2

    const/16 v4, 0xcc

    .line 334
    invoke-static {p0, v3, v4}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ltz v1, :cond_2

    return v1

    .line 343
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static c(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 11

    .line 289
    array-length v0, p2

    .line 290
    new-array v1, v0, [I

    .line 291
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge p1, v2, :cond_3

    .line 297
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v5

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 298
    aget v7, v1, v6

    add-int/2addr v7, v8

    aput v7, v1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_2

    const/16 v9, 0xcc

    .line 301
    invoke-static {v1, p2, v9}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v9

    const/16 v10, 0x6b

    if-ge v9, v10, :cond_1

    .line 302
    filled-new-array {v4, p1}, [I

    move-result-object p0

    return-object p0

    .line 304
    :cond_1
    aget v9, v1, v3

    aget v10, v1, v8

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v9, v0, -0x2

    const/4 v10, 0x2

    .line 305
    invoke-static {v1, v10, v1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    aput v3, v1, v9

    .line 307
    aput v3, v1, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 312
    :goto_1
    aput v8, v1, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 316
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final d(Lcom/google/zxing/common/BitArray;I)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/google/zxing/oned/ITFReader;->a:I

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez v0, :cond_1

    if-ltz p2, :cond_1

    .line 210
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 217
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 19
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 229
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    .line 230
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v7

    if-eq v7, v6, :cond_8

    .line 178
    sget-object v6, Lcom/google/zxing/oned/ITFReader;->c:[I

    invoke-static {v2, v7, v6}, Lcom/google/zxing/oned/ITFReader;->c(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v6

    .line 183
    aget v7, v6, v5

    aget v8, v6, v4

    sub-int/2addr v7, v8

    shr-int/2addr v7, v3

    iput v7, v1, Lcom/google/zxing/oned/ITFReader;->a:I

    .line 185
    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/oned/ITFReader;->d(Lcom/google/zxing/common/BitArray;I)V

    .line 250
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 229
    :try_start_0
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    .line 230
    invoke-virtual {v2, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v8

    if-eq v8, v7, :cond_7

    .line 253
    sget-object v7, Lcom/google/zxing/oned/ITFReader;->d:[I

    invoke-static {v2, v8, v7}, Lcom/google/zxing/oned/ITFReader;->c(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v7

    .line 258
    aget v8, v7, v4

    invoke-virtual {v1, v2, v8}, Lcom/google/zxing/oned/ITFReader;->d(Lcom/google/zxing/common/BitArray;I)V

    .line 263
    aget v8, v7, v4

    .line 264
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    aget v10, v7, v5

    sub-int/2addr v9, v10

    aput v9, v7, v4

    .line 265
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    sub-int/2addr v9, v8

    aput v9, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 91
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    aget v9, v6, v5

    aget v10, v7, v4

    const/16 v11, 0xa

    .line 142
    new-array v12, v11, [I

    const/4 v13, 0x5

    .line 143
    new-array v14, v13, [I

    .line 144
    new-array v15, v13, [I

    :goto_0
    if-ge v9, v10, :cond_2

    .line 149
    invoke-static {v2, v9, v12}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/16 v16, 0x0

    :goto_1
    if-ge v4, v13, :cond_0

    shl-int/lit8 v17, v4, 0x1

    .line 153
    aget v18, v12, v17

    aput v18, v14, v4

    add-int/lit8 v17, v17, 0x1

    .line 154
    aget v17, v12, v17

    aput v17, v15, v4

    add-int/2addr v4, v5

    goto :goto_1

    .line 157
    :cond_0
    invoke-static {v14}, Lcom/google/zxing/oned/ITFReader;->b([I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 158
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v15}, Lcom/google/zxing/oned/ITFReader;->b([I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 160
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v11, :cond_1

    .line 162
    aget v17, v12, v4

    add-int v9, v9, v17

    add-int/2addr v4, v5

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 97
    sget-object v8, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_3

    :cond_3
    move-object v0, v4

    :goto_3
    if-nez v0, :cond_4

    .line 101
    sget-object v0, Lcom/google/zxing/oned/ITFReader;->b:[I

    .line 106
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    .line 108
    array-length v9, v0

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_6

    aget v11, v0, v10

    if-ne v8, v11, :cond_5

    .line 118
    new-instance v0, Lcom/google/zxing/Result;

    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v6, v6, v5

    int-to-float v6, v6

    move/from16 v11, p1

    int-to-float v9, v11

    invoke-direct {v8, v6, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v7, v7, v16

    int-to-float v7, v7

    invoke-direct {v6, v7, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    aput-object v8, v3, v16

    aput-object v6, v3, v5

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v0

    :cond_5
    move/from16 v11, p1

    add-int/2addr v10, v5

    goto :goto_4

    .line 115
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 232
    :cond_7
    :try_start_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :goto_5
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->reverse()V

    throw v0

    .line 232
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
