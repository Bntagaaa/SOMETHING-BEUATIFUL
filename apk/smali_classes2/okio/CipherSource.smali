.class public final Lokio/CipherSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u000c\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/CipherSource;",
        "Lokio/Source;",
        "Lokio/BufferedSource;",
        "source",
        "Ljavax/crypto/Cipher;",
        "cipher",
        "<init>",
        "(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "close",
        "()V",
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
        "SMAP\nCipherSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CipherSource.kt\nokio/CipherSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lokio/BufferedSource;

.field public final b:Ljavax/crypto/Cipher;

.field public final c:I

.field public final d:Lokio/Buffer;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lokio/BufferedSource;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1    # Lokio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljavax/crypto/Cipher;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cipher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lokio/CipherSource;->a:Lokio/BufferedSource;

    .line 23
    iput-object p2, p0, Lokio/CipherSource;->b:Ljavax/crypto/Cipher;

    .line 25
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lokio/CipherSource;->c:I

    .line 26
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokio/CipherSource;->d:Lokio/Buffer;

    if-lez p1, :cond_0

    return-void

    .line 32
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lokio/CipherSource;->f:Z

    .line 117
    iget-object v0, p0, Lokio/CipherSource;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->close()V

    return-void
.end method

.method public final getCipher()Ljavax/crypto/Cipher;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 23
    iget-object v0, p0, Lokio/CipherSource;->b:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 19
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_7

    .line 38
    iget-boolean v7, v0, Lokio/CipherSource;->f:Z

    if-nez v7, :cond_6

    if-nez v6, :cond_0

    return-wide v4

    .line 47
    :cond_0
    :goto_0
    iget-object v6, v0, Lokio/CipherSource;->d:Lokio/Buffer;

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-nez v9, :cond_5

    iget-boolean v7, v0, Lokio/CipherSource;->e:Z

    if-nez v7, :cond_5

    .line 48
    iget-object v7, v0, Lokio/CipherSource;->a:Lokio/BufferedSource;

    invoke-interface {v7}, Lokio/BufferedSource;->exhausted()Z

    move-result v8

    iget-object v9, v0, Lokio/CipherSource;->b:Ljavax/crypto/Cipher;

    const/4 v10, 0x1

    if-eqz v8, :cond_2

    .line 49
    iput-boolean v10, v0, Lokio/CipherSource;->e:Z

    const/4 v4, 0x0

    .line 94
    invoke-virtual {v9, v4}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 98
    :cond_1
    invoke-virtual {v6, v4}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v4

    .line 100
    iget-object v5, v4, Lokio/Segment;->data:[B

    iget v7, v4, Lokio/Segment;->pos:I

    invoke-virtual {v9, v5, v7}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v5

    .line 102
    iget v7, v4, Lokio/Segment;->limit:I

    add-int/2addr v7, v5

    iput v7, v4, Lokio/Segment;->limit:I

    .line 103
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v7

    int-to-long v9, v5

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lokio/Buffer;->setSize$okio(J)V

    .line 106
    iget v5, v4, Lokio/Segment;->pos:I

    iget v7, v4, Lokio/Segment;->limit:I

    if-ne v5, v7, :cond_5

    .line 107
    invoke-virtual {v4}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v5

    iput-object v5, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 108
    invoke-static {v4}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_2

    .line 59
    :cond_2
    invoke-interface {v7}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v8

    iget-object v8, v8, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    iget v11, v8, Lokio/Segment;->limit:I

    iget v12, v8, Lokio/Segment;->pos:I

    sub-int/2addr v11, v12

    .line 63
    invoke-virtual {v9, v11}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v12

    :goto_1
    const/16 v13, 0x2000

    if-le v12, v13, :cond_4

    .line 65
    iget v12, v0, Lokio/CipherSource;->c:I

    if-gt v11, v12, :cond_3

    .line 69
    iput-boolean v10, v0, Lokio/CipherSource;->e:Z

    .line 70
    invoke-interface {v7}, Lokio/BufferedSource;->readByteArray()[B

    move-result-object v7

    invoke-virtual {v9, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const-string v8, "doFinal(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lokio/Buffer;->write([B)Lokio/Buffer;

    goto :goto_0

    :cond_3
    sub-int/2addr v11, v12

    .line 74
    invoke-virtual {v9, v11}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v12

    goto :goto_1

    .line 76
    :cond_4
    invoke-virtual {v6, v12}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object v9

    .line 79
    iget-object v14, v8, Lokio/Segment;->data:[B

    iget v15, v8, Lokio/Segment;->pos:I

    iget-object v8, v9, Lokio/Segment;->data:[B

    iget v10, v9, Lokio/Segment;->pos:I

    iget-object v13, v0, Lokio/CipherSource;->b:Ljavax/crypto/Cipher;

    move-object/from16 v17, v8

    move/from16 v18, v10

    move/from16 v16, v11

    invoke-virtual/range {v13 .. v18}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v8

    int-to-long v10, v11

    .line 81
    invoke-interface {v7, v10, v11}, Lokio/BufferedSource;->skip(J)V

    .line 83
    iget v7, v9, Lokio/Segment;->limit:I

    add-int/2addr v7, v8

    iput v7, v9, Lokio/Segment;->limit:I

    .line 84
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v10

    int-to-long v7, v8

    add-long/2addr v10, v7

    invoke-virtual {v6, v10, v11}, Lokio/Buffer;->setSize$okio(J)V

    .line 87
    iget v7, v9, Lokio/Segment;->pos:I

    iget v8, v9, Lokio/Segment;->limit:I

    if-ne v7, v8, :cond_0

    .line 88
    invoke-virtual {v9}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, v6, Lokio/Buffer;->head:Lokio/Segment;

    .line 89
    invoke-static {v9}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto/16 :goto_0

    .line 43
    :cond_5
    :goto_2
    invoke-virtual {v6, v1, v2, v3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide v1

    return-wide v1

    .line 38
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_7
    const-string v1, "byteCount < 0: "

    .line 0
    invoke-static {v1, v2, v3}, L_COROUTINE/a;->g(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 112
    iget-object v0, p0, Lokio/CipherSource;->a:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
