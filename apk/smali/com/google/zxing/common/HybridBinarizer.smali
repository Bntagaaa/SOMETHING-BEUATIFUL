.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "SourceFile"


# instance fields
.field public e:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 1

    .line 93
    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 63
    iget-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->e:Lcom/google/zxing/common/BitMatrix;

    if-eqz v1, :cond_0

    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v2

    .line 68
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v3

    const/16 v4, 0x28

    if-lt v2, v4, :cond_1a

    if-lt v3, v4, :cond_1a

    .line 70
    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v1

    shr-int/lit8 v4, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    shr-int/lit8 v5, v3, 0x3

    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    const/4 v6, 0x2

    .line 166
    new-array v7, v6, [I

    const/4 v8, 0x1

    aput v4, v7, v8

    const/4 v9, 0x0

    aput v5, v7, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    if-ge v10, v5, :cond_d

    shl-int/lit8 v13, v10, 0x3

    add-int/lit8 v14, v3, -0x8

    if-le v13, v14, :cond_3

    move v13, v14

    :cond_3
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_c

    shl-int/lit8 v15, v14, 0x3

    const/16 v16, 0x1

    add-int/lit8 v8, v2, -0x8

    if-le v15, v8, :cond_4

    move v15, v8

    :cond_4
    mul-int v8, v13, v2

    add-int/2addr v8, v15

    const/16 v9, 0xff

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    :goto_2
    if-ge v15, v11, :cond_a

    move/from16 v6, v18

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_7

    add-int v18, v8, v12

    .line 184
    aget-byte v11, v1, v18

    move-object/from16 v21, v1

    const/16 v1, 0xff

    and-int/2addr v11, v1

    add-int v17, v17, v11

    if-ge v11, v9, :cond_5

    move v9, v11

    :cond_5
    if-le v11, v6, :cond_6

    move v6, v11

    :cond_6
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v21

    const/16 v11, 0x8

    goto :goto_3

    :cond_7
    move-object/from16 v21, v1

    sub-int v1, v6, v9

    const/16 v11, 0x18

    if-le v1, v11, :cond_9

    :cond_8
    add-int/lit8 v15, v15, 0x1

    add-int/2addr v8, v2

    const/16 v1, 0x8

    if-ge v15, v1, :cond_9

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v1, :cond_8

    add-int v1, v8, v11

    .line 199
    aget-byte v1, v21, v1

    const/16 v12, 0xff

    and-int/2addr v1, v12

    add-int v17, v17, v1

    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x8

    goto :goto_4

    :cond_9
    add-int/lit8 v15, v15, 0x1

    add-int/2addr v8, v2

    move/from16 v18, v6

    move-object/from16 v1, v21

    const/16 v11, 0x8

    goto :goto_2

    :cond_a
    move-object/from16 v21, v1

    shr-int/lit8 v1, v17, 0x6

    sub-int v6, v18, v9

    const/16 v11, 0x18

    if-gt v6, v11, :cond_b

    shr-int/lit8 v1, v9, 0x1

    if-lez v10, :cond_b

    if-lez v14, :cond_b

    add-int/lit8 v6, v10, -0x1

    .line 224
    aget-object v6, v7, v6

    aget v8, v6, v14

    aget-object v11, v7, v10

    add-int/lit8 v12, v14, -0x1

    aget v11, v11, v12

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v8

    aget v6, v6, v12

    add-int/2addr v11, v6

    shr-int/lit8 v6, v11, 0x2

    if-ge v9, v6, :cond_b

    move v1, v6

    .line 231
    :cond_b
    aget-object v6, v7, v10

    aput v1, v6, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v21

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x8

    goto/16 :goto_1

    :cond_c
    move-object/from16 v21, v1

    const/16 v16, 0x1

    const/16 v19, 0x2

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v21, v1

    const/16 v19, 0x2

    .line 81
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_19

    shl-int/lit8 v8, v6, 0x3

    const/16 v20, 0x8

    add-int/lit8 v9, v3, -0x8

    if-le v8, v9, :cond_e

    move v8, v9

    :cond_e
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v4, :cond_18

    shl-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v2, -0x8

    if-le v10, v11, :cond_f

    move v10, v11

    :cond_f
    add-int/lit8 v11, v4, -0x3

    const/4 v12, 0x2

    if-ge v9, v12, :cond_10

    const/4 v11, 0x2

    goto :goto_7

    :cond_10
    if-le v9, v11, :cond_11

    goto :goto_7

    :cond_11
    move v11, v9

    :goto_7
    add-int/lit8 v13, v5, -0x3

    if-ge v6, v12, :cond_12

    const/4 v13, 0x2

    goto :goto_8

    :cond_12
    if-le v6, v13, :cond_13

    goto :goto_8

    :cond_13
    move v13, v6

    :goto_8
    const/4 v14, -0x2

    const/4 v15, 0x0

    :goto_9
    if-gt v14, v12, :cond_14

    add-int v12, v13, v14

    .line 124
    aget-object v12, v7, v12

    add-int/lit8 v16, v11, -0x2

    .line 125
    aget v16, v12, v16

    add-int/lit8 v17, v11, -0x1

    aget v17, v12, v17

    add-int v16, v16, v17

    aget v17, v12, v11

    add-int v16, v16, v17

    add-int/lit8 v17, v11, 0x1

    aget v17, v12, v17

    add-int v16, v16, v17

    const/16 v19, 0x2

    add-int/lit8 v17, v11, 0x2

    aget v12, v12, v17

    add-int v16, v16, v12

    add-int v15, v16, v15

    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x2

    goto :goto_9

    :cond_14
    const/16 v19, 0x2

    .line 127
    div-int/lit8 v15, v15, 0x19

    mul-int v11, v8, v2

    add-int/2addr v11, v10

    const/4 v13, 0x0

    :goto_a
    const/16 v12, 0x8

    if-ge v13, v12, :cond_17

    const/4 v14, 0x0

    :goto_b
    if-ge v14, v12, :cond_16

    add-int v16, v11, v14

    .line 149
    aget-byte v12, v21, v16

    move/from16 v16, v2

    const/16 v2, 0xff

    and-int/2addr v12, v2

    if-gt v12, v15, :cond_15

    add-int v12, v10, v14

    add-int v2, v8, v13

    .line 150
    invoke-virtual {v1, v12, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_15
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    const/16 v12, 0x8

    goto :goto_b

    :cond_16
    move/from16 v16, v2

    add-int/lit8 v13, v13, 0x1

    add-int v11, v11, v16

    goto :goto_a

    :cond_17
    move/from16 v16, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_18
    move/from16 v16, v2

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 83
    :cond_19
    iput-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->e:Lcom/google/zxing/common/BitMatrix;

    goto :goto_c

    .line 86
    :cond_1a
    invoke-super {v0}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->e:Lcom/google/zxing/common/BitMatrix;

    .line 88
    :goto_c
    iget-object v1, v0, Lcom/google/zxing/common/HybridBinarizer;->e:Lcom/google/zxing/common/BitMatrix;

    return-object v1
.end method
