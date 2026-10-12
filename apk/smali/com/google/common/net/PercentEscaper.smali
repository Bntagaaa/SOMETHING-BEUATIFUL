.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final d:[C

.field public static final e:[C


# instance fields
.field public final b:Z

.field public final c:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 57
    new-array v0, v0, [C

    const/16 v1, 0x2b

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/common/net/PercentEscaper;->d:[C

    .line 60
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/net/PercentEscaper;->e:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .line 85
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 97
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->b:Z

    .line 112
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 113
    array-length p2, p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    aget-char v3, p1, v2

    .line 114
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    add-int/2addr v0, p2

    .line 116
    new-array v0, v0, [Z

    .line 117
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_3

    aget-char v3, p1, v1

    .line 118
    aput-boolean p2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    :cond_3
    iput-object v0, p0, Lcom/google/common/net/PercentEscaper;->c:[Z

    return-void

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->c:[Z

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-boolean v2, v3, v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public escape(I)[C
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 161
    iget-object v2, v0, Lcom/google/common/net/PercentEscaper;->c:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 163
    iget-boolean v2, v0, Lcom/google/common/net/PercentEscaper;->b:Z

    if-eqz v2, :cond_1

    .line 164
    sget-object v1, Lcom/google/common/net/PercentEscaper;->d:[C

    return-object v1

    :cond_1
    const/16 v2, 0x7f

    const/4 v3, 0x1

    .line 165
    sget-object v4, Lcom/google/common/net/PercentEscaper;->e:[C

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x25

    const/4 v9, 0x3

    if-gt v1, v2, :cond_2

    .line 168
    new-array v2, v9, [C

    .line 169
    aput-char v8, v2, v6

    and-int/lit8 v6, v1, 0xf

    .line 170
    aget-char v6, v4, v6

    aput-char v6, v2, v5

    ushr-int/2addr v1, v7

    .line 171
    aget-char v1, v4, v1

    aput-char v1, v2, v3

    return-object v2

    :cond_2
    const/16 v2, 0x7ff

    const/4 v10, 0x5

    const/16 v11, 0xc

    const/16 v12, 0xa

    const/4 v13, 0x6

    const/16 v14, 0x8

    if-gt v1, v2, :cond_3

    .line 176
    new-array v2, v13, [C

    .line 177
    aput-char v8, v2, v6

    .line 178
    aput-char v8, v2, v9

    and-int/lit8 v6, v1, 0xf

    .line 179
    aget-char v6, v4, v6

    aput-char v6, v2, v10

    ushr-int/lit8 v6, v1, 0x4

    and-int/2addr v6, v9

    or-int/2addr v6, v14

    .line 181
    aget-char v6, v4, v6

    aput-char v6, v2, v7

    ushr-int/lit8 v6, v1, 0x6

    and-int/lit8 v6, v6, 0xf

    .line 183
    aget-char v6, v4, v6

    aput-char v6, v2, v5

    ushr-int/2addr v1, v12

    or-int/2addr v1, v11

    .line 185
    aget-char v1, v4, v1

    aput-char v1, v2, v3

    return-object v2

    :cond_3
    const v2, 0xffff

    const/16 v15, 0x9

    const/16 v16, 0x7

    if-gt v1, v2, :cond_4

    .line 190
    new-array v2, v15, [C

    .line 191
    aput-char v8, v2, v6

    const/16 v6, 0x45

    .line 192
    aput-char v6, v2, v3

    .line 193
    aput-char v8, v2, v9

    .line 194
    aput-char v8, v2, v13

    and-int/lit8 v3, v1, 0xf

    .line 195
    aget-char v3, v4, v3

    aput-char v3, v2, v14

    ushr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    or-int/2addr v3, v14

    .line 197
    aget-char v3, v4, v3

    aput-char v3, v2, v16

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0xf

    .line 199
    aget-char v3, v4, v3

    aput-char v3, v2, v10

    ushr-int/lit8 v3, v1, 0xa

    and-int/2addr v3, v9

    or-int/2addr v3, v14

    .line 201
    aget-char v3, v4, v3

    aput-char v3, v2, v7

    ushr-int/2addr v1, v11

    .line 203
    aget-char v1, v4, v1

    aput-char v1, v2, v5

    return-object v2

    :cond_4
    const v2, 0x10ffff

    if-gt v1, v2, :cond_5

    .line 206
    new-array v2, v11, [C

    .line 209
    aput-char v8, v2, v6

    const/16 v6, 0x46

    .line 210
    aput-char v6, v2, v3

    .line 211
    aput-char v8, v2, v9

    .line 212
    aput-char v8, v2, v13

    .line 213
    aput-char v8, v2, v15

    and-int/lit8 v3, v1, 0xf

    .line 214
    aget-char v3, v4, v3

    const/16 v6, 0xb

    aput-char v3, v2, v6

    ushr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v9

    or-int/2addr v3, v14

    .line 216
    aget-char v3, v4, v3

    aput-char v3, v2, v12

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0xf

    .line 218
    aget-char v3, v4, v3

    aput-char v3, v2, v14

    ushr-int/lit8 v3, v1, 0xa

    and-int/2addr v3, v9

    or-int/2addr v3, v14

    .line 220
    aget-char v3, v4, v3

    aput-char v3, v2, v16

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    .line 222
    aget-char v3, v4, v3

    aput-char v3, v2, v10

    ushr-int/lit8 v3, v1, 0x10

    and-int/2addr v3, v9

    or-int/2addr v3, v14

    .line 224
    aget-char v3, v4, v3

    aput-char v3, v2, v7

    ushr-int/lit8 v1, v1, 0x12

    and-int/lit8 v1, v1, 0x7

    .line 226
    aget-char v1, v4, v1

    aput-char v1, v2, v5

    return-object v2

    .line 230
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid unicode character value "

    .line 0
    invoke-static {v1, v3}, L_COROUTINE/a;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 3

    .line 129
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-ge p2, p3, :cond_1

    .line 131
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->c:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v0, v1, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method
