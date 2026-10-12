.class final Lcom/google/common/hash/f$b;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# virtual methods
.method public final a()[B
    .locals 1

    .line 126
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 130
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return v0
.end method

.method public final c(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 117
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 118
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int v2, v1, v0

    iget-object v3, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    array-length v4, v3

    if-le v2, v4, :cond_0

    add-int/2addr v1, v0

    .line 119
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    .line 121
    :cond_0
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    iget p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return-void
.end method
