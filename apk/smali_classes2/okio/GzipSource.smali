.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lokio/GzipSource;",
        "Lokio/Source;",
        "source",
        "<init>",
        "(Lokio/Source;)V",
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
        "SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,220:1\n1#2:221\n62#3:222\n62#3:224\n62#3:226\n62#3:227\n62#3:228\n62#3:230\n62#3:232\n202#4:223\n202#4:225\n202#4:229\n202#4:231\n89#5:233\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n105#1:222\n107#1:224\n119#1:226\n120#1:227\n122#1:228\n133#1:230\n144#1:232\n106#1:223\n117#1:225\n130#1:229\n141#1:231\n187#1:233\n*E\n"
    }
.end annotation


# instance fields
.field public a:B

.field public final b:Lokio/RealBufferedSource;

.field public final c:Ljava/util/zip/Inflater;

.field public final d:Lokio/InflaterSource;

.field public final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 2
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokio/GzipSource;->b:Lokio/RealBufferedSource;

    .line 44
    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lokio/GzipSource;->c:Ljava/util/zip/Inflater;

    .line 50
    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/GzipSource;->d:Lokio/InflaterSource;

    .line 53
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lokio/GzipSource;->e:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static a(IILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    if-ne p1, p0, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(this, *args)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final b(JLokio/Buffer;J)V
    .locals 5

    .line 178
    iget-object p3, p3, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    :goto_0
    iget v0, p3, Lokio/Segment;->limit:I

    iget v1, p3, Lokio/Segment;->pos:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 181
    iget-object p3, p3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    .line 186
    iget v2, p3, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int p1, v2

    .line 187
    iget p2, p3, Lokio/Segment;->limit:I

    sub-int/2addr p2, p1

    int-to-long v2, p2

    .line 233
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p2, v2

    .line 188
    iget-object v2, p0, Lokio/GzipSource;->e:Ljava/util/zip/CRC32;

    iget-object v3, p3, Lokio/Segment;->data:[B

    invoke-virtual {v2, v3, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p1, p2

    sub-long/2addr p4, p1

    .line 191
    iget-object p3, p3, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lokio/GzipSource;->d:Lokio/InflaterSource;

    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 21
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

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    const-string v1, "sink"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-ltz v3, :cond_12

    if-nez v3, :cond_0

    return-wide v1

    .line 61
    :cond_0
    iget-byte v1, v0, Lokio/GzipSource;->a:B

    iget-object v9, v0, Lokio/GzipSource;->e:Ljava/util/zip/CRC32;

    const/4 v10, 0x1

    const-wide/16 v11, -0x1

    iget-object v13, v0, Lokio/GzipSource;->b:Lokio/RealBufferedSource;

    if-nez v1, :cond_d

    const-wide/16 v1, 0xa

    .line 104
    invoke-virtual {v13, v1, v2}, Lokio/RealBufferedSource;->require(J)V

    .line 222
    iget-object v1, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x3

    .line 105
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v14

    shr-int/lit8 v1, v14, 0x1

    and-int/2addr v1, v10

    const/4 v15, 0x0

    if-ne v1, v10, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    :goto_0
    if-eqz v16, :cond_2

    .line 224
    iget-object v3, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0xa

    .line 107
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->b(JLokio/Buffer;J)V

    .line 109
    :cond_2
    invoke-virtual {v13}, Lokio/RealBufferedSource;->readShort()S

    move-result v0

    .line 110
    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v2, v0, v1}, Lokio/GzipSource;->a(IILjava/lang/String;)V

    const-wide/16 v0, 0x8

    .line 111
    invoke-virtual {v13, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    shr-int/lit8 v0, v14, 0x2

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_5

    const-wide/16 v0, 0x2

    .line 118
    invoke-virtual {v13, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v16, :cond_3

    .line 226
    iget-object v3, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    .line 119
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->b(JLokio/Buffer;J)V

    .line 227
    :cond_3
    iget-object v0, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    .line 120
    invoke-virtual {v0}, Lokio/Buffer;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v4, v0

    .line 121
    invoke-virtual {v13, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v16, :cond_4

    .line 228
    iget-object v3, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    .line 122
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->b(JLokio/Buffer;J)V

    .line 123
    :cond_4
    invoke-virtual {v13, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    :cond_5
    shr-int/lit8 v0, v14, 0x3

    and-int/2addr v0, v10

    const-wide/16 v17, 0x1

    if-ne v0, v10, :cond_8

    .line 131
    invoke-virtual {v13, v15}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v19

    cmp-long v0, v19, v11

    if-eqz v0, :cond_7

    if-eqz v16, :cond_6

    .line 230
    iget-object v3, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    add-long v4, v19, v17

    move-object/from16 v0, p0

    .line 133
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->b(JLokio/Buffer;J)V

    :cond_6
    add-long v0, v19, v17

    .line 134
    invoke-virtual {v13, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_1

    .line 132
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_8
    :goto_1
    shr-int/lit8 v0, v14, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_b

    .line 142
    invoke-virtual {v13, v15}, Lokio/RealBufferedSource;->indexOf(B)J

    move-result-wide v14

    cmp-long v0, v14, v11

    if-eqz v0, :cond_a

    if-eqz v16, :cond_9

    .line 232
    iget-object v3, v13, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v1, 0x0

    add-long v4, v14, v17

    move-object/from16 v0, p0

    .line 144
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->b(JLokio/Buffer;J)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    :goto_2
    add-long v14, v14, v17

    .line 145
    invoke-virtual {v13, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    .line 143
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_b
    move-object/from16 v0, p0

    :goto_3
    if-eqz v16, :cond_c

    .line 153
    invoke-virtual {v13}, Lokio/RealBufferedSource;->readShortLe()S

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    int-to-short v2, v3

    const-string v3, "FHCRC"

    invoke-static {v1, v2, v3}, Lokio/GzipSource;->a(IILjava/lang/String;)V

    .line 154
    invoke-virtual {v9}, Ljava/util/zip/CRC32;->reset()V

    .line 63
    :cond_c
    iput-byte v10, v0, Lokio/GzipSource;->a:B

    .line 67
    :cond_d
    iget-byte v1, v0, Lokio/GzipSource;->a:B

    const/4 v14, 0x2

    if-ne v1, v10, :cond_f

    .line 68
    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v1

    .line 69
    iget-object v3, v0, Lokio/GzipSource;->d:Lokio/InflaterSource;

    invoke-virtual {v3, v6, v7, v8}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v3, v4, v11

    if-eqz v3, :cond_e

    move-object v3, v6

    .line 71
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->b(JLokio/Buffer;J)V

    return-wide v4

    .line 74
    :cond_e
    iput-byte v14, v0, Lokio/GzipSource;->a:B

    .line 80
    :cond_f
    iget-byte v1, v0, Lokio/GzipSource;->a:B

    if-ne v1, v14, :cond_11

    .line 164
    invoke-virtual {v13}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v1

    invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    const-string v2, "CRC"

    invoke-static {v1, v3, v2}, Lokio/GzipSource;->a(IILjava/lang/String;)V

    .line 165
    invoke-virtual {v13}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v1

    iget-object v2, v0, Lokio/GzipSource;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v3, v2

    const-string v2, "ISIZE"

    invoke-static {v1, v3, v2}, Lokio/GzipSource;->a(IILjava/lang/String;)V

    const/4 v1, 0x3

    .line 82
    iput-byte v1, v0, Lokio/GzipSource;->a:B

    .line 88
    invoke-virtual {v13}, Lokio/RealBufferedSource;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    .line 89
    :cond_10
    new-instance v1, Ljava/io/IOException;

    const-string v2, "gzip finished without exhausting source"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_4
    return-wide v11

    .line 57
    :cond_12
    const-string v1, "byteCount < 0: "

    .line 0
    invoke-static {v1, v7, v8}, L_COROUTINE/a;->g(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 57
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

    .line 168
    iget-object v0, p0, Lokio/GzipSource;->b:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
