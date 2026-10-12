.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field public static final b:[Lcom/google/zxing/ResultPoint;


# instance fields
.field public final a:Lcom/google/zxing/pdf417/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->b:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/zxing/pdf417/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/pdf417/PDF417Reader;->a:Lcom/google/zxing/pdf417/decoder/Decoder;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/google/zxing/pdf417/PDF417Reader;->a:Lcom/google/zxing/pdf417/decoder/Decoder;

    if-eqz p2, :cond_f

    sget-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 65
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object p2

    .line 94
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v1

    if-eqz p2, :cond_e

    if-eqz v1, :cond_e

    const/4 v2, 0x0

    .line 133
    aget v3, p2, v2

    const/4 v4, 0x1

    .line 134
    aget v5, p2, v4

    .line 135
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    :goto_0
    if-ge v3, v6, :cond_0

    .line 136
    invoke-virtual {p1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eq v3, v6, :cond_d

    .line 143
    aget v5, p2, v2

    sub-int/2addr v3, v5

    ushr-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_c

    .line 101
    aget v6, p2, v4

    .line 102
    aget v1, v1, v4

    .line 152
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_1
    add-int/lit8 v10, v7, -0x1

    if-ge v5, v10, :cond_2

    const/16 v11, 0x8

    if-ge v8, v11, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 159
    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eq v9, v10, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    move v9, v10

    goto :goto_1

    :cond_2
    if-eq v5, v10, :cond_b

    .line 104
    aget p2, p2, v2

    .line 172
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    :goto_2
    if-le v7, p2, :cond_3

    .line 175
    invoke-virtual {p1, v7, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_3

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_3
    if-le v7, p2, :cond_5

    const/16 v10, 0x9

    if-ge v8, v10, :cond_5

    add-int/lit8 v7, v7, -0x1

    .line 182
    invoke-virtual {p1, v7, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eq v9, v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    move v9, v10

    goto :goto_3

    :cond_5
    if-eq v7, p2, :cond_a

    sub-int/2addr v7, v5

    add-int/2addr v7, v4

    .line 106
    div-int/2addr v7, v3

    sub-int/2addr v1, v6

    add-int/2addr v1, v4

    .line 107
    div-int/2addr v1, v3

    if-lez v7, :cond_9

    if-lez v1, :cond_9

    shr-int/lit8 p2, v3, 0x1

    add-int/2addr v6, p2

    add-int/2addr v5, p2

    .line 120
    new-instance p2, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {p2, v7, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v1, :cond_8

    mul-int v8, v4, v3

    add-int/2addr v8, v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v7, :cond_7

    mul-int v10, v9, v3

    add-int/2addr v10, v5

    .line 124
    invoke-virtual {p1, v10, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 125
    invoke-virtual {p2, v9, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 66
    :cond_8
    invoke-virtual {v0, p2}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    .line 67
    sget-object p2, Lcom/google/zxing/pdf417/PDF417Reader;->b:[Lcom/google/zxing/ResultPoint;

    goto :goto_6

    .line 109
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 189
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 166
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 145
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 140
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 96
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 69
    :cond_f
    new-instance p2, Lcom/google/zxing/pdf417/detector/Detector;

    invoke-direct {p2, p1}, Lcom/google/zxing/pdf417/detector/Detector;-><init>(Lcom/google/zxing/BinaryBitmap;)V

    invoke-virtual {p2}, Lcom/google/zxing/pdf417/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    .line 73
    :goto_6
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object p1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
