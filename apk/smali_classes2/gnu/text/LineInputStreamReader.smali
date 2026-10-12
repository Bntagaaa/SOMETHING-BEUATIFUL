.class public Lgnu/text/LineInputStreamReader;
.super Lgnu/text/LineBufferedReader;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:[B

.field public final c:Ljava/nio/ByteBuffer;

.field public d:[C

.field public e:Ljava/nio/CharBuffer;

.field public f:Ljava/nio/charset/Charset;

.field public g:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v1, 0x2000

    .line 23
    new-array v1, v1, [B

    iput-object v1, p0, Lgnu/text/LineInputStreamReader;->b:[B

    .line 26
    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->e:Ljava/nio/CharBuffer;

    .line 64
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    .line 65
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->a:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 76
    :cond_0
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public fill(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->f:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->d:[C

    if-eq v0, v1, :cond_1

    .line 129
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->e:Ljava/nio/CharBuffer;

    .line 130
    iget-object v0, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    iput-object v0, p0, Lgnu/text/LineInputStreamReader;->d:[C

    .line 132
    :cond_1
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->e:Ljava/nio/CharBuffer;

    iget v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 133
    iget-object p1, p0, Lgnu/text/LineInputStreamReader;->e:Ljava/nio/CharBuffer;

    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    :cond_2
    iget-object p1, p0, Lgnu/text/LineInputStreamReader;->g:Ljava/nio/charset/CharsetDecoder;

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->e:Ljava/nio/CharBuffer;

    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->e:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget v3, p0, Lgnu/text/LineBufferedReader;->pos:I

    sub-int/2addr v0, v3

    if-gtz v0, :cond_6

    .line 140
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    if-lez p1, :cond_4

    .line 145
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 82
    :cond_4
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->b:[B

    array-length v3, v1

    sub-int/2addr v3, p1

    iget-object v4, p0, Lgnu/text/LineInputStreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v4, v1, p1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 83
    iget-object v3, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gez v1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    add-int/2addr p1, v2

    .line 84
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-gez v1, :cond_2

    const/4 v2, 0x1

    :cond_6
    :goto_1
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    const/4 p1, -0x1

    return p1

    :cond_7
    return v0
.end method

.method public getByte()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->b:[B

    array-length v2, v1

    iget-object v3, p0, Lgnu/text/LineInputStreamReader;->a:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 83
    iget-object v2, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    .line 84
    :goto_0
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    if-gtz v1, :cond_1

    const/4 v0, -0x1

    return v0

    .line 116
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public markStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    iget v1, p0, Lgnu/text/LineBufferedReader;->limit:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetStart(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lgnu/text/LineInputStreamReader;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 3

    .line 41
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->f:Ljava/nio/charset/Charset;

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/nio/charset/Charset;)V

    return-void

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "encoding "

    const-string v2, " does not match previous "

    .line 0
    invoke-static {v1, p1, v2}, L_COROUTINE/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 45
    iget-object v1, p0, Lgnu/text/LineInputStreamReader;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->f:Ljava/nio/charset/Charset;

    .line 34
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p1

    iput-object p1, p0, Lgnu/text/LineInputStreamReader;->g:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method
