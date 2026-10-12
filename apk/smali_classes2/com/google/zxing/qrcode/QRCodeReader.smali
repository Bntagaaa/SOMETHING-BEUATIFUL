.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field public static final b:[Lcom/google/zxing/ResultPoint;


# instance fields
.field public final a:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->b:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/qrcode/decoder/Decoder;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->a:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

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
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->a:Lcom/google/zxing/qrcode/decoder/Decoder;

    if-eqz p2, :cond_b

    sget-object v1, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v2

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    .line 159
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 160
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    .line 161
    aget v6, v1, v5

    const/4 v7, 0x1

    .line 162
    aget v8, v1, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    if-ge v8, v3, :cond_2

    .line 166
    invoke-virtual {p1, v6, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eq v9, v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    goto :goto_1

    :cond_0
    xor-int/lit8 v9, v9, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v6, v4, :cond_9

    if-eq v8, v3, :cond_9

    .line 178
    aget v3, v1, v5

    sub-int/2addr v6, v3

    int-to-float v4, v6

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v4, v6

    .line 117
    aget v1, v1, v7

    .line 118
    aget v6, v2, v7

    .line 120
    aget v2, v2, v5

    sub-int/2addr v6, v1

    sub-int v8, v2, v3

    if-eq v6, v8, :cond_3

    add-int v2, v3, v6

    :cond_3
    sub-int/2addr v2, v3

    add-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 128
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v4

    .line 129
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-lez v2, :cond_8

    if-lez v6, :cond_8

    if-ne v6, v2, :cond_7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    float-to-int v7, v7

    add-int/2addr v1, v7

    add-int/2addr v3, v7

    .line 146
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v7, v2, v6}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_6

    int-to-float v9, v8

    mul-float v9, v9, v4

    float-to-int v9, v9

    add-int/2addr v9, v1

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v2, :cond_5

    int-to-float v11, v10

    mul-float v11, v11, v4

    float-to-int v11, v11

    add-int/2addr v11, v3

    .line 150
    invoke-virtual {p1, v11, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 151
    invoke-virtual {v7, v10, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 73
    :cond_6
    invoke-virtual {v0, v7, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/google/zxing/qrcode/QRCodeReader;->b:[Lcom/google/zxing/ResultPoint;

    goto :goto_4

    .line 135
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 131
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 176
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 112
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p1

    throw p1

    .line 76
    :cond_b
    new-instance v1, Lcom/google/zxing/qrcode/detector/Detector;

    invoke-virtual {p1}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p1

    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    .line 81
    :goto_4
    new-instance v0, Lcom/google/zxing/Result;

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 82
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 84
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_c
    invoke-virtual {p1}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 88
    sget-object p2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-virtual {v0, p2, p1}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    :cond_d
    return-object v0
.end method

.method public getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/zxing/qrcode/QRCodeReader;->a:Lcom/google/zxing/qrcode/decoder/Decoder;

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
