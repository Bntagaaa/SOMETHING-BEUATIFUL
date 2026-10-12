.class final Lkotlin/io/encoding/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0008\u0008\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\'\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/io/encoding/b;",
        "Ljava/io/OutputStream;",
        "output",
        "Lkotlin/io/encoding/Base64;",
        "base64",
        "<init>",
        "(Ljava/io/OutputStream;Lkotlin/io/encoding/Base64;)V",
        "",
        "b",
        "",
        "write",
        "(I)V",
        "",
        "source",
        "offset",
        "length",
        "([BII)V",
        "flush",
        "()V",
        "close",
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
.field public final a:Ljava/io/OutputStream;

.field public final b:Lkotlin/io/encoding/Base64;

.field public c:Z

.field public d:I

.field public final e:[B

.field public final f:[B

.field public g:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lkotlin/io/encoding/Base64;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/io/encoding/Base64;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "base64"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 243
    iput-object p1, p0, Lkotlin/io/encoding/b;->a:Ljava/io/OutputStream;

    .line 244
    iput-object p2, p0, Lkotlin/io/encoding/b;->b:Lkotlin/io/encoding/Base64;

    .line 248
    invoke-virtual {p2}, Lkotlin/io/encoding/Base64;->isMimeScheme$kotlin_stdlib()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x4c

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lkotlin/io/encoding/b;->d:I

    const/16 p1, 0x400

    .line 250
    new-array p1, p1, [B

    iput-object p1, p0, Lkotlin/io/encoding/b;->e:[B

    const/4 p1, 0x3

    .line 252
    new-array p1, p1, [B

    iput-object p1, p0, Lkotlin/io/encoding/b;->f:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 327
    iget v0, p0, Lkotlin/io/encoding/b;->g:I

    iget-object v1, p0, Lkotlin/io/encoding/b;->f:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lkotlin/io/encoding/b;->b([BII)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 329
    iput v2, p0, Lkotlin/io/encoding/b;->g:I

    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b([BII)I
    .locals 6

    .line 335
    iget-object v2, p0, Lkotlin/io/encoding/b;->e:[B

    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Lkotlin/io/encoding/b;->b:Lkotlin/io/encoding/Base64;

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lkotlin/io/encoding/Base64;->encodeIntoByteArray([B[BIII)I

    move-result p1

    .line 340
    iget p2, p0, Lkotlin/io/encoding/b;->d:I

    iget-object p3, p0, Lkotlin/io/encoding/b;->a:Ljava/io/OutputStream;

    if-nez p2, :cond_1

    .line 341
    sget-object p2, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    invoke-virtual {p2}, Lkotlin/io/encoding/Base64$Default;->getMimeLineSeparatorSymbols$kotlin_stdlib()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    const/16 p2, 0x4c

    .line 342
    iput p2, p0, Lkotlin/io/encoding/b;->d:I

    if-gt p1, p2, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 345
    :cond_1
    :goto_0
    iget-object p2, p0, Lkotlin/io/encoding/b;->e:[B

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 346
    iget p2, p0, Lkotlin/io/encoding/b;->d:I

    sub-int/2addr p2, p1

    iput p2, p0, Lkotlin/io/encoding/b;->d:I

    return p1
.end method

.method public close()V
    .locals 1

    .line 305
    iget-boolean v0, p0, Lkotlin/io/encoding/b;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lkotlin/io/encoding/b;->c:Z

    .line 307
    iget v0, p0, Lkotlin/io/encoding/b;->g:I

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lkotlin/io/encoding/b;->a()V

    .line 310
    :cond_0
    iget-object v0, p0, Lkotlin/io/encoding/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    return-void
.end method

.method public flush()V
    .locals 2

    .line 351
    iget-boolean v0, p0, Lkotlin/io/encoding/b;->c:Z

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lkotlin/io/encoding/b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 351
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output stream is closed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 3

    .line 351
    iget-boolean v0, p0, Lkotlin/io/encoding/b;->c:Z

    if-nez v0, :cond_1

    .line 257
    iget v0, p0, Lkotlin/io/encoding/b;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/io/encoding/b;->g:I

    int-to-byte p1, p1

    iget-object v2, p0, Lkotlin/io/encoding/b;->f:[B

    aput-byte p1, v2, v0

    const/4 p1, 0x3

    if-ne v1, p1, :cond_0

    .line 259
    invoke-virtual {p0}, Lkotlin/io/encoding/b;->a()V

    :cond_0
    return-void

    .line 351
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The output stream is closed."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 6
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Lkotlin/io/encoding/b;->c:Z

    if-nez v0, :cond_9

    if-ltz p2, :cond_8

    if-ltz p3, :cond_8

    add-int v0, p2, p3

    .line 265
    array-length v1, p1

    if-gt v0, v1, :cond_8

    if-nez p3, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iget p3, p0, Lkotlin/io/encoding/b;->g:I

    const/4 v1, 0x3

    const-string v2, "Check failed."

    if-ge p3, v1, :cond_7

    .line 277
    iget-object v3, p0, Lkotlin/io/encoding/b;->f:[B

    if-eqz p3, :cond_3

    rsub-int/lit8 p3, p3, 0x3

    sub-int v4, v0, p2

    .line 317
    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 318
    iget v4, p0, Lkotlin/io/encoding/b;->g:I

    add-int v5, p2, p3

    invoke-static {p1, v3, v4, p2, v5}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 319
    iget p2, p0, Lkotlin/io/encoding/b;->g:I

    add-int/2addr p2, p3

    iput p2, p0, Lkotlin/io/encoding/b;->g:I

    if-ne p2, v1, :cond_1

    .line 321
    invoke-virtual {p0}, Lkotlin/io/encoding/b;->a()V

    .line 279
    :cond_1
    iget p2, p0, Lkotlin/io/encoding/b;->g:I

    if-eqz p2, :cond_2

    :goto_0
    return-void

    :cond_2
    move p2, v5

    :cond_3
    :goto_1
    add-int/lit8 p3, p2, 0x3

    if-gt p3, v0, :cond_6

    .line 285
    iget-object p3, p0, Lkotlin/io/encoding/b;->b:Lkotlin/io/encoding/Base64;

    invoke-virtual {p3}, Lkotlin/io/encoding/Base64;->isMimeScheme$kotlin_stdlib()Z

    move-result p3

    if-eqz p3, :cond_4

    iget p3, p0, Lkotlin/io/encoding/b;->d:I

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lkotlin/io/encoding/b;->e:[B

    array-length p3, p3

    :goto_2
    div-int/lit8 p3, p3, 0x4

    sub-int v4, v0, p2

    .line 286
    div-int/2addr v4, v1

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result p3

    mul-int/lit8 v4, p3, 0x3

    add-int/2addr v4, p2

    .line 289
    invoke-virtual {p0, p1, p2, v4}, Lkotlin/io/encoding/b;->b([BII)I

    move-result p2

    mul-int/lit8 p3, p3, 0x4

    if-ne p2, p3, :cond_5

    move p2, v4

    goto :goto_1

    .line 290
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p3, 0x0

    .line 295
    invoke-static {p1, v3, p3, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    sub-int/2addr v0, p2

    .line 296
    iput v0, p0, Lkotlin/io/encoding/b;->g:I

    return-void

    .line 272
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset: "

    const-string v2, ", length: "

    const-string v3, ", source size: "

    .line 0
    invoke-static {p2, p3, v1, v2, v3}, L_COROUTINE/a;->n(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 266
    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The output stream is closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
