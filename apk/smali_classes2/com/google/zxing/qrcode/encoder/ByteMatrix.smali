.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p2, v0, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    .line 36
    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    .line 37
    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    if-ge v1, v2, :cond_1

    const/4 v2, 0x0

    .line 70
    :goto_1
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    if-ge v2, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v3, v3, v1

    aput-byte p1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public get(II)B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public getArray()[[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    return v0
.end method

.method public set(IIB)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object p2, v0, p2

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(III)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public set(IIZ)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->b:I

    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->c:I

    mul-int v2, v2, v3

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 81
    iget-object v6, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->a:[[B

    aget-object v6, v6, v4

    aget-byte v6, v6, v5

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    .line 89
    const-string v6, "  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 86
    :cond_0
    const-string v6, " 1"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 83
    :cond_1
    const-string v6, " 0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0xa

    .line 93
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
