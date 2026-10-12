.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 3

    .line 45
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_2

    add-int v0, p5, p7

    if-gt v0, p3, :cond_2

    .line 51
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:[B

    .line 52
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    .line 53
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->e:I

    .line 54
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->f:I

    .line 55
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->g:I

    if-eqz p8, :cond_1

    mul-int p5, p5, p2

    add-int/2addr p5, p4

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p7, :cond_1

    .line 144
    div-int/lit8 p3, p6, 0x2

    add-int/2addr p3, p5

    add-int p4, p5, p6

    add-int/lit8 p4, p4, -0x1

    move p8, p5

    :goto_1
    if-ge p8, p3, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:[B

    aget-byte v1, v0, p8

    .line 147
    aget-byte v2, v0, p4

    aput-byte v2, v0, p8

    .line 148
    aput-byte v1, v0, p4

    add-int/lit8 p8, p8, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    add-int/2addr p5, p2

    goto :goto_0

    :cond_1
    return-void

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 9

    .line 113
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->f:I

    add-int v4, v1, p1

    iget p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->g:I

    add-int v5, p1, p2

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:[B

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->e:I

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 8

    .line 77
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:[B

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    if-ne v0, v3, :cond_0

    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->e:I

    if-ne v1, v4, :cond_0

    return-object v2

    :cond_0
    mul-int v4, v0, v1

    .line 87
    new-array v5, v4, [B

    .line 88
    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->g:I

    mul-int v6, v6, v3

    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->f:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    if-ne v0, v3, :cond_1

    .line 92
    invoke-static {v2, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_1
    :goto_0
    if-ge v7, v1, :cond_2

    mul-int v4, v7, v0

    .line 100
    invoke-static {v2, v6, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 67
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 68
    :cond_0
    new-array p2, v0, [B

    .line 70
    :cond_1
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->g:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->f:I

    add-int/2addr p1, v1

    .line 71
    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 64
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested row is outside the image: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()[I
    .locals 12

    .line 124
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 126
    new-array v2, v2, [I

    .line 128
    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->g:I

    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->d:I

    mul-int v3, v3, v4

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->f:I

    add-int/2addr v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_1

    mul-int v7, v6, v0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v0, :cond_0

    add-int v9, v3, v8

    .line 133
    iget-object v10, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->c:[B

    aget-byte v9, v10, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v7, v8

    const v11, 0x10101

    mul-int v9, v9, v11

    const/high16 v11, -0x1000000

    or-int/2addr v9, v11

    .line 134
    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v3, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
