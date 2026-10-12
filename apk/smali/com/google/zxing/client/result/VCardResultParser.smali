.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# static fields
.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->f:Ljava/util/regex/Pattern;

    .line 38
    const-string v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->g:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->h:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->i:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->j:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->k:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->l:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->m:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 256
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 18

    move-object/from16 v0, p1

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_19

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "(?:^|\n)"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "(?:;([^:]*))?:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 107
    :cond_0
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_b

    .line 110
    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->end(I)I

    move-result v4

    const/4 v9, 0x1

    .line 112
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 117
    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v15, v6, v11

    if-nez v12, :cond_2

    .line 119
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    :cond_2
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v2, Lcom/google/zxing/client/result/VCardResultParser;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v15, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 123
    array-length v15, v2

    if-le v15, v9, :cond_4

    .line 124
    aget-object v15, v2, v3

    .line 125
    aget-object v2, v2, v9

    .line 126
    const-string v3, "ENCODING"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "QUOTED-PRINTABLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    .line 128
    :cond_3
    const-string v3, "CHARSET"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v14, v2

    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_6
    move v2, v4

    :goto_3
    const/16 v3, 0xa

    .line 137
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/16 v6, 0x3d

    if-ltz v2, :cond_b

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    if-ge v2, v10, :cond_8

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v15, 0x20

    if-eq v11, v15, :cond_7

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x9

    if-ne v10, v11, :cond_8

    :cond_7
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_8
    if-eqz v13, :cond_b

    if-lt v2, v9, :cond_9

    add-int/lit8 v10, v2, -0x1

    .line 142
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v6, :cond_a

    :cond_9
    if-lt v2, v8, :cond_b

    add-int/lit8 v10, v2, -0x2

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    if-gez v2, :cond_c

    move v2, v1

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_c
    if-le v2, v4, :cond_18

    if-nez v5, :cond_d

    .line 157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    :cond_d
    const/16 v8, 0xd

    if-lt v2, v9, :cond_e

    add-int/lit8 v10, v2, -0x1

    .line 159
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v8, :cond_e

    add-int/lit8 v2, v2, -0x1

    .line 162
    :cond_e
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_f

    .line 164
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 166
    :cond_f
    sget-object v10, Lcom/google/zxing/client/result/VCardResultParser;->m:Ljava/util/regex/Pattern;

    const-string v11, "\n"

    if-eqz v13, :cond_14

    .line 198
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    .line 199
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v16, 0x1

    .line 200
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v13, :cond_13

    .line 202
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v3, :cond_12

    const/16 v3, 0xd

    if-eq v8, v3, :cond_11

    const/16 v3, 0x3d

    if-eq v8, v3, :cond_10

    .line 222
    invoke-static {v9, v14, v15}, Lcom/google/zxing/client/result/VCardResultParser;->g(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 223
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    add-int/lit8 v8, v13, -0x2

    if-ge v6, v8, :cond_11

    add-int/lit8 v8, v6, 0x1

    .line 209
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v3, 0xd

    if-eq v8, v3, :cond_11

    const/16 v3, 0xa

    if-eq v8, v3, :cond_12

    add-int/lit8 v6, v6, 0x2

    .line 211
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v17

    .line 212
    invoke-static {v8}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v8

    .line 213
    invoke-static/range {v17 .. v17}, Lcom/google/zxing/client/result/ResultParser;->parseHexDigit(C)I

    move-result v17

    if-ltz v8, :cond_12

    if-ltz v17, :cond_12

    shl-int/lit8 v8, v8, 0x4

    add-int v8, v8, v17

    .line 215
    invoke-virtual {v9, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6

    :cond_11
    :goto_5
    const/16 v3, 0xa

    :cond_12
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0xd

    goto :goto_4

    .line 226
    :cond_13
    invoke-static {v9, v14, v15}, Lcom/google/zxing/client/result/VCardResultParser;->g(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 227
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p3, :cond_16

    .line 169
    invoke-virtual {v10, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_14
    const/16 v16, 0x1

    if-eqz p3, :cond_15

    .line 173
    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_15
    sget-object v3, Lcom/google/zxing/client/result/VCardResultParser;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    sget-object v4, Lcom/google/zxing/client/result/VCardResultParser;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "$1"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_16
    :goto_7
    if-nez v12, :cond_17

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_17
    const/4 v4, 0x0

    .line 184
    invoke-interface {v12, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 185
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    :goto_9
    const/4 v4, 0x0

    goto :goto_8

    :goto_a
    move v4, v2

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_19
    :goto_b
    return-object v5
.end method

.method public static f([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 1

    .line 335
    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 337
    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static g(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 233
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 234
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    if-nez p1, :cond_0

    .line 237
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 240
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    goto :goto_0

    .line 243
    :catch_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    .line 246
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static h(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 260
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_2

    .line 264
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 267
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 268
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 269
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 275
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 278
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    .line 281
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 282
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x3d

    .line 283
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 289
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "TYPE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v5, v0

    .line 294
    :goto_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 296
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_5
    :goto_3
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 27

    .line 51
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 56
    :cond_0
    const-string v1, "FN"

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 59
    const-string v1, "N"

    invoke-static {v1, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 311
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 312
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    .line 313
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x4

    if-ge v9, v11, :cond_1

    const/16 v12, 0x3b

    .line 317
    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-lez v12, :cond_1

    .line 318
    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v12, 0x1

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v9

    .line 323
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x64

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x3

    .line 324
    invoke-static {v8, v9, v7}, Lcom/google/zxing/client/result/VCardResultParser;->f([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 325
    invoke-static {v8, v2, v7}, Lcom/google/zxing/client/result/VCardResultParser;->f([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    const/4 v9, 0x2

    .line 326
    invoke-static {v8, v9, v7}, Lcom/google/zxing/client/result/VCardResultParser;->f([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 327
    invoke-static {v8, v4, v7}, Lcom/google/zxing/client/result/VCardResultParser;->f([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 328
    invoke-static {v8, v11, v7}, Lcom/google/zxing/client/result/VCardResultParser;->f([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 329
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_2
    const-string v5, "TEL"

    invoke-static {v5, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 63
    const-string v6, "EMAIL"

    invoke-static {v6, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v6

    .line 64
    const-string v7, "NOTE"

    invoke-static {v7, v0, v4, v4}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v7

    .line 65
    const-string v8, "ADR"

    invoke-static {v8, v0, v2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->e(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 66
    const-string v9, "ORG"

    invoke-static {v9, v0, v2, v2}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v9

    .line 67
    const-string v10, "BDAY"

    invoke-static {v10, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 68
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_3

    .line 300
    sget-object v12, Lcom/google/zxing/client/result/VCardResultParser;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_3
    move-object v3, v10

    .line 71
    :cond_4
    const-string v10, "TITLE"

    invoke-static {v10, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v10

    .line 72
    const-string v11, "URL"

    invoke-static {v11, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v11

    .line 73
    const-string v12, "IMPP"

    invoke-static {v12, v0, v2, v4}, Lcom/google/zxing/client/result/VCardResultParser;->d(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 74
    new-instance v12, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v1}, Lcom/google/zxing/client/result/VCardResultParser;->i(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->i(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v5}, Lcom/google/zxing/client/result/VCardResultParser;->j(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v16

    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->i(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v17

    invoke-static {v6}, Lcom/google/zxing/client/result/VCardResultParser;->j(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v18

    invoke-static {v0}, Lcom/google/zxing/client/result/VCardResultParser;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v7}, Lcom/google/zxing/client/result/VCardResultParser;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->i(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v21

    invoke-static {v8}, Lcom/google/zxing/client/result/VCardResultParser;->j(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v22

    invoke-static {v9}, Lcom/google/zxing/client/result/VCardResultParser;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v23

    invoke-static {v3}, Lcom/google/zxing/client/result/VCardResultParser;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v24

    invoke-static {v10}, Lcom/google/zxing/client/result/VCardResultParser;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v25

    invoke-static {v11}, Lcom/google/zxing/client/result/VCardResultParser;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v26

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v26}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_5
    :goto_2
    return-object v3
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p1

    return-object p1
.end method
