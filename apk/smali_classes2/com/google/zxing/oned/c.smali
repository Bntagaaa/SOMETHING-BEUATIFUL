.class final Lcom/google/zxing/oned/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I


# instance fields
.field public final a:[I

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 34
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/c;->c:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/c;->a:[I

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/c;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/zxing/common/BitArray;I[I)Lcom/google/zxing/Result;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 44
    iget-object v6, v0, Lcom/google/zxing/oned/c;->b:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 66
    iget-object v8, v0, Lcom/google/zxing/oned/c;->a:[I

    aput v7, v8, v7

    .line 67
    aput v7, v8, v5

    .line 68
    aput v7, v8, v4

    const/4 v9, 0x3

    .line 69
    aput v7, v8, v9

    .line 70
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    .line 71
    aget v11, p3, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x5

    const/16 v15, 0x30

    if-ge v12, v14, :cond_3

    if-ge v11, v10, :cond_3

    .line 76
    sget-object v14, Lcom/google/zxing/oned/UPCEANReader;->g:[[I

    invoke-static {v1, v8, v11, v14}, Lcom/google/zxing/oned/UPCEANReader;->c(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    .line 77
    rem-int/lit8 v16, v14, 0xa

    add-int/lit8 v15, v16, 0x30

    int-to-char v15, v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    array-length v15, v8

    const/4 v9, 0x0

    const/16 v16, 0x3

    :goto_1
    if-ge v9, v15, :cond_0

    aget v17, v8, v9

    add-int v11, v11, v17

    add-int/2addr v9, v5

    goto :goto_1

    :cond_0
    if-lt v14, v3, :cond_1

    rsub-int/lit8 v9, v12, 0x4

    shl-int v9, v5, v9

    or-int/2addr v13, v9

    :cond_1
    if-eq v12, v2, :cond_2

    .line 86
    invoke-virtual {v1, v11}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    .line 87
    invoke-virtual {v1, v9}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v9

    move v11, v9

    :cond_2
    add-int/2addr v12, v5

    const/4 v9, 0x3

    goto :goto_0

    :cond_3
    const/16 v16, 0x3

    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v14, :cond_13

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_12

    .line 120
    sget-object v2, Lcom/google/zxing/oned/c;->c:[I

    aget v2, v2, v1

    if-ne v13, v2, :cond_11

    .line 96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v9, v8, -0x2

    const/4 v10, 0x0

    :goto_3
    if-ltz v9, :cond_4

    .line 107
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v15

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, -0x2

    goto :goto_3

    :cond_4
    mul-int/lit8 v10, v10, 0x3

    sub-int/2addr v8, v5

    :goto_4
    if-ltz v8, :cond_5

    .line 111
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v9, v15

    add-int/2addr v10, v9

    add-int/lit8 v8, v8, -0x2

    goto :goto_4

    :cond_5
    mul-int/lit8 v10, v10, 0x3

    .line 114
    rem-int/2addr v10, v3

    if-ne v10, v1, :cond_10

    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    if-eq v2, v14, :cond_6

    :goto_5
    move-object v3, v6

    goto/16 :goto_9

    .line 147
    :cond_6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v15, :cond_b

    const/16 v8, 0x35

    if-eq v2, v8, :cond_a

    const/16 v8, 0x39

    const-string v9, ""

    if-eq v2, v8, :cond_7

    goto :goto_6

    .line 156
    :cond_7
    const-string v2, "90000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v6

    goto :goto_8

    .line 160
    :cond_8
    const-string v2, "99991"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 162
    const-string v2, "0.00"

    goto :goto_8

    .line 164
    :cond_9
    const-string v2, "99990"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 165
    const-string v2, "Used"

    goto :goto_8

    .line 153
    :cond_a
    const-string v9, "$"

    goto :goto_6

    .line 150
    :cond_b
    const-string v9, "\u00ac\u00a3"

    .line 174
    :cond_c
    :goto_6
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 175
    div-int/lit8 v8, v2, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 176
    rem-int/lit8 v2, v2, 0x64

    if-ge v2, v3, :cond_d

    .line 177
    const-string v3, "0"

    .line 0
    invoke-static {v2, v3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 177
    :cond_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    if-nez v2, :cond_e

    goto :goto_5

    .line 140
    :cond_e
    new-instance v3, Ljava/util/EnumMap;

    const-class v8, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v3, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 141
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v3, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_9
    new-instance v2, Lcom/google/zxing/Result;

    new-instance v8, Lcom/google/zxing/ResultPoint;

    aget v9, p3, v7

    aget v10, p3, v5

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    move/from16 v10, p2

    int-to-float v10, v10

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v9, Lcom/google/zxing/ResultPoint;

    int-to-float v11, v11

    invoke-direct {v9, v11, v10}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    aput-object v8, v4, v7

    aput-object v9, v4, v5

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v2, v1, v6, v4, v5}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v3, :cond_f

    .line 59
    invoke-virtual {v2, v3}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_f
    return-object v2

    .line 97
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_11
    move/from16 v10, p2

    add-int/2addr v1, v5

    goto/16 :goto_2

    .line 124
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 92
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
