.class final Lcom/google/zxing/oned/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:[I


# instance fields
.field public final a:Lcom/google/zxing/oned/b;

.field public final b:Lcom/google/zxing/oned/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 26
    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/d;->c:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/google/zxing/oned/b;

    invoke-direct {v0}, Lcom/google/zxing/oned/b;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/d;->a:Lcom/google/zxing/oned/b;

    .line 29
    new-instance v0, Lcom/google/zxing/oned/c;

    invoke-direct {v0}, Lcom/google/zxing/oned/c;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/d;->b:Lcom/google/zxing/oned/c;

    return-void
.end method


# virtual methods
.method public final a(IILcom/google/zxing/common/BitArray;)Lcom/google/zxing/Result;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 32
    sget-object v7, Lcom/google/zxing/oned/d;->c:[I

    const/4 v8, 0x3

    .line 260
    new-array v9, v8, [I

    move/from16 v10, p2

    invoke-static {v2, v10, v5, v7, v9}, Lcom/google/zxing/oned/UPCEANReader;->d(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v7

    .line 34
    :try_start_0
    iget-object v9, v0, Lcom/google/zxing/oned/d;->b:Lcom/google/zxing/oned/c;

    invoke-virtual {v9, v2, v1, v7}, Lcom/google/zxing/oned/c;->a(Lcom/google/zxing/common/BitArray;I[I)Lcom/google/zxing/Result;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    :catch_0
    iget-object v9, v0, Lcom/google/zxing/oned/d;->a:Lcom/google/zxing/oned/b;

    iget-object v10, v9, Lcom/google/zxing/oned/b;->b:Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 62
    iget-object v9, v9, Lcom/google/zxing/oned/b;->a:[I

    aput v5, v9, v5

    .line 63
    aput v5, v9, v6

    .line 64
    aput v5, v9, v4

    .line 65
    aput v5, v9, v8

    .line 66
    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    .line 67
    aget v11, v7, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v12, v4, :cond_3

    if-ge v11, v8, :cond_3

    .line 72
    sget-object v14, Lcom/google/zxing/oned/UPCEANReader;->g:[[I

    invoke-static {v2, v9, v11, v14}, Lcom/google/zxing/oned/UPCEANReader;->c(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    .line 73
    rem-int/lit8 v15, v14, 0xa

    add-int/lit8 v15, v15, 0x30

    int-to-char v15, v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    array-length v15, v9

    const/16 v16, 0x0

    :goto_1
    if-ge v5, v15, :cond_0

    aget v17, v9, v5

    add-int v11, v11, v17

    add-int/2addr v5, v6

    goto :goto_1

    :cond_0
    if-lt v14, v3, :cond_1

    rsub-int/lit8 v5, v12, 0x1

    shl-int v5, v6, v5

    or-int/2addr v13, v5

    :cond_1
    if-eq v12, v6, :cond_2

    .line 82
    invoke-virtual {v2, v11}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v5

    .line 83
    invoke-virtual {v2, v5}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v5

    move v11, v5

    :cond_2
    add-int/2addr v12, v6

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    .line 87
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 91
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-ne v2, v13, :cond_6

    .line 43
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v4, :cond_4

    move-object v3, v5

    goto :goto_2

    .line 107
    :cond_4
    new-instance v3, Ljava/util/EnumMap;

    const-class v8, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v3, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 108
    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :goto_2
    new-instance v8, Lcom/google/zxing/Result;

    new-instance v9, Lcom/google/zxing/ResultPoint;

    aget v10, v7, v16

    aget v7, v7, v6

    add-int/2addr v10, v7

    int-to-float v7, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    int-to-float v1, v1

    invoke-direct {v9, v7, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v10, v11

    invoke-direct {v7, v10, v1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-array v1, v4, [Lcom/google/zxing/ResultPoint;

    aput-object v9, v1, v16

    aput-object v7, v1, v6

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v8, v2, v5, v1, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    if-eqz v3, :cond_5

    .line 55
    invoke-virtual {v8, v3}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_5
    return-object v8

    .line 92
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 88
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1
.end method
