.class public final Lokio/CipherSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0010R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lokio/CipherSink;",
        "Lokio/Sink;",
        "Lokio/BufferedSink;",
        "sink",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "<init>",
        "(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "write",
        "(Lokio/Buffer;J)V",
        "flush",
        "()V",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "close",
        "b",
        "Ljavax/crypto/Cipher;",
        "getCipher",
        "()Ljavax/crypto/Cipher;",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCipherSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n1#2:149\n86#3:150\n*S KotlinDebug\n*F\n+ 1 CipherSink.kt\nokio/CipherSink\n*L\n47#1:150\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lokio/BufferedSink;

.field public final b:Ljavax/crypto/Cipher;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Lokio/BufferedSink;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1    # Lokio/BufferedSink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/crypto/Cipher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lokio/CipherSink;->a:Lokio/BufferedSink;

    .line 23
    iput-object p2, p0, Lokio/CipherSink;->b:Ljavax/crypto/Cipher;

    .line 25
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lokio/CipherSink;->c:I

    if-lez p1, :cond_0

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Block cipher required "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-boolean v0, p0, Lokio/CipherSink;->d:Z

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lokio/CipherSink;->d:Z

    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lokio/CipherSink;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    .line 111
    iget-object v2, p0, Lokio/CipherSink;->a:Lokio/BufferedSink;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v4, 0x2000

    if-le v0, v4, :cond_2

    .line 118
    :try_start_0
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    const-string v1, "doFinal(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_1

    .line 126
    :cond_2
    invoke-interface {v2}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v4

    .line 129
    invoke-virtual {v4, v0}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v0

    .line 132
    :try_start_1
    iget-object v5, v0, Lokio/Segment;->data:[B

    iget v6, v0, Lokio/Segment;->limit:I

    invoke-virtual {v1, v5, v6}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v1

    .line 134
    iget v5, v0, Lokio/Segment;->limit:I

    add-int/2addr v5, v1

    iput v5, v0, Lokio/Segment;->limit:I

    .line 135
    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Lokio/Buffer;->setSize$okio(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v3, v1

    .line 140
    :goto_0
    iget v1, v0, Lokio/Segment;->pos:I

    iget v5, v0, Lokio/Segment;->limit:I

    if-ne v1, v5, :cond_3

    .line 141
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v4, Lokio/Buffer;->head:Lokio/Segment;

    .line 142
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 101
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v2}, Lokio/Sink;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    if-nez v3, :cond_4

    move-object v3, v0

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    :goto_3
    return-void

    .line 106
    :cond_5
    throw v3
.end method

.method public flush()V
    .locals 1

    .line 89
    iget-object v0, p0, Lokio/CipherSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lokio/CipherSink;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    iget-object v0, p0, Lokio/CipherSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 12
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    .line 36
    iget-boolean p2, p0, Lokio/CipherSink;->d:Z

    if-nez p2, :cond_5

    move-wide p2, v5

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_4

    .line 46
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 150
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 48
    iget-object v1, p0, Lokio/CipherSink;->a:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->getBuffer()Lokio/Buffer;

    move-result-object v3

    .line 51
    iget-object v4, p0, Lokio/CipherSink;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v4, v2}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    move v9, v2

    :goto_1
    const/16 v2, 0x2000

    if-le v5, v2, :cond_1

    .line 53
    iget v2, p0, Lokio/CipherSink;->c:I

    if-gt v9, v2, :cond_0

    .line 57
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v0

    const-string v2, "update(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    long-to-int v9, p2

    goto :goto_2

    :cond_0
    sub-int/2addr v9, v2

    .line 61
    invoke-virtual {v4, v9}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v5

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v3, v5}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v2

    .line 65
    iget-object v7, v0, Lokio/Segment;->data:[B

    iget v8, v0, Lokio/Segment;->pos:I

    iget-object v10, v2, Lokio/Segment;->data:[B

    iget v11, v2, Lokio/Segment;->limit:I

    iget-object v6, p0, Lokio/CipherSink;->b:Ljavax/crypto/Cipher;

    invoke-virtual/range {v6 .. v11}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v4

    .line 67
    iget v5, v2, Lokio/Segment;->limit:I

    add-int/2addr v5, v4

    iput v5, v2, Lokio/Segment;->limit:I

    .line 68
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v5

    int-to-long v7, v4

    add-long/2addr v5, v7

    invoke-virtual {v3, v5, v6}, Lokio/Buffer;->setSize$okio(J)V

    .line 71
    iget v4, v2, Lokio/Segment;->pos:I

    iget v5, v2, Lokio/Segment;->limit:I

    if-ne v4, v5, :cond_2

    .line 72
    invoke-virtual {v2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v4

    iput-object v4, v3, Lokio/Buffer;->head:Lokio/Segment;

    .line 73
    invoke-static {v2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    .line 76
    :cond_2
    invoke-interface {v1}, Lokio/BufferedSink;->emitCompleteSegments()Lokio/BufferedSink;

    .line 79
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    int-to-long v3, v9

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lokio/Buffer;->setSize$okio(J)V

    .line 80
    iget v1, v0, Lokio/Segment;->pos:I

    add-int/2addr v1, v9

    iput v1, v0, Lokio/Segment;->pos:I

    .line 81
    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_3

    .line 82
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 83
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_3
    :goto_2
    int-to-long v0, v9

    sub-long/2addr p2, v0

    goto/16 :goto_0

    :cond_4
    return-void

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
