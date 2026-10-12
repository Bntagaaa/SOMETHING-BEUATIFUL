.class public final Landroidx/emoji2/text/flatbuffer/Utf8Safe;
.super Landroidx/emoji2/text/flatbuffer/Utf8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/emoji2/text/flatbuffer/Utf8;-><init>()V

    return-void
.end method

.method public static decodeUtf8Array([BII)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    or-int v4, p1, p2

    .line 128
    array-length v5, p0

    sub-int/2addr v5, p1

    sub-int/2addr v5, p2

    or-int/2addr v4, v5

    if-ltz v4, :cond_a

    add-int v4, p1, p2

    .line 138
    new-array v9, p2, [C

    const/4 p2, 0x0

    :goto_0
    if-ge p1, v4, :cond_0

    .line 144
    aget-byte v5, p0, p1

    if-ltz v5, :cond_0

    add-int/2addr p1, v3

    add-int/lit8 v6, p2, 0x1

    int-to-char v5, v5

    .line 105
    aput-char v5, v9, p2

    move p2, v6

    goto :goto_0

    :cond_0
    move v10, p2

    :goto_1
    if-ge p1, v4, :cond_9

    add-int/lit8 p2, p1, 0x1

    .line 153
    aget-byte v5, p0, p1

    if-ltz v5, :cond_2

    add-int/lit8 p1, v10, 0x1

    int-to-char v5, v5

    .line 105
    aput-char v5, v9, v10

    :goto_2
    if-ge p2, v4, :cond_1

    .line 159
    aget-byte v5, p0, p2

    if-ltz v5, :cond_1

    add-int/2addr p2, v3

    add-int/lit8 v6, p1, 0x1

    int-to-char v5, v5

    .line 105
    aput-char v5, v9, p1

    move p1, v6

    goto :goto_2

    :cond_1
    move v10, p1

    move p1, p2

    goto :goto_1

    :cond_2
    const/16 v6, -0x20

    if-ge v5, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 166
    :goto_3
    const-string v7, "Invalid UTF-8"

    if-eqz v6, :cond_5

    if-ge p2, v4, :cond_4

    add-int/2addr p1, v2

    .line 170
    aget-byte p2, p0, p2

    add-int/lit8 v6, v10, 0x1

    invoke-static {v5, p2, v9, v10}, Landroidx/emoji2/text/flatbuffer/Utf8$a;->c(BB[CI)V

    move v10, v6

    goto :goto_1

    .line 168
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v6, -0x10

    if-ge v5, v6, :cond_7

    add-int/lit8 v6, v4, -0x1

    if-ge p2, v6, :cond_6

    add-int/lit8 v6, p1, 0x2

    .line 175
    aget-byte p2, p0, p2

    add-int/2addr p1, v1

    aget-byte v6, p0, v6

    add-int/lit8 v7, v10, 0x1

    invoke-static {v5, p2, v6, v9, v10}, Landroidx/emoji2/text/flatbuffer/Utf8$a;->b(BBB[CI)V

    move v10, v7

    goto :goto_1

    .line 173
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    add-int/lit8 v6, v4, -0x2

    if-ge p2, v6, :cond_8

    add-int/lit8 v6, p1, 0x2

    .line 185
    aget-byte p2, p0, p2

    add-int/lit8 v7, p1, 0x3

    aget-byte v6, p0, v6

    add-int/lit8 p1, p1, 0x4

    aget-byte v8, p0, v7

    move v7, v6

    move v6, p2

    invoke-static/range {v5 .. v10}, Landroidx/emoji2/text/flatbuffer/Utf8$a;->a(BBBB[CI)V

    add-int/2addr v10, v2

    goto :goto_1

    .line 183
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9, v0, v10}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 129
    :cond_a
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length p0, p0

    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    const-string p0, "buffer length=%d, index=%d, size=%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    or-int v4, p1, p2

    .line 203
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result v5

    sub-int/2addr v5, p1

    sub-int/2addr v5, p2

    or-int/2addr v4, v5

    if-ltz v4, :cond_a

    add-int v4, p1, p2

    .line 213
    new-array v9, p2, [C

    const/4 p2, 0x0

    :goto_0
    if-ge p1, v4, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ltz v5, :cond_0

    add-int/2addr p1, v3

    add-int/lit8 v6, p2, 0x1

    int-to-char v5, v5

    .line 105
    aput-char v5, v9, p2

    move p2, v6

    goto :goto_0

    :cond_0
    move v10, p2

    :goto_1
    if-ge p1, v4, :cond_9

    add-int/lit8 p2, p1, 0x1

    .line 228
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ltz v5, :cond_2

    add-int/lit8 p1, v10, 0x1

    int-to-char v5, v5

    .line 105
    aput-char v5, v9, v10

    :goto_2
    if-ge p2, v4, :cond_1

    .line 234
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ltz v5, :cond_1

    add-int/2addr p2, v3

    add-int/lit8 v6, p1, 0x1

    int-to-char v5, v5

    .line 105
    aput-char v5, v9, p1

    move p1, v6

    goto :goto_2

    :cond_1
    move v10, p1

    move p1, p2

    goto :goto_1

    :cond_2
    const/16 v6, -0x20

    if-ge v5, v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 241
    :goto_3
    const-string v7, "Invalid UTF-8"

    if-eqz v6, :cond_5

    if-ge p2, v4, :cond_4

    add-int/2addr p1, v2

    .line 246
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    add-int/lit8 v6, v10, 0x1

    .line 245
    invoke-static {v5, p2, v9, v10}, Landroidx/emoji2/text/flatbuffer/Utf8$a;->c(BB[CI)V

    move v10, v6

    goto :goto_1

    .line 243
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 v6, -0x10

    if-ge v5, v6, :cond_7

    add-int/lit8 v6, v4, -0x1

    if-ge p2, v6, :cond_6

    add-int/lit8 v6, p1, 0x2

    .line 253
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    add-int/2addr p1, v1

    .line 254
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 v7, v10, 0x1

    .line 251
    invoke-static {v5, p2, v6, v9, v10}, Landroidx/emoji2/text/flatbuffer/Utf8$a;->b(BBB[CI)V

    move v10, v7

    goto :goto_1

    .line 249
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    add-int/lit8 v6, v4, -0x2

    if-ge p2, v6, :cond_8

    add-int/lit8 v6, p1, 0x2

    .line 263
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p2

    add-int/lit8 v7, p1, 0x3

    .line 264
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int/lit8 p1, p1, 0x4

    .line 265
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    move v7, v6

    move v6, p2

    .line 261
    invoke-static/range {v5 .. v10}, Landroidx/emoji2/text/flatbuffer/Utf8$a;->a(BBBB[CI)V

    add-int/2addr v10, v2

    goto :goto_1

    .line 259
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9, v0, v10}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 204
    :cond_a
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 205
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 205
    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {v0, p1, p3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Buffer(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodeUtf8(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 433
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    const-string v3, " at index "

    const-string v4, "Failed writing "

    const v5, 0xd800

    const v6, 0xdfff

    const/16 v7, 0x800

    const/16 v8, 0x80

    const/4 v9, 0x0

    if-eqz v2, :cond_c

    .line 434
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 435
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v11

    add-int/2addr v11, v2

    .line 436
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v12

    .line 370
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v12, v11

    :goto_0
    if-ge v9, v13, :cond_0

    add-int v14, v9, v11

    if-ge v14, v12, :cond_0

    .line 376
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v8, :cond_0

    int-to-byte v15, v15

    .line 377
    aput-byte v15, v10, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    if-ne v9, v13, :cond_1

    add-int/2addr v11, v13

    goto/16 :goto_3

    :cond_1
    add-int/2addr v11, v9

    :goto_1
    if-ge v9, v13, :cond_b

    .line 384
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ge v14, v8, :cond_2

    if-ge v11, v12, :cond_2

    add-int/lit8 v15, v11, 0x1

    int-to-byte v14, v14

    .line 386
    aput-byte v14, v10, v11

    move v11, v15

    goto/16 :goto_2

    :cond_2
    if-ge v14, v7, :cond_3

    add-int/lit8 v15, v12, -0x2

    if-gt v11, v15, :cond_3

    add-int/lit8 v15, v11, 0x1

    ushr-int/lit8 v7, v14, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    .line 388
    aput-byte v7, v10, v11

    add-int/lit8 v11, v11, 0x2

    and-int/lit8 v7, v14, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 389
    aput-byte v7, v10, v15

    goto :goto_2

    :cond_3
    if-lt v14, v5, :cond_4

    if-ge v6, v14, :cond_5

    :cond_4
    add-int/lit8 v7, v12, -0x3

    if-gt v11, v7, :cond_5

    add-int/lit8 v7, v11, 0x1

    ushr-int/lit8 v15, v14, 0xc

    or-int/lit16 v15, v15, 0x1e0

    int-to-byte v15, v15

    .line 392
    aput-byte v15, v10, v11

    add-int/lit8 v15, v11, 0x2

    ushr-int/lit8 v16, v14, 0x6

    and-int/lit8 v6, v16, 0x3f

    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 393
    aput-byte v6, v10, v7

    add-int/lit8 v11, v11, 0x3

    and-int/lit8 v6, v14, 0x3f

    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 394
    aput-byte v6, v10, v15

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v12, -0x4

    if-gt v11, v6, :cond_8

    add-int/lit8 v6, v9, 0x1

    .line 399
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 400
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v14, v7}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 403
    invoke-static {v14, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7

    add-int/lit8 v9, v11, 0x1

    ushr-int/lit8 v14, v7, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    .line 404
    aput-byte v14, v10, v11

    add-int/lit8 v14, v11, 0x2

    ushr-int/lit8 v15, v7, 0xc

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v8

    int-to-byte v15, v15

    .line 405
    aput-byte v15, v10, v9

    add-int/lit8 v9, v11, 0x3

    ushr-int/lit8 v15, v7, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v8

    int-to-byte v15, v15

    .line 406
    aput-byte v15, v10, v14

    add-int/lit8 v11, v11, 0x4

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 407
    aput-byte v7, v10, v9

    move v9, v6

    :goto_2
    add-int/lit8 v9, v9, 0x1

    const v6, 0xdfff

    const/16 v7, 0x800

    goto/16 :goto_1

    :cond_6
    move v9, v6

    .line 401
    :cond_7
    new-instance v0, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v0, v9, v13}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;-><init>(II)V

    throw v0

    :cond_8
    if-gt v5, v14, :cond_a

    const v1, 0xdfff

    if-gt v14, v1, :cond_a

    add-int/lit8 v1, v9, 0x1

    .line 412
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_9

    .line 413
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_a

    .line 414
    :cond_9
    new-instance v0, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;

    invoke-direct {v0, v9, v13}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;-><init>(II)V

    throw v0

    .line 416
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    sub-int/2addr v11, v2

    .line 437
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 298
    :cond_c
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 299
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v6

    :goto_4
    if-ge v9, v2, :cond_d

    .line 308
    :try_start_0
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v8, :cond_d

    add-int v10, v6, v9

    int-to-byte v7, v7

    .line 309
    invoke-virtual {v1, v10, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_d
    if-ne v9, v2, :cond_e

    add-int v2, v6, v9

    .line 313
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_e
    add-int/2addr v6, v9

    :goto_5
    if-ge v9, v2, :cond_15

    .line 319
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ge v7, v8, :cond_f

    int-to-byte v7, v7

    .line 322
    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    const/16 v10, 0x800

    :goto_6
    const v11, 0xdfff

    goto/16 :goto_9

    :cond_f
    const/16 v10, 0x800

    if-ge v7, v10, :cond_10

    add-int/lit8 v11, v6, 0x1

    ushr-int/lit8 v12, v7, 0x6

    or-int/lit16 v12, v12, 0xc0

    int-to-byte v12, v12

    .line 327
    :try_start_1
    invoke-virtual {v1, v6, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 328
    invoke-virtual {v1, v11, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v11

    goto :goto_6

    :catch_0
    move v6, v11

    goto/16 :goto_a

    :cond_10
    const v11, 0xdfff

    if-lt v7, v5, :cond_14

    if-ge v11, v7, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v12, v9, 0x1

    if-eq v12, v2, :cond_13

    .line 343
    :try_start_2
    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 347
    invoke-static {v7, v9}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v9, v6, 0x1

    ushr-int/lit8 v13, v7, 0x12

    or-int/lit16 v13, v13, 0xf0

    int-to-byte v13, v13

    .line 348
    :try_start_3
    invoke-virtual {v1, v6, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v13, v6, 0x2

    ushr-int/lit8 v14, v7, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/2addr v14, v8

    int-to-byte v14, v14

    .line 349
    :try_start_4
    invoke-virtual {v1, v9, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    add-int/lit8 v6, v6, 0x3

    ushr-int/lit8 v9, v7, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, v8

    int-to-byte v9, v9

    .line 350
    :try_start_5
    invoke-virtual {v1, v13, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 351
    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    move v9, v12

    goto :goto_9

    :catch_1
    :goto_7
    move v9, v12

    goto :goto_a

    :catch_2
    move v9, v12

    move v6, v13

    goto :goto_a

    :catch_3
    move v6, v9

    goto :goto_7

    :cond_12
    move v9, v12

    .line 344
    :cond_13
    :try_start_6
    new-instance v5, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;

    invoke-direct {v5, v9, v2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;-><init>(II)V

    throw v5
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_14
    :goto_8
    add-int/lit8 v12, v6, 0x1

    ushr-int/lit8 v13, v7, 0xc

    or-int/lit16 v13, v13, 0xe0

    int-to-byte v13, v13

    .line 334
    :try_start_7
    invoke-virtual {v1, v6, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    add-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v13, v7, 0x6

    and-int/lit8 v13, v13, 0x3f

    or-int/2addr v13, v8

    int-to-byte v13, v13

    .line 335
    :try_start_8
    invoke-virtual {v1, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    .line 336
    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_9
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :catch_4
    move v6, v12

    goto :goto_a

    .line 356
    :cond_15
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5

    return-void

    .line 362
    :catch_5
    :goto_a
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 363
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public encodedLength(Ljava/lang/CharSequence;)I
    .locals 8

    .line 75
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 86
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_2
    if-ge v2, v4, :cond_5

    .line 107
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v5, :cond_2

    rsub-int/lit8 v6, v6, 0x7f

    ushr-int/lit8 v6, v6, 0x1f

    add-int/2addr v1, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x2

    const v7, 0xd800

    if-gt v7, v6, :cond_4

    const v7, 0xdfff

    if-gt v6, v7, :cond_4

    .line 115
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    const/high16 v7, 0x10000

    if-lt v6, v7, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    :cond_3
    new-instance p1, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;

    invoke-direct {p1, v2, v4}, Landroidx/emoji2/text/flatbuffer/Utf8Safe$a;-><init>(II)V

    throw p1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v1

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    .line 97
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v1, v3

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
