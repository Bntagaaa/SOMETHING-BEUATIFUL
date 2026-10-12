.class final Lcom/google/zxing/pdf417/encoder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lcom/google/zxing/pdf417/encoder/b;

.field public b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 36
    new-array v0, p1, [Lcom/google/zxing/pdf417/encoder/b;

    iput-object v0, p0, Lcom/google/zxing/pdf417/encoder/a;->a:[Lcom/google/zxing/pdf417/encoder/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/google/zxing/pdf417/encoder/a;->a:[Lcom/google/zxing/pdf417/encoder/b;

    new-instance v3, Lcom/google/zxing/pdf417/encoder/b;

    add-int/lit8 v4, p2, 0x4

    mul-int/lit8 v4, v4, 0x11

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/zxing/pdf417/encoder/b;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x11

    .line 41
    iput p2, p0, Lcom/google/zxing/pdf417/encoder/a;->d:I

    .line 42
    iput p1, p0, Lcom/google/zxing/pdf417/encoder/a;->c:I

    .line 43
    iput v0, p0, Lcom/google/zxing/pdf417/encoder/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/zxing/pdf417/encoder/b;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/zxing/pdf417/encoder/a;->a:[Lcom/google/zxing/pdf417/encoder/b;

    iget v1, p0, Lcom/google/zxing/pdf417/encoder/a;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b(II)[[B
    .locals 11

    .line 71
    iget v0, p0, Lcom/google/zxing/pdf417/encoder/a;->c:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/google/zxing/pdf417/encoder/a;->d:I

    mul-int v2, v2, p1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    mul-int v0, v0, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    sub-int v5, v0, v3

    sub-int/2addr v5, v4

    .line 74
    iget-object v6, p0, Lcom/google/zxing/pdf417/encoder/a;->a:[Lcom/google/zxing/pdf417/encoder/b;

    div-int v7, v3, p2

    aget-object v6, v6, v7

    .line 79
    iget-object v6, v6, Lcom/google/zxing/pdf417/encoder/b;->a:[B

    .line 79
    array-length v7, v6

    mul-int v7, v7, p1

    new-array v8, v7, [B

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_0

    .line 81
    div-int v10, v9, p1

    aget-byte v10, v6, v10

    aput-byte v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 74
    :cond_0
    aput-object v8, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
