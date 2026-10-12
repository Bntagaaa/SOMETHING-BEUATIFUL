.class public final Lkotlin/io/LineReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lkotlin/io/LineReader;",
        "",
        "<init>",
        "()V",
        "Ljava/io/InputStream;",
        "inputStream",
        "Ljava/nio/charset/Charset;",
        "charset",
        "",
        "readLine",
        "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nConsole.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Console.kt\nkotlin/io/LineReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,299:1\n1#2:300\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/LineReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static a:Ljava/nio/charset/CharsetDecoder;

.field public static b:Z

.field public static final c:[B

.field public static final d:[C

.field public static final e:Ljava/nio/ByteBuffer;

.field public static final f:Ljava/nio/CharBuffer;

.field public static final g:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/io/LineReader;

    invoke-direct {v0}, Lkotlin/io/LineReader;-><init>()V

    sput-object v0, Lkotlin/io/LineReader;->INSTANCE:Lkotlin/io/LineReader;

    const/16 v0, 0x20

    .line 177
    new-array v1, v0, [B

    sput-object v1, Lkotlin/io/LineReader;->c:[B

    .line 178
    new-array v0, v0, [C

    sput-object v0, Lkotlin/io/LineReader;->d:[C

    .line 179
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "wrap(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lkotlin/io/LineReader;->e:Ljava/nio/ByteBuffer;

    .line 180
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lkotlin/io/LineReader;->f:Ljava/nio/CharBuffer;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lkotlin/io/LineReader;->g:Ljava/lang/StringBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)I
    .locals 8

    .line 241
    :goto_0
    sget-object v0, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    const/4 v1, 0x0

    const-string v2, "decoder"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget-object v3, Lkotlin/io/LineReader;->e:Ljava/nio/ByteBuffer;

    sget-object v4, Lkotlin/io/LineReader;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v3, v4, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    const-string v5, "decode(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    sget-object v6, Lkotlin/io/LineReader;->g:Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 288
    sget-object v5, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 289
    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 244
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 246
    :cond_2
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 247
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 249
    sget-object v0, Lkotlin/io/LineReader;->d:[C

    invoke-virtual {v6, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v4, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0x20

    .line 251
    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 252
    aget-char v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    goto :goto_0
.end method

.method public static b(Ljava/nio/charset/Charset;)V
    .locals 7

    .line 275
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sput-object p0, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    .line 277
    sget-object p0, Lkotlin/io/LineReader;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 278
    sget-object v0, Lkotlin/io/LineReader;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    const/16 v1, 0xa

    .line 279
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 280
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 281
    sget-object v2, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    const/4 v3, 0x0

    const-string v4, "decoder"

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v0, v5}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 282
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    sput-boolean v6, Lkotlin/io/LineReader;->b:Z

    .line 288
    sget-object v0, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    invoke-virtual {v3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 289
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    sget-object p0, Lkotlin/io/LineReader;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized readLine(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    invoke-static {p2}, Lkotlin/io/LineReader;->b(Ljava/nio/charset/Charset;)V

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 195
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x20

    const/16 v5, 0xa

    if-ne v2, v3, :cond_4

    .line 198
    sget-object p1, Lkotlin/io/LineReader;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 199
    monitor-exit p0

    return-object v2

    .line 264
    :cond_2
    :try_start_1
    sget-object p1, Lkotlin/io/LineReader;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 265
    sget-object v0, Lkotlin/io/LineReader;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    .line 266
    invoke-static {v0}, Lkotlin/io/LineReader;->a(Z)I

    move-result v0

    .line 268
    sget-object v1, Lkotlin/io/LineReader;->a:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_3

    const-string v1, "decoder"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 269
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    .line 205
    :cond_4
    sget-object v3, Lkotlin/io/LineReader;->c:[B

    add-int/lit8 v6, v0, 0x1

    int-to-byte v7, v2

    aput-byte v7, v3, v0

    if-eq v2, v5, :cond_6

    if-eq v6, v4, :cond_6

    .line 208
    sget-boolean v0, Lkotlin/io/LineReader;->b:Z

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_1

    .line 210
    :cond_6
    :goto_3
    sget-object v0, Lkotlin/io/LineReader;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 211
    sget-object v2, Lkotlin/io/LineReader;->f:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    invoke-static {p2}, Lkotlin/io/LineReader;->a(Z)I

    move-result v1

    if-lez v1, :cond_b

    .line 214
    sget-object v2, Lkotlin/io/LineReader;->d:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_b

    .line 215
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    :goto_4
    if-lez v0, :cond_8

    .line 223
    sget-object p1, Lkotlin/io/LineReader;->d:[C

    add-int/lit8 v1, v0, -0x1

    aget-char v1, p1, v1

    if-ne v1, v5, :cond_8

    add-int/lit8 v1, v0, -0x1

    if-lez v1, :cond_7

    add-int/lit8 v0, v0, -0x2

    .line 225
    aget-char p1, p1, v0

    const/16 v2, 0xd

    if-ne p1, v2, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    .line 228
    :cond_8
    :goto_5
    sget-object p1, Lkotlin/io/LineReader;->g:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9

    new-instance p1, Ljava/lang/String;

    sget-object v1, Lkotlin/io/LineReader;->d:[C

    invoke-direct {p1, v1, p2, v0}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 230
    :cond_9
    :try_start_2
    sget-object v1, Lkotlin/io/LineReader;->d:[C

    invoke-virtual {p1, v1, p2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-le v1, v4, :cond_a

    .line 295
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 234
    :cond_a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    monitor-exit p0

    return-object v0

    .line 258
    :cond_b
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 259
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v2

    goto/16 :goto_1

    .line 219
    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
