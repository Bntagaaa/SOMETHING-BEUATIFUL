.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "commonAsUtf8ToByteArray",
        "",
        "",
        "commonToUtf8String",
        "beginIndex",
        "",
        "endIndex",
        "okio"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\n-Utf8.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n+ 2 Utf8.kt\nokio/Utf8\n+ 3 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,60:1\n260#2,16:61\n277#2:78\n397#2,9:79\n127#2:88\n406#2,20:90\n279#2,3:110\n440#2,4:113\n127#2:117\n446#2,10:118\n127#2:128\n456#2,5:129\n127#2:134\n461#2,24:135\n283#2,3:159\n500#2,3:162\n286#2,12:165\n503#2:177\n127#2:178\n506#2,2:179\n127#2:181\n510#2,10:182\n127#2:192\n520#2,5:193\n127#2:198\n525#2,5:199\n127#2:204\n530#2,28:205\n302#2,6:233\n138#2,67:239\n68#3:77\n74#3:89\n*S KotlinDebug\n*F\n+ 1 -Utf8.kt\nokio/internal/_Utf8Kt\n*L\n34#1:61,16\n34#1:78\n34#1:79,9\n34#1:88\n34#1:90,20\n34#1:110,3\n34#1:113,4\n34#1:117\n34#1:118,10\n34#1:128\n34#1:129,5\n34#1:134\n34#1:135,24\n34#1:159,3\n34#1:162,3\n34#1:165,12\n34#1:177\n34#1:178\n34#1:179,2\n34#1:181\n34#1:182,10\n34#1:192\n34#1:193,5\n34#1:198\n34#1:199,5\n34#1:204\n34#1:205,28\n34#1:233,6\n50#1:239,67\n34#1:77\n34#1:89\n*E\n"
    }
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 12
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "copyOf(this, newSize)"

    if-ge v2, v1, :cond_7

    .line 47
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    .line 48
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-ltz v6, :cond_6

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v4, v2

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_5

    .line 241
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 244
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_1

    int-to-byte v6, v6

    add-int/lit8 v7, v4, 0x1

    .line 51
    aput-byte v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    :goto_2
    move v4, v7

    if-ge v2, v1, :cond_0

    .line 250
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gez v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    .line 251
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v7, v4, 0x1

    .line 51
    aput-byte v2, v0, v4

    move v2, v6

    goto :goto_2

    :cond_1
    const/16 v7, 0x800

    .line 255
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gez v7, :cond_2

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    add-int/lit8 v8, v4, 0x1

    .line 51
    aput-byte v7, v0, v4

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x2

    aput-byte v6, v0, v8

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const v7, 0xd800

    const/16 v8, 0x3f

    if-gt v7, v6, :cond_4

    const v7, 0xe000

    if-ge v6, v7, :cond_4

    const v9, 0xdbff

    .line 278
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v9

    if-gtz v9, :cond_3

    add-int/lit8 v9, v2, 0x1

    if-le v1, v9, :cond_3

    .line 280
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const v11, 0xdc00

    if-gt v11, v10, :cond_3

    if-ge v10, v7, :cond_3

    shl-int/lit8 v6, v6, 0xa

    .line 289
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v7, v6

    const v6, -0x35fdc00

    add-int/2addr v7, v6

    shr-int/lit8 v6, v7, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    add-int/lit8 v9, v4, 0x1

    .line 51
    aput-byte v6, v0, v4

    shr-int/lit8 v6, v7, 0xc

    and-int/2addr v6, v8

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v10, v4, 0x2

    aput-byte v6, v0, v9

    shr-int/lit8 v6, v7, 0x6

    and-int/2addr v6, v8

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v9, v4, 0x3

    aput-byte v6, v0, v10

    and-int/lit8 v6, v7, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x4

    aput-byte v6, v0, v9

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v6, v4, 0x1

    aput-byte v8, v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto/16 :goto_1

    :cond_4
    shr-int/lit8 v7, v6, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    add-int/lit8 v9, v4, 0x1

    aput-byte v7, v0, v4

    shr-int/lit8 v7, v6, 0x6

    and-int/2addr v7, v8

    or-int/2addr v7, v5

    int-to-byte v7, v7

    add-int/lit8 v8, v4, 0x2

    aput-byte v7, v0, v9

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v5

    int-to-byte v6, v6

    add-int/lit8 v4, v4, 0x3

    aput-byte v6, v0, v8

    goto :goto_3

    .line 53
    :cond_5
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_6
    int-to-byte v3, v4

    .line 55
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 58
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .locals 18
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "<this>"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_19

    .line 28
    array-length v7, v0

    if-gt v2, v7, :cond_19

    if-gt v1, v2, :cond_19

    sub-int v7, v2, v1

    .line 31
    new-array v7, v7, [C

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_18

    .line 63
    aget-byte v10, v0, v1

    if-ltz v10, :cond_1

    int-to-char v10, v10

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    add-int/2addr v1, v6

    :goto_1
    move v9, v11

    if-ge v1, v2, :cond_0

    .line 72
    aget-byte v10, v0, v1

    if-ltz v10, :cond_0

    add-int/2addr v1, v6

    int-to-char v10, v10

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    goto :goto_1

    :cond_1
    shr-int/lit8 v11, v10, 0x5

    const/4 v12, -0x2

    const/16 v13, 0x80

    const v14, 0xfffd

    if-ne v11, v12, :cond_5

    add-int/lit8 v11, v1, 0x1

    if-gt v2, v11, :cond_2

    int-to-char v10, v14

    add-int/lit8 v11, v9, 0x1

    aput-char v10, v7, v9

    .line 78
    :goto_2
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v11

    const/4 v10, 0x1

    goto :goto_5

    .line 86
    :cond_2
    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v13, :cond_4

    xor-int/lit16 v11, v11, 0xf80

    shl-int/lit8 v10, v10, 0x6

    xor-int/2addr v10, v11

    if-ge v10, v13, :cond_3

    int-to-char v10, v14

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    .line 78
    :goto_3
    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_4

    :cond_3
    int-to-char v10, v10

    add-int/lit8 v11, v9, 0x1

    .line 35
    aput-char v10, v7, v9

    goto :goto_3

    :goto_4
    move v9, v11

    const/4 v10, 0x2

    goto :goto_5

    :cond_4
    int-to-char v10, v14

    add-int/lit8 v11, v9, 0x1

    aput-char v10, v7, v9

    goto :goto_2

    :goto_5
    add-int/2addr v1, v10

    goto :goto_0

    :cond_5
    shr-int/lit8 v11, v10, 0x4

    const v15, 0xe000

    const v3, 0xd800

    if-ne v11, v12, :cond_c

    add-int/lit8 v11, v1, 0x2

    if-gt v2, v11, :cond_7

    int-to-char v3, v14

    add-int/lit8 v10, v9, 0x1

    aput-char v3, v7, v9

    .line 112
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_6

    .line 116
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v13, :cond_6

    move v9, v10

    const/4 v3, 0x2

    :goto_6
    const/16 v16, 0x3

    goto :goto_9

    :cond_6
    move v9, v10

    const/4 v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v12, v1, 0x1

    .line 126
    aget-byte v12, v0, v12

    const/16 v16, 0x3

    and-int/lit16 v4, v12, 0xc0

    if-ne v4, v13, :cond_b

    .line 132
    aget-byte v4, v0, v11

    and-int/lit16 v11, v4, 0xc0

    if-ne v11, v13, :cond_a

    const v11, -0x1e080

    xor-int/2addr v4, v11

    shl-int/lit8 v11, v12, 0x6

    xor-int/2addr v4, v11

    shl-int/lit8 v10, v10, 0xc

    xor-int/2addr v4, v10

    const/16 v10, 0x800

    if-ge v4, v10, :cond_8

    int-to-char v3, v14

    add-int/lit8 v4, v9, 0x1

    .line 35
    aput-char v3, v7, v9

    .line 112
    :goto_7
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_8

    :cond_8
    if-gt v3, v4, :cond_9

    if-ge v4, v15, :cond_9

    int-to-char v3, v14

    add-int/lit8 v4, v9, 0x1

    .line 35
    aput-char v3, v7, v9

    goto :goto_7

    :cond_9
    int-to-char v3, v4

    add-int/lit8 v4, v9, 0x1

    aput-char v3, v7, v9

    goto :goto_7

    :goto_8
    move v9, v4

    const/4 v3, 0x3

    goto :goto_9

    :cond_a
    int-to-char v3, v14

    add-int/lit8 v4, v9, 0x1

    aput-char v3, v7, v9

    .line 112
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v4

    const/4 v3, 0x2

    goto :goto_9

    :cond_b
    int-to-char v3, v14

    add-int/lit8 v4, v9, 0x1

    .line 35
    aput-char v3, v7, v9

    .line 112
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v4

    const/4 v3, 0x1

    :goto_9
    add-int/2addr v1, v3

    const/4 v3, 0x4

    goto/16 :goto_0

    :cond_c
    const/16 v16, 0x3

    shr-int/lit8 v4, v10, 0x3

    if-ne v4, v12, :cond_17

    add-int/lit8 v4, v1, 0x3

    if-gt v2, v4, :cond_f

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 176
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v4, v1, 0x1

    if-le v2, v4, :cond_e

    .line 177
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v13, :cond_e

    add-int/lit8 v4, v1, 0x2

    if-le v2, v4, :cond_d

    .line 180
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v13, :cond_d

    move v9, v3

    const/4 v5, 0x3

    :goto_a
    const/16 v17, 0x2

    goto/16 :goto_d

    :cond_d
    move v9, v3

    goto :goto_a

    :cond_e
    move v9, v3

    const/4 v5, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v11, v1, 0x1

    .line 190
    aget-byte v11, v0, v11

    and-int/lit16 v12, v11, 0xc0

    if-ne v12, v13, :cond_16

    add-int/lit8 v12, v1, 0x2

    .line 196
    aget-byte v12, v0, v12

    const/16 v17, 0x2

    and-int/lit16 v5, v12, 0xc0

    if-ne v5, v13, :cond_15

    .line 202
    aget-byte v4, v0, v4

    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v13, :cond_14

    const v5, 0x381f80

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v12, 0x6

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v11, 0xc

    xor-int/2addr v4, v5

    shl-int/lit8 v5, v10, 0x12

    xor-int/2addr v4, v5

    const v5, 0x10ffff

    if-le v4, v5, :cond_10

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 176
    :goto_b
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_c

    :cond_10
    if-gt v3, v4, :cond_11

    if-ge v4, v15, :cond_11

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    goto :goto_b

    :cond_11
    const/high16 v3, 0x10000

    if-ge v4, v3, :cond_12

    add-int/lit8 v3, v9, 0x1

    aput-char v14, v7, v9

    goto :goto_b

    :cond_12
    if-eq v4, v14, :cond_13

    ushr-int/lit8 v3, v4, 0xa

    const v5, 0xd7c0

    add-int/2addr v3, v5

    int-to-char v3, v3

    add-int/lit8 v5, v9, 0x1

    aput-char v3, v7, v9

    and-int/lit16 v3, v4, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v3, v3

    add-int/lit8 v9, v9, 0x2

    aput-char v3, v7, v5

    move v3, v9

    goto :goto_b

    :cond_13
    add-int/lit8 v3, v9, 0x1

    aput-char v14, v7, v9

    goto :goto_b

    :goto_c
    move v9, v3

    const/4 v5, 0x4

    goto :goto_d

    :cond_14
    add-int/lit8 v3, v9, 0x1

    aput-char v14, v7, v9

    .line 176
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v3

    const/4 v5, 0x3

    goto :goto_d

    :cond_15
    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 176
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v3

    const/4 v5, 0x2

    goto :goto_d

    :cond_16
    const/16 v17, 0x2

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    .line 176
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move v9, v3

    const/4 v5, 0x1

    :goto_d
    add-int/2addr v1, v5

    :goto_e
    const/4 v3, 0x4

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_17
    const/16 v17, 0x2

    add-int/lit8 v3, v9, 0x1

    .line 35
    aput-char v14, v7, v9

    add-int/2addr v1, v6

    move v9, v3

    goto :goto_e

    .line 38
    :cond_18
    invoke-static {v7, v8, v9}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_19
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " beginIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    array-length p2, p0

    :cond_1
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
