.class final Lcom/google/zxing/qrcode/decoder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/common/BitMatrix;

.field public b:Lcom/google/zxing/qrcode/decoder/Version;

.field public c:Lcom/google/zxing/qrcode/decoder/e;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/BitMatrix;

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final a(III)I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p1

    if-eqz p1, :cond_0

    shl-int/lit8 p1, p3, 0x1

    or-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    shl-int/lit8 p1, p3, 0x1

    return p1
.end method

.method public final b()Lcom/google/zxing/qrcode/decoder/e;
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/a;->c:Lcom/google/zxing/qrcode/decoder/e;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 59
    invoke-virtual {p0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    .line 62
    invoke-virtual {p0, v1, v4, v2}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v2

    .line 63
    invoke-virtual {p0, v4, v4, v2}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v2

    .line 64
    invoke-virtual {p0, v4, v1, v2}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v1

    const/4 v2, 0x5

    :goto_1
    if-ltz v2, :cond_2

    .line 67
    invoke-virtual {p0, v4, v2, v1}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 71
    :cond_2
    iget-object v2, p0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v3, v2, -0x7

    add-int/lit8 v5, v2, -0x1

    :goto_2
    if-lt v5, v3, :cond_3

    .line 75
    invoke-virtual {p0, v4, v5, v0}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v0

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, -0x8

    :goto_3
    if-ge v3, v2, :cond_4

    .line 78
    invoke-virtual {p0, v3, v4, v0}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 106
    :cond_4
    invoke-static {v1, v0}, Lcom/google/zxing/qrcode/decoder/e;->a(II)Lcom/google/zxing/qrcode/decoder/e;

    move-result-object v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    xor-int/lit16 v1, v1, 0x5412

    xor-int/lit16 v0, v0, 0x5412

    .line 113
    invoke-static {v1, v0}, Lcom/google/zxing/qrcode/decoder/e;->a(II)Lcom/google/zxing/qrcode/decoder/e;

    move-result-object v2

    .line 81
    :goto_4
    iput-object v2, p0, Lcom/google/zxing/qrcode/decoder/a;->c:Lcom/google/zxing/qrcode/decoder/e;

    if-eqz v2, :cond_6

    return-object v2

    .line 85
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method public final c()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/a;->b:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v0, :cond_0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/a;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    add-int/lit8 v1, v0, -0x11

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x6

    if-gt v1, v2, :cond_1

    .line 105
    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v0, -0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    :goto_0
    if-ltz v4, :cond_3

    add-int/lit8 v6, v0, -0x9

    :goto_1
    if-lt v6, v1, :cond_2

    .line 113
    invoke-virtual {p0, v6, v4, v5}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 117
    :cond_3
    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/Version;->b(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 118
    invoke-virtual {v4}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v5

    if-ne v5, v0, :cond_4

    .line 119
    iput-object v4, p0, Lcom/google/zxing/qrcode/decoder/a;->b:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v4

    :cond_4
    :goto_2
    if-ltz v2, :cond_6

    add-int/lit8 v4, v0, -0x9

    :goto_3
    if-lt v4, v1, :cond_5

    .line 127
    invoke-virtual {p0, v2, v4, v3}, Lcom/google/zxing/qrcode/decoder/a;->a(III)I

    move-result v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 131
    :cond_6
    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/Version;->b(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 132
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 133
    iput-object v1, p0, Lcom/google/zxing/qrcode/decoder/a;->b:Lcom/google/zxing/qrcode/decoder/Version;

    return-object v1

    .line 136
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method
