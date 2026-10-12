.class final Lkotlin/io/encoding/a;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\'\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/io/encoding/a;",
        "Ljava/io/InputStream;",
        "input",
        "Lkotlin/io/encoding/Base64;",
        "base64",
        "<init>",
        "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V",
        "",
        "read",
        "()I",
        "",
        "destination",
        "offset",
        "length",
        "([BII)I",
        "",
        "close",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/io/encoding/ExperimentalEncodingApi;
.end annotation


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Lkotlin/io/encoding/Base64;

.field public c:Z

.field public d:Z

.field public final e:[B

.field public final f:[B

.field public final g:[B

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V
    .locals 1
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/io/encoding/Base64;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 75
    iput-object p1, p0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    .line 76
    iput-object p2, p0, Lkotlin/io/encoding/a;->b:Lkotlin/io/encoding/Base64;

    const/4 p1, 0x1

    .line 80
    new-array p1, p1, [B

    iput-object p1, p0, Lkotlin/io/encoding/a;->e:[B

    const/16 p1, 0x400

    .line 82
    new-array p2, p1, [B

    iput-object p2, p0, Lkotlin/io/encoding/a;->f:[B

    .line 84
    new-array p1, p1, [B

    iput-object p1, p0, Lkotlin/io/encoding/a;->g:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 159
    iget-boolean v0, p0, Lkotlin/io/encoding/a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lkotlin/io/encoding/a;->c:Z

    .line 161
    iget-object v0, p0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 5

    .line 91
    iget v0, p0, Lkotlin/io/encoding/a;->h:I

    iget v1, p0, Lkotlin/io/encoding/a;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v4, p0, Lkotlin/io/encoding/a;->g:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v0, v3

    .line 93
    iput v0, p0, Lkotlin/io/encoding/a;->h:I

    if-ne v0, v1, :cond_0

    .line 195
    iput v2, p0, Lkotlin/io/encoding/a;->h:I

    .line 196
    iput v2, p0, Lkotlin/io/encoding/a;->i:I

    :cond_0
    return v4

    .line 97
    :cond_1
    iget-object v0, p0, Lkotlin/io/encoding/a;->e:[B

    invoke-virtual {p0, v0, v2, v3}, Lkotlin/io/encoding/a;->read([BII)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-ne v1, v3, :cond_2

    .line 99
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v4
.end method

.method public read([BII)I
    .locals 18
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "destination"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v2, :cond_14

    if-ltz v3, :cond_14

    add-int v4, v2, v3

    .line 105
    array-length v5, v1

    if-gt v4, v5, :cond_14

    .line 108
    iget-boolean v5, v0, Lkotlin/io/encoding/a;->c:Z

    if-nez v5, :cond_13

    .line 111
    iget-boolean v5, v0, Lkotlin/io/encoding/a;->d:Z

    const/4 v6, -0x1

    if-eqz v5, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v5, 0x0

    if-nez v3, :cond_1

    return v5

    .line 88
    :cond_1
    iget v7, v0, Lkotlin/io/encoding/a;->i:I

    iget v8, v0, Lkotlin/io/encoding/a;->h:I

    sub-int v9, v7, v8

    .line 118
    iget-object v10, v0, Lkotlin/io/encoding/a;->g:[B

    if-lt v9, v3, :cond_3

    add-int v4, v8, v3

    .line 183
    invoke-static {v10, v1, v2, v8, v4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 189
    iget v1, v0, Lkotlin/io/encoding/a;->h:I

    add-int/2addr v1, v3

    iput v1, v0, Lkotlin/io/encoding/a;->h:I

    .line 194
    iget v2, v0, Lkotlin/io/encoding/a;->i:I

    if-ne v1, v2, :cond_2

    .line 195
    iput v5, v0, Lkotlin/io/encoding/a;->h:I

    .line 196
    iput v5, v0, Lkotlin/io/encoding/a;->i:I

    :cond_2
    return v3

    :cond_3
    sub-int/2addr v7, v8

    sub-int/2addr v3, v7

    const/4 v7, 0x2

    add-int/2addr v3, v7

    .line 124
    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x4

    move v8, v2

    .line 129
    :goto_0
    iget-boolean v9, v0, Lkotlin/io/encoding/a;->d:Z

    if-nez v9, :cond_11

    if-lez v3, :cond_11

    .line 131
    iget-object v9, v0, Lkotlin/io/encoding/a;->f:[B

    array-length v11, v9

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    .line 133
    :goto_1
    iget-boolean v13, v0, Lkotlin/io/encoding/a;->d:Z

    if-nez v13, :cond_c

    if-ge v12, v11, :cond_c

    .line 228
    iget-object v13, v0, Lkotlin/io/encoding/a;->b:Lkotlin/io/encoding/Base64;

    invoke-virtual {v13}, Lkotlin/io/encoding/Base64;->isMimeScheme$kotlin_stdlib()Z

    move-result v14

    iget-object v15, v0, Lkotlin/io/encoding/a;->a:Ljava/io/InputStream;

    if-nez v14, :cond_4

    .line 229
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v14

    goto :goto_2

    .line 234
    :cond_4
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v14

    if-eq v14, v6, :cond_5

    .line 235
    invoke-static {v14}, Lkotlin/io/encoding/Base64Kt;->isInMimeAlphabet(I)Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_5
    :goto_2
    if-eq v14, v6, :cond_b

    const/16 v5, 0x3d

    if-eq v14, v5, :cond_6

    int-to-byte v5, v14

    .line 142
    aput-byte v5, v9, v12

    add-int/lit8 v12, v12, 0x1

    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 212
    :cond_6
    aput-byte v5, v9, v12

    and-int/lit8 v5, v12, 0x3

    if-ne v5, v7, :cond_a

    .line 228
    invoke-virtual {v13}, Lkotlin/io/encoding/Base64;->isMimeScheme$kotlin_stdlib()Z

    move-result v5

    if-nez v5, :cond_7

    .line 229
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_4

    .line 234
    :cond_7
    invoke-virtual {v15}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v5, v6, :cond_8

    .line 235
    invoke-static {v5}, Lkotlin/io/encoding/Base64Kt;->isInMimeAlphabet(I)Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_8
    :goto_4
    if-ltz v5, :cond_9

    add-int/lit8 v13, v12, 0x1

    int-to-byte v5, v5

    .line 218
    aput-byte v5, v9, v13

    :cond_9
    add-int/lit8 v12, v12, 0x2

    :goto_5
    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 139
    :goto_6
    iput-boolean v5, v0, Lkotlin/io/encoding/a;->d:Z

    goto :goto_3

    :cond_b
    const/4 v5, 0x1

    .line 136
    iput-boolean v5, v0, Lkotlin/io/encoding/a;->d:Z

    goto :goto_3

    :cond_c
    if-nez v13, :cond_e

    if-ne v12, v11, :cond_d

    goto :goto_7

    .line 148
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Check failed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    sub-int/2addr v3, v12

    .line 168
    iget v15, v0, Lkotlin/io/encoding/a;->i:I

    iget-object v14, v0, Lkotlin/io/encoding/a;->g:[B

    const/16 v16, 0x0

    move/from16 v17, v12

    iget-object v12, v0, Lkotlin/io/encoding/a;->b:Lkotlin/io/encoding/Base64;

    iget-object v13, v0, Lkotlin/io/encoding/a;->f:[B

    invoke-virtual/range {v12 .. v17}, Lkotlin/io/encoding/Base64;->decodeIntoByteArray([B[BIII)I

    move-result v5

    add-int/2addr v15, v5

    iput v15, v0, Lkotlin/io/encoding/a;->i:I

    .line 88
    iget v5, v0, Lkotlin/io/encoding/a;->h:I

    sub-int/2addr v15, v5

    sub-int v5, v4, v8

    .line 176
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 186
    iget v11, v0, Lkotlin/io/encoding/a;->h:I

    add-int v12, v11, v5

    .line 183
    invoke-static {v10, v1, v8, v11, v12}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 189
    iget v11, v0, Lkotlin/io/encoding/a;->h:I

    add-int/2addr v11, v5

    iput v11, v0, Lkotlin/io/encoding/a;->h:I

    .line 194
    iget v12, v0, Lkotlin/io/encoding/a;->i:I

    if-ne v11, v12, :cond_f

    const/4 v11, 0x0

    .line 195
    iput v11, v0, Lkotlin/io/encoding/a;->h:I

    .line 196
    iput v11, v0, Lkotlin/io/encoding/a;->i:I

    goto :goto_8

    :cond_f
    const/4 v11, 0x0

    .line 202
    :goto_8
    array-length v12, v10

    iget v13, v0, Lkotlin/io/encoding/a;->i:I

    sub-int/2addr v12, v13

    .line 203
    array-length v9, v9

    div-int/lit8 v9, v9, 0x4

    mul-int/lit8 v9, v9, 0x3

    if-le v9, v12, :cond_10

    .line 205
    iget v9, v0, Lkotlin/io/encoding/a;->h:I

    invoke-static {v10, v10, v11, v9, v13}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 206
    iget v9, v0, Lkotlin/io/encoding/a;->i:I

    iget v12, v0, Lkotlin/io/encoding/a;->h:I

    sub-int/2addr v9, v12

    iput v9, v0, Lkotlin/io/encoding/a;->i:I

    .line 207
    iput v11, v0, Lkotlin/io/encoding/a;->h:I

    :cond_10
    add-int/2addr v8, v5

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_11
    if-ne v8, v2, :cond_12

    if-eqz v9, :cond_12

    :goto_9
    return v6

    :cond_12
    sub-int/2addr v8, v2

    return v8

    .line 109
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "The input stream is closed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_14
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    const-string v5, "offset: "

    const-string v6, ", length: "

    const-string v7, ", buffer size: "

    .line 0
    invoke-static {v2, v3, v5, v6, v7}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 106
    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
