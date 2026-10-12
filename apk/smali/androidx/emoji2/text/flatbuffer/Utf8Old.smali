.class public Landroidx/emoji2/text/flatbuffer/Utf8Old;
.super Landroidx/emoji2/text/flatbuffer/Utf8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Old$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroidx/emoji2/text/flatbuffer/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {v0}, Landroidx/core/graphics/b;->q(Landroidx/emoji2/text/flatbuffer/c;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;

    iget-object v0, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->b:Ljava/nio/charset/CharsetDecoder;

    .line 88
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p2, p3

    .line 91
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 96
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Bad encoding"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 76
    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;

    .line 77
    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->c:Ljava/lang/CharSequence;

    if-eq v1, p1, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/Utf8Old;->encodedLength(Ljava/lang/CharSequence;)I

    .line 82
    :cond_0
    iget-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .locals 4

    .line 53
    sget-object v0, Landroidx/emoji2/text/flatbuffer/Utf8Old;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->a:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 55
    iget-object v2, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_1

    :cond_0
    const/16 v2, 0x80

    .line 56
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    .line 58
    :cond_1
    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 59
    iput-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->c:Ljava/lang/CharSequence;

    .line 60
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/nio/CharBuffer;

    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 62
    :goto_0
    iget-object v1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    iget-object v3, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->a:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3, p1, v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad character encoding"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_3
    :goto_1
    iget-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 71
    iget-object p1, v0, Landroidx/emoji2/text/flatbuffer/Utf8Old$a;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    return p1
.end method
