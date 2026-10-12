.class Landroidx/emoji2/text/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/l$a;,
        Landroidx/emoji2/text/l$b;,
        Landroidx/emoji2/text/l$d;,
        Landroidx/emoji2/text/l$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/emoji2/text/l$d;)Landroidx/emoji2/text/l$c;
    .locals 12

    const/4 v0, 0x4

    .line 120
    invoke-interface {p0, v0}, Landroidx/emoji2/text/l$d;->skip(I)V

    .line 122
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readUnsignedShort()I

    move-result v1

    const/16 v2, 0x64

    .line 123
    const-string v3, "Cannot read metadata."

    if-gt v1, v2, :cond_5

    const/4 v2, 0x6

    .line 128
    invoke-interface {p0, v2}, Landroidx/emoji2/text/l$d;->skip(I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, -0x1

    if-ge v4, v1, :cond_1

    .line 132
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readTag()I

    move-result v7

    .line 134
    invoke-interface {p0, v0}, Landroidx/emoji2/text/l$d;->skip(I)V

    .line 135
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readUnsignedInt()J

    move-result-wide v8

    .line 137
    invoke-interface {p0, v0}, Landroidx/emoji2/text/l$d;->skip(I)V

    const v10, 0x6d657461

    if-ne v10, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-wide v8, v5

    :goto_1
    cmp-long v0, v8, v5

    if-eqz v0, :cond_4

    .line 146
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->getPosition()J

    move-result-wide v0

    sub-long v0, v8, v0

    long-to-int v1, v0

    invoke-interface {p0, v1}, Landroidx/emoji2/text/l$d;->skip(I)V

    const/16 v0, 0xc

    .line 148
    invoke-interface {p0, v0}, Landroidx/emoji2/text/l$d;->skip(I)V

    .line 150
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readUnsignedInt()J

    move-result-wide v0

    :goto_2
    int-to-long v4, v2

    cmp-long v6, v4, v0

    if-gez v6, :cond_4

    .line 152
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readTag()I

    move-result v4

    .line 153
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readUnsignedInt()J

    move-result-wide v5

    .line 154
    invoke-interface {p0}, Landroidx/emoji2/text/l$d;->readUnsignedInt()J

    move-result-wide v10

    const v7, 0x456d6a69

    if-eq v7, v4, :cond_3

    const v7, 0x656d6a69

    if-ne v7, v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 156
    :cond_3
    :goto_3
    new-instance p0, Landroidx/emoji2/text/l$c;

    add-long/2addr v5, v8

    invoke-direct {p0, v5, v6, v10, v11}, Landroidx/emoji2/text/l$c;-><init>(JJ)V

    return-object p0

    .line 161
    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 125
    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/io/InputStream;)Landroidx/emoji2/text/flatbuffer/MetadataList;
    .locals 6

    .line 69
    new-instance v0, Landroidx/emoji2/text/l$b;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/l$b;-><init>(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v0}, Landroidx/emoji2/text/l;->a(Landroidx/emoji2/text/l$d;)Landroidx/emoji2/text/l$c;

    move-result-object v1

    .line 72
    invoke-interface {v0}, Landroidx/emoji2/text/l$d;->getPosition()J

    move-result-wide v2

    iget-wide v4, v1, Landroidx/emoji2/text/l$c;->a:J

    sub-long/2addr v4, v2

    long-to-int v2, v4

    invoke-interface {v0, v2}, Landroidx/emoji2/text/l$d;->skip(I)V

    .line 74
    iget-wide v0, v1, Landroidx/emoji2/text/l$c;->b:J

    long-to-int v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result p0

    int-to-long v3, p0

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    .line 80
    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->getRootAsMetadataList(Ljava/nio/ByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object p0

    return-object p0

    .line 77
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Needed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes, got "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
