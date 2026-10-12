.class public Lcom/google/appinventor/components/runtime/util/Base58Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHABET:[C

.field private static final ENCODED_ZERO:C

.field private static final INDEXES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    const-string v0, "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    const/4 v1, 0x0

    .line 49
    aget-char v0, v0, v1

    sput-char v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    const/16 v0, 0x80

    .line 50
    new-array v0, v0, [I

    sput-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    const/4 v2, -0x1

    .line 52
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 53
    :goto_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 54
    sget-object v2, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    aget-char v0, v0, v1

    aput v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyOfRange([BII)[B
    .locals 2

    sub-int v0, p2, p1

    if-ltz v0, :cond_0

    .line 148
    new-array p2, v0, [B

    .line 149
    array-length v1, p0

    sub-int/2addr v1, p1

    .line 150
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 149
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    new-array p0, v1, [B

    return-object p0

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    .line 109
    sget-object v5, Lcom/google/appinventor/components/runtime/util/Base58Util;->INDEXES:[I

    aget v5, v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    if-ltz v5, :cond_2

    int-to-byte v4, v5

    .line 113
    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal character "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_4

    .line 117
    aget-byte v3, v2, v1

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 121
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-array v3, p0, [B

    move v5, p0

    move v4, v1

    :cond_5
    :goto_3
    if-ge v4, v0, :cond_6

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x3a

    const/16 v7, 0x100

    .line 124
    invoke-static {v2, v4, v6, v7}, Lcom/google/appinventor/components/runtime/util/Base58Util;->divmod([BIII)B

    move-result v6

    aput-byte v6, v3, v5

    .line 125
    aget-byte v6, v2, v4

    if-nez v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v5, p0, :cond_7

    .line 130
    aget-byte v0, v3, v5

    if-nez v0, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    sub-int/2addr v5, v1

    .line 134
    invoke-static {v3, v5, p0}, Lcom/google/appinventor/components/runtime/util/Base58Util;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeToBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Base58Util;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static divmod([BIII)B
    .locals 2

    const/4 v0, 0x0

    .line 169
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .line 170
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    mul-int v0, v0, p2

    add-int/2addr v0, v1

    .line 172
    div-int v1, v0, p3

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 173
    rem-int/2addr v0, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    int-to-byte p0, v0

    return p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 8

    .line 65
    array-length v0, p0

    if-nez v0, :cond_0

    .line 66
    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 75
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [C

    move v3, v0

    move v4, v1

    .line 77
    :cond_2
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    .line 78
    sget-object v5, Lcom/google/appinventor/components/runtime/util/Base58Util;->ALPHABET:[C

    const/16 v6, 0x100

    const/16 v7, 0x3a

    invoke-static {p0, v3, v6, v7}, Lcom/google/appinventor/components/runtime/util/Base58Util;->divmod([BIII)B

    move-result v6

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    .line 79
    aget-byte v5, p0, v3

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v4, v1, :cond_4

    .line 84
    aget-char p0, v2, v4

    sget-char v3, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    if-ne p0, v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    add-int/lit8 v4, v4, -0x1

    .line 88
    sget-char p0, Lcom/google/appinventor/components/runtime/util/Base58Util;->ENCODED_ZERO:C

    aput-char p0, v2, v4

    goto :goto_3

    .line 91
    :cond_5
    new-instance p0, Ljava/lang/String;

    sub-int/2addr v1, v4

    invoke-direct {p0, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method
