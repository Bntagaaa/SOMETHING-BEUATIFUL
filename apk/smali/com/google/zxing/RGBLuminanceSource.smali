.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 9

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 37
    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->d:I

    .line 38
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->e:I

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->f:I

    .line 40
    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->g:I

    mul-int v1, p1, p2

    .line 44
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    mul-int v2, v1, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    add-int v4, v2, v3

    .line 48
    aget v5, p3, v4

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v5, v5, 0xff

    if-ne v6, v7, :cond_0

    if-ne v7, v5, :cond_0

    .line 54
    iget-object v5, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    goto :goto_2

    .line 57
    :cond_0
    iget-object v8, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    add-int/2addr v6, v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    shr-int/lit8 v5, v6, 0x2

    int-to-byte v5, v5

    aput-byte v5, v8, v4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>([BIIIIII)V
    .locals 0

    .line 70
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 74
    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    .line 75
    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->d:I

    .line 76
    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->e:I

    .line 77
    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->f:I

    .line 78
    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->g:I

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 8

    .line 133
    new-instance v0, Lcom/google/zxing/RGBLuminanceSource;

    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->f:I

    add-int v4, v1, p1

    iget p1, p0, Lcom/google/zxing/RGBLuminanceSource;->g:I

    add-int v5, p1, p2

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->d:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->e:I

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 8

    .line 97
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    .line 102
    iget-object v2, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->d:I

    if-ne v0, v3, :cond_0

    iget v4, p0, Lcom/google/zxing/RGBLuminanceSource;->e:I

    if-ne v1, v4, :cond_0

    return-object v2

    :cond_0
    mul-int v4, v0, v1

    .line 107
    new-array v5, v4, [B

    .line 108
    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->g:I

    mul-int v6, v6, v3

    iget v7, p0, Lcom/google/zxing/RGBLuminanceSource;->f:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    if-ne v0, v3, :cond_1

    .line 112
    invoke-static {v2, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v5

    :cond_1
    :goto_0
    if-ge v7, v1, :cond_2

    mul-int v4, v7, v0

    .line 120
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

    .line 83
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 87
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 88
    :cond_0
    new-array p2, v0, [B

    .line 90
    :cond_1
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->g:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->d:I

    mul-int p1, p1, v1

    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->f:I

    add-int/2addr p1, v1

    .line 91
    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->c:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 84
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested row is outside the image: "

    .line 0
    invoke-static {p1, v0}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
