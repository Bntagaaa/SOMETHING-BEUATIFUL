.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final e:[I

.field public static final f:[[I

.field public static final g:[[I


# instance fields
.field public final a:Ljava/lang/StringBuilder;

.field public final b:Lcom/google/zxing/oned/d;

.field public final c:Lcom/google/zxing/oned/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    .line 53
    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->d:[I

    .line 58
    filled-new-array {v0, v0, v0, v0, v0}, [I

    move-result-object v1

    sput-object v1, Lcom/google/zxing/oned/UPCEANReader;->e:[I

    const/16 v1, 0xa

    .line 63
    new-array v2, v1, [[I

    const/4 v3, 0x3

    const/4 v4, 0x2

    filled-new-array {v3, v4, v0, v0}, [I

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    filled-new-array {v4, v4, v4, v0}, [I

    move-result-object v5

    aput-object v5, v2, v0

    filled-new-array {v4, v0, v4, v4}, [I

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v5, 0x4

    filled-new-array {v0, v5, v0, v0}, [I

    move-result-object v7

    aput-object v7, v2, v3

    filled-new-array {v0, v0, v3, v4}, [I

    move-result-object v7

    aput-object v7, v2, v5

    filled-new-array {v0, v4, v3, v0}, [I

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v2, v8

    filled-new-array {v0, v0, v0, v5}, [I

    move-result-object v5

    const/4 v7, 0x6

    aput-object v5, v2, v7

    filled-new-array {v0, v3, v0, v4}, [I

    move-result-object v5

    const/4 v7, 0x7

    aput-object v5, v2, v7

    filled-new-array {v0, v4, v0, v3}, [I

    move-result-object v5

    const/16 v7, 0x8

    aput-object v5, v2, v7

    filled-new-array {v3, v0, v0, v4}, [I

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    sput-object v2, Lcom/google/zxing/oned/UPCEANReader;->f:[[I

    const/16 v3, 0x14

    .line 82
    new-array v4, v3, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->g:[[I

    .line 83
    invoke-static {v2, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0xa

    :goto_0
    if-ge v2, v3, :cond_1

    .line 85
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->f:[[I

    add-int/lit8 v5, v2, -0xa

    aget-object v4, v4, v5

    .line 86
    array-length v5, v4

    new-array v5, v5, [I

    const/4 v7, 0x0

    .line 87
    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_0

    .line 88
    array-length v8, v4

    sub-int/2addr v8, v7

    sub-int/2addr v8, v0

    aget v8, v4, v8

    aput v8, v5, v7

    add-int/2addr v7, v0

    goto :goto_1

    .line 90
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->g:[[I

    aput-object v5, v4, v2

    add-int/2addr v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->a:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Lcom/google/zxing/oned/d;

    invoke-direct {v0}, Lcom/google/zxing/oned/d;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->b:Lcom/google/zxing/oned/d;

    .line 101
    new-instance v0, Lcom/google/zxing/oned/a;

    invoke-direct {v0}, Lcom/google/zxing/oned/a;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEANReader;->c:Lcom/google/zxing/oned/a;

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 6

    .line 228
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, -0x2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x9

    if-ltz v2, :cond_2

    .line 235
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_1

    if-gt v5, v4, :cond_1

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_2
    mul-int/lit8 v3, v3, 0x3

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_4

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    if-ltz v5, :cond_3

    if-gt v5, v4, :cond_3

    add-int/2addr v3, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 245
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 249
    :cond_4
    rem-int/lit8 v3, v3, 0xa

    if-nez v3, :cond_5

    return v2

    :cond_5
    :goto_2
    return v1
.end method

.method public static c(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 4

    .line 322
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 325
    array-length p0, p3

    const/16 p2, 0x7a

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 327
    aget-object v2, p3, v1

    const/16 v3, 0xb3

    .line 328
    invoke-static {p1, v2, v3}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v2

    if-ge v2, p2, :cond_0

    move v0, v1

    move p2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    .line 337
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static d(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 9

    .line 279
    array-length v0, p3

    .line 280
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    :goto_0
    const/4 v2, 0x0

    move v3, p2

    const/4 v4, 0x0

    move p2, p1

    :goto_1
    if-ge p1, v1, :cond_4

    .line 286
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v3

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 287
    aget v5, p4, v4

    add-int/2addr v5, v6

    aput v5, p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_3

    const/16 v7, 0xb3

    .line 290
    invoke-static {p4, p3, v7}, Lcom/google/zxing/oned/OneDReader;->patternMatchVariance([I[II)I

    move-result v7

    const/16 v8, 0x7a

    if-ge v7, v8, :cond_2

    .line 291
    filled-new-array {p2, p1}, [I

    move-result-object p0

    return-object p0

    .line 293
    :cond_2
    aget v7, p4, v2

    aget v8, p4, v6

    add-int/2addr v7, v8

    add-int/2addr p2, v7

    add-int/lit8 v7, v0, -0x2

    const/4 v8, 0x2

    .line 294
    invoke-static {p4, v8, p4, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    aput v2, p4, v7

    .line 296
    aput v2, p4, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 301
    :goto_2
    aput v6, p4, v4

    xor-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 305
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public static e(Lcom/google/zxing/common/BitArray;)[I
    .locals 8

    const/4 v0, 0x3

    .line 108
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez v4, :cond_1

    .line 110
    invoke-static {v1, v2, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    sget-object v3, Lcom/google/zxing/oned/UPCEANReader;->d:[I

    invoke-static {p0, v5, v2, v3, v1}, Lcom/google/zxing/oned/UPCEANReader;->d(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v3

    .line 112
    aget v5, v3, v2

    const/4 v6, 0x1

    .line 113
    aget v6, v3, v6

    sub-int v7, v6, v5

    sub-int v7, v5, v7

    if-ltz v7, :cond_0

    .line 119
    invoke-virtual {p0, v7, v5, v2}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v4

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public checkChecksum(Ljava/lang/String;)Z
    .locals 0

    .line 216
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 3

    .line 253
    sget-object v0, Lcom/google/zxing/oned/UPCEANReader;->d:[I

    const/4 v1, 0x3

    .line 260
    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/google/zxing/oned/UPCEANReader;->d(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object p1

    return-object p1
.end method

.method public abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 1
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

    .line 128
    invoke-static {p2}, Lcom/google/zxing/oned/UPCEANReader;->e(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p4, :cond_0

    move-object p4, v2

    goto :goto_0

    .line 142
    :cond_0
    sget-object v3, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/zxing/ResultPointCallback;

    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    .line 146
    new-instance v4, Lcom/google/zxing/ResultPoint;

    aget v5, p3, v0

    aget v6, p3, v1

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    int-to-float v6, p1

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {p4, v4}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/google/zxing/oned/UPCEANReader;->a:Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    invoke-virtual {p0, p2, p3, v4}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v5

    if-eqz p4, :cond_2

    .line 156
    new-instance v6, Lcom/google/zxing/ResultPoint;

    int-to-float v7, v5

    int-to-float v8, p1

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {p4, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 161
    :cond_2
    invoke-virtual {p0, p2, v5}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v5

    if-eqz p4, :cond_3

    .line 164
    new-instance v6, Lcom/google/zxing/ResultPoint;

    aget v7, v5, v0

    aget v8, v5, v1

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v3

    int-to-float v8, p1

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {p4, v6}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 172
    :cond_3
    aget p4, v5, v1

    .line 173
    aget v6, v5, v0

    sub-int v6, p4, v6

    add-int/2addr v6, p4

    .line 174
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_c

    invoke-virtual {p2, p4, v6, v0}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 178
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 179
    invoke-virtual {p0, p4}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 183
    aget v4, p3, v1

    aget p3, p3, v0

    add-int/2addr v4, p3

    int-to-float p3, v4

    div-float/2addr p3, v3

    .line 184
    aget v4, v5, v1

    aget v6, v5, v0

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v3

    .line 185
    invoke-virtual {p0}, Lcom/google/zxing/oned/UPCEANReader;->f()Lcom/google/zxing/BarcodeFormat;

    move-result-object v3

    .line 186
    new-instance v6, Lcom/google/zxing/Result;

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p1

    invoke-direct {v7, p3, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, v4, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    aput-object v7, v4, v0

    aput-object p3, v4, v1

    invoke-direct {v6, p4, v2, v4, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 194
    :try_start_0
    iget-object p3, p0, Lcom/google/zxing/oned/UPCEANReader;->b:Lcom/google/zxing/oned/d;

    aget v4, v5, v1

    invoke-virtual {p3, p1, v4, p2}, Lcom/google/zxing/oned/d;->a(IILcom/google/zxing/common/BitArray;)Lcom/google/zxing/Result;

    move-result-object p1

    .line 195
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p2, p3}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 197
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 202
    :goto_1
    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v3, p1, :cond_4

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-ne v3, p1, :cond_a

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/google/zxing/oned/UPCEANReader;->c:Lcom/google/zxing/oned/a;

    .line 0
    monitor-enter p1

    .line 60
    :try_start_1
    iget-object p2, p1, Lcom/google/zxing/oned/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_5

    .line 61
    monitor-exit p1

    goto/16 :goto_2

    :cond_5
    const/16 p2, 0x13

    .line 63
    :try_start_2
    filled-new-array {v0, p2}, [I

    move-result-object p2

    const-string p3, "US/CA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x27

    const/16 p3, 0x1e

    .line 64
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "US"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x8b

    const/16 p3, 0x3c

    .line 65
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "US/CA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x17b

    const/16 p3, 0x12c

    .line 66
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "FR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x17c

    .line 67
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "BG"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x17f

    .line 68
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "SI"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x181

    .line 69
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "HR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x183

    .line 70
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "BA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1b8

    const/16 p3, 0x190

    .line 71
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "DE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1cb

    const/16 p3, 0x1c2

    .line 72
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "JP"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1d5

    const/16 p3, 0x1cc

    .line 73
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "RU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1d7

    .line 74
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "TW"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1da

    .line 75
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "EE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1db

    .line 76
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "LV"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1dc

    .line 77
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "AZ"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1dd

    .line 78
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "LT"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1de

    .line 79
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "UZ"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1df

    .line 80
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "LK"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e0

    .line 81
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PH"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e1

    .line 82
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "BY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e2

    .line 83
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "UA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e4

    .line 84
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MD"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e5

    .line 85
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "AM"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e6

    .line 86
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "GE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e7

    .line 87
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "KZ"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1e9

    .line 88
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "HK"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1f3

    const/16 p3, 0x1ea

    .line 89
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "JP"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x1fd

    const/16 p3, 0x1f4

    .line 90
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "GB"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x208

    .line 91
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "GR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x210

    .line 92
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "LB"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x211

    .line 93
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x213

    .line 94
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MK"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x217

    .line 95
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MT"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x21b

    .line 96
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "IE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x225

    const/16 p3, 0x21c

    .line 97
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "BE/LU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x230

    .line 98
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PT"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x239

    .line 99
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "IS"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x243

    const/16 p3, 0x23a

    .line 100
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "DK"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x24e

    .line 101
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PL"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x252

    .line 102
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "RO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x257

    .line 103
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "HU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x259

    const/16 p3, 0x258

    .line 104
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "ZA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x25b

    .line 105
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "GH"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x260

    .line 106
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "BH"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x261

    .line 107
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x263

    .line 108
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x265

    .line 109
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "DZ"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x268

    .line 110
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "KE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x26a

    .line 111
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CI"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x26b

    .line 112
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "TN"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x26d

    .line 113
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "SY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x26e

    .line 114
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "EG"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x270

    .line 115
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "LY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x271

    .line 116
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "JO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x272

    .line 117
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "IR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x273

    .line 118
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "KW"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x274

    .line 119
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "SA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x275

    .line 120
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "AE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x289

    const/16 p3, 0x280

    .line 121
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "FI"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2b7

    const/16 p3, 0x2b2

    .line 122
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "CN"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2c5

    const/16 p3, 0x2bc

    .line 123
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "NO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2d9

    .line 124
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "IL"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e3

    const/16 p3, 0x2da

    .line 125
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "SE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e4

    .line 126
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "GT"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e5

    .line 127
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "SV"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e6

    .line 128
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "HN"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e7

    .line 129
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "NI"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e8

    .line 130
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2e9

    .line 131
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2ea

    .line 132
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "DO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2ee

    .line 133
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MX"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2f3

    const/16 p3, 0x2f2

    .line 134
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "CA"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x2f7

    .line 135
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "VE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x301

    const/16 p3, 0x2f8

    .line 136
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "CH"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x302

    .line 137
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x305

    .line 138
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "UY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x307

    .line 139
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x309

    .line 140
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "BO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x30b

    .line 141
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "AR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x30c

    .line 142
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CL"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x310

    .line 143
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x311

    .line 144
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PE"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x312

    .line 145
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "EC"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x316

    const/16 p3, 0x315

    .line 146
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "BR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x347

    const/16 p3, 0x320

    .line 147
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "IT"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x351

    const/16 p3, 0x348

    .line 148
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "ES"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x352

    .line 149
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x35a

    .line 150
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "SK"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x35b

    .line 151
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "CZ"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x35c

    .line 152
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "YU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x361

    .line 153
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MN"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x363

    .line 154
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "KP"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x365

    const/16 p3, 0x364

    .line 155
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "TR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x36f

    const/16 p3, 0x366

    .line 156
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "NL"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x370

    .line 157
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "KR"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x375

    .line 158
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "TH"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x378

    .line 159
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "SG"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x37a

    .line 160
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "IN"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x37d

    .line 161
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "VN"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x380

    .line 162
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "PK"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x383

    .line 163
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "ID"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x397

    const/16 p3, 0x384

    .line 164
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "AT"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x3ab

    const/16 p3, 0x3a2

    .line 165
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "AU"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x3b5

    const/16 p3, 0x3ac

    .line 166
    filled-new-array {p3, p2}, [I

    move-result-object p2

    const-string p3, "AZ"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x3bb

    .line 167
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MY"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V

    const/16 p2, 0x3be

    .line 168
    filled-new-array {p2}, [I

    move-result-object p2

    const-string p3, "MO"

    invoke-virtual {p1, p3, p2}, Lcom/google/zxing/oned/a;->a(Ljava/lang/String;[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    monitor-exit p1

    :goto_2
    const/4 p2, 0x3

    .line 38
    invoke-virtual {p4, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 39
    iget-object p3, p1, Lcom/google/zxing/oned/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_3
    if-ge p4, p3, :cond_9

    .line 41
    iget-object v3, p1, Lcom/google/zxing/oned/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 42
    aget v4, v3, v0

    if-ge p2, v4, :cond_6

    goto :goto_5

    .line 46
    :cond_6
    array-length v5, v3

    if-ne v5, v1, :cond_7

    goto :goto_4

    :cond_7
    aget v4, v3, v1

    :goto_4
    if-gt p2, v4, :cond_8

    .line 48
    iget-object p1, p1, Lcom/google/zxing/oned/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_8
    add-int/2addr p4, v1

    goto :goto_3

    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 205
    sget-object p1, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v6, p1, v2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_a
    return-object v6

    :catchall_0
    move-exception p2

    .line 169
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    .line 180
    :cond_b
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p1

    throw p1

    .line 175
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1
.end method

.method public abstract f()Lcom/google/zxing/BarcodeFormat;
.end method
