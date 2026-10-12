.class public Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bytes:[B

.field private hashcode:I

.field public length:I

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;II)V
    .locals 0

    .line 143
    iget-object p1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 154
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 69
    iput-object v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    const/4 v3, 0x0

    .line 74
    iput v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 80
    iput v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    .line 85
    iput-object v2, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 156
    iput v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 157
    iput v3, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-lez v2, :cond_9

    const/4 v4, 0x0

    :goto_0
    const v5, 0xdbff

    const v6, 0xd800

    const/16 v7, 0x3fff

    const/16 v8, 0x7f

    const/4 v9, 0x1

    if-ge v4, v2, :cond_4

    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v8, :cond_0

    .line 166
    iget v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    goto :goto_2

    :cond_0
    if-gt v10, v7, :cond_1

    .line 168
    iget v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/lit8 v5, v5, 0x2

    iput v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    goto :goto_2

    :cond_1
    if-lt v10, v6, :cond_3

    const v6, 0xdfff

    if-gt v10, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 172
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-gt v10, v5, :cond_2

    const v5, 0xdc00

    if-lt v7, v5, :cond_2

    if-gt v7, v6, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    new-instance v1, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    const-string v2, "Bad UTF16"

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_3
    :goto_1
    iget v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/lit8 v5, v5, 0x3

    iput v5, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    :goto_2
    add-int/2addr v4, v9

    goto :goto_0

    .line 184
    :cond_4
    iget v4, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    new-array v4, v4, [B

    iput-object v4, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    const/4 v4, 0x0

    const/4 v10, 0x1

    :goto_3
    if-ge v3, v2, :cond_8

    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-gt v11, v8, :cond_5

    .line 191
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v13, v11

    aput-byte v13, v12, v4

    add-int/2addr v10, v11

    .line 193
    iget v11, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v11, v10

    iput v11, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    if-gt v11, v7, :cond_6

    ushr-int/lit8 v12, v11, 0x7

    or-int/lit16 v12, v12, 0x80

    .line 197
    iget-object v13, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v14, v12

    aput-byte v14, v13, v4

    add-int/2addr v10, v12

    .line 199
    iget v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v12, v10

    iput v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/lit8 v14, v4, 0x1

    and-int/lit8 v11, v11, 0x7f

    int-to-byte v15, v11

    .line 202
    aput-byte v15, v13, v14

    add-int/2addr v10, v11

    add-int/2addr v12, v10

    .line 204
    iput v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_6
    if-lt v11, v6, :cond_7

    if-gt v11, v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v11, v11, 0x3ff

    shl-int/lit8 v11, v11, 0xa

    .line 209
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    and-int/lit16 v12, v12, 0x3ff

    or-int/2addr v11, v12

    const/high16 v12, 0x10000

    add-int/2addr v11, v12

    :cond_7
    ushr-int/lit8 v12, v11, 0xe

    or-int/lit16 v12, v12, 0x80

    .line 213
    iget-object v13, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v14, v12

    aput-byte v14, v13, v4

    add-int/2addr v10, v12

    .line 215
    iget v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v12, v10

    iput v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/lit8 v14, v4, 0x1

    ushr-int/lit8 v15, v11, 0x7

    and-int/lit16 v15, v15, 0xff

    or-int/lit16 v15, v15, 0x80

    int-to-byte v5, v15

    .line 218
    aput-byte v5, v13, v14

    add-int/2addr v10, v15

    add-int/2addr v12, v10

    .line 220
    iput v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/lit8 v5, v4, 0x2

    and-int/2addr v11, v8

    int-to-byte v14, v11

    .line 223
    aput-byte v14, v13, v5

    add-int/2addr v10, v11

    add-int/2addr v12, v10

    .line 225
    iput v12, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/lit8 v4, v4, 0x3

    :goto_4
    add-int/2addr v3, v9

    const v5, 0xdbff

    goto :goto_3

    .line 229
    :cond_8
    iget v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    shl-int/lit8 v2, v10, 0x10

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    :cond_9
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0, p2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    .line 85
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    sub-int/2addr p3, p2

    .line 105
    iput p3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-lez p3, :cond_1

    .line 107
    new-array p3, p3, [B

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    const/4 p3, 0x1

    .line 108
    :goto_0
    iget v1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-ge v0, v1, :cond_0

    add-int v1, v0, p2

    .line 109
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p3, v1

    .line 111
    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    .line 112
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    iget p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    shl-int/lit8 p2, p3, 0x10

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    :cond_1
    return-void
.end method

.method public static characterSize(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    if-ltz p0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x3fff

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    .line 279
    :cond_2
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Bad character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public characterAt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 250
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    const/16 v3, 0x7f

    if-nez v2, :cond_1

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v1

    if-le v0, v3, :cond_3

    return v0

    :cond_1
    add-int/lit8 v2, p1, 0x2

    .line 257
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->get(I)I

    move-result v2

    and-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xe

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    and-int/lit16 v1, v2, 0x80

    if-nez v1, :cond_3

    const/16 v1, 0x3fff

    if-le v0, v1, :cond_3

    const v1, 0x10ffff

    if-gt v0, v1, :cond_3

    const v1, 0xd800

    if-lt v0, v1, :cond_2

    const v1, 0xdfff

    if-le v0, v1, :cond_3

    :cond_2
    return v0

    .line 264
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Bad character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy([BI)I
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget p1, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    add-int/2addr p2, p1

    return p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 308
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 311
    :cond_0
    check-cast p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;

    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    iget v2, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    if-eq v0, v2, :cond_2

    return v1

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 330
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-gt p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->bytes:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1

    .line 331
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Bad character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->hashcode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/appinventor/components/runtime/repackaged/org/json/JSONException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 356
    iget v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 357
    :goto_0
    iget v4, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->length:I

    if-ge v2, v4, :cond_1

    .line 358
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->characterAt(I)I

    move-result v4

    const/high16 v5, 0x10000

    if-ge v4, v5, :cond_0

    int-to-char v5, v4

    .line 360
    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    sub-int v5, v4, v5

    ushr-int/lit8 v5, v5, 0xa

    const v6, 0xd800

    or-int/2addr v5, v6

    int-to-char v5, v5

    .line 363
    aput-char v5, v0, v3

    add-int/lit8 v5, v3, 0x1

    and-int/lit16 v6, v4, 0x3ff

    const v7, 0xdc00

    or-int/2addr v6, v7

    int-to-char v6, v6

    .line 365
    aput-char v6, v0, v5

    add-int/lit8 v3, v3, 0x2

    .line 357
    :goto_1
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->characterSize(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 369
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    .line 371
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/repackaged/org/json/Kim;->string:Ljava/lang/String;

    return-object v0
.end method
