.class Landroidx/emoji2/text/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/emoji2/text/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/nio/ByteBuffer;

.field public final c:Ljava/io/InputStream;

.field public d:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 241
    iput-wide v0, p0, Landroidx/emoji2/text/l$b;->d:J

    .line 250
    iput-object p1, p0, Landroidx/emoji2/text/l$b;->c:Ljava/io/InputStream;

    const/4 p1, 0x4

    .line 251
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/emoji2/text/l$b;->a:[B

    .line 252
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/l$b;->b:Ljava/nio/ByteBuffer;

    .line 253
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 296
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/emoji2/text/l$b;->c:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 299
    iget-wide v0, p0, Landroidx/emoji2/text/l$b;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/emoji2/text/l$b;->d:J

    return-void

    .line 297
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "read failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPosition()J
    .locals 2

    .line 291
    iget-wide v0, p0, Landroidx/emoji2/text/l$b;->d:J

    return-wide v0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 272
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x4

    .line 273
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/l$b;->a(I)V

    .line 274
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 265
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x4

    .line 266
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/l$b;->a(I)V

    .line 267
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 258
    iget-object v1, p0, Landroidx/emoji2/text/l$b;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x2

    .line 259
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/l$b;->a(I)V

    .line 260
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public skip(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/emoji2/text/l$b;->c:Ljava/io/InputStream;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x1

    if-lt v1, v0, :cond_0

    sub-int/2addr p1, v1

    .line 285
    iget-wide v2, p0, Landroidx/emoji2/text/l$b;->d:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/emoji2/text/l$b;->d:J

    goto :goto_0

    .line 282
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Skip didn\'t move at least 1 byte forward"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
