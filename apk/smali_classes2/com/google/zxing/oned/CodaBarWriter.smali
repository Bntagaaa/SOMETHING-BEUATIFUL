.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 30
    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->a:[C

    .line 31
    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->b:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 10

    const/4 v0, 0x1

    .line 40
    sget-object v1, Lcom/google/zxing/oned/CodaBarWriter;->a:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v1, v3}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 44
    sget-object v1, Lcom/google/zxing/oned/CodaBarWriter;->b:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v1, v3}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v1, 0x4

    .line 50
    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/16 v3, 0x14

    const/4 v4, 0x1

    .line 51
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    if-ge v4, v5, :cond_3

    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v1, v5}, Lcom/google/zxing/oned/CodaBarReader;->b([CC)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0xa

    goto :goto_2

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot encode : \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x9

    :goto_2
    add-int/2addr v4, v0

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/2addr v1, v3

    .line 65
    new-array v1, v1, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 67
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_f

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    if-ne v3, v6, :cond_8

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_7

    const/16 v6, 0x45

    if-eq v5, v6, :cond_6

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_5

    const/16 v6, 0x54

    if-eq v5, v6, :cond_4

    goto :goto_4

    :cond_4
    const/16 v5, 0x41

    goto :goto_4

    :cond_5
    const/16 v5, 0x42

    goto :goto_4

    :cond_6
    const/16 v5, 0x44

    goto :goto_4

    :cond_7
    const/16 v5, 0x43

    :cond_8
    :goto_4
    const/4 v6, 0x0

    .line 87
    :goto_5
    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->d:[C

    array-length v8, v7

    if-ge v6, v8, :cond_a

    .line 89
    aget-char v7, v7, v6

    if-ne v5, v7, :cond_9

    .line 90
    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->e:[I

    aget v5, v5, v6

    goto :goto_6

    :cond_9
    add-int/2addr v6, v0

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_7
    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x7

    if-ge v6, v9, :cond_d

    .line 98
    aput-boolean v7, v1, v4

    add-int/2addr v4, v0

    rsub-int/lit8 v9, v6, 0x6

    shr-int v9, v5, v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_c

    if-ne v8, v0, :cond_b

    goto :goto_9

    :cond_b
    add-int/2addr v8, v0

    goto :goto_8

    :cond_c
    :goto_9
    xor-int/2addr v7, v0

    add-int/2addr v6, v0

    goto :goto_7

    .line 108
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    if-ge v3, v5, :cond_e

    .line 109
    aput-boolean v2, v1, v4

    add-int/2addr v4, v0

    :cond_e
    add-int/2addr v3, v0

    goto :goto_3

    :cond_f
    return-object v1

    .line 45
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Codabar should end with one of the following: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Codabar should start with one of the following: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method
