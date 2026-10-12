.class final Lcom/google/common/io/BaseEncoding$e;
.super Lcom/google/common/io/BaseEncoding$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V
    .locals 0

    .line 944
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$g;-><init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V

    .line 420
    iget-object p1, p1, Lcom/google/common/io/BaseEncoding$c;->b:[C

    .line 945
    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 940
    new-instance v1, Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/google/common/io/BaseEncoding$c;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v1, v0}, Lcom/google/common/io/BaseEncoding$e;-><init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/CharSequence;)I
    .locals 8

    .line 967
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding$g;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 969
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget v2, v1, Lcom/google/common/io/BaseEncoding$c;->e:I

    .line 476
    rem-int/2addr v0, v2

    iget-object v2, v1, Lcom/google/common/io/BaseEncoding$c;->h:[Z

    aget-boolean v0, v2, v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 973
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 974
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x12

    add-int/lit8 v5, v0, 0x2

    .line 975
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    ushr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    .line 976
    aput-byte v6, p1, v2

    .line 977
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    add-int/lit8 v6, v0, 0x3

    .line 978
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v3, v5

    add-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 979
    aput-byte v7, p1, v4

    .line 980
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v6, v4, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 981
    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 982
    aput-byte v3, p1, v5

    goto :goto_0

    :cond_0
    move v2, v5

    move v0, v6

    goto :goto_0

    :cond_1
    move v2, v4

    move v0, v5

    goto :goto_0

    :cond_2
    return v2

    .line 970
    :cond_3
    new-instance p1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid input length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 970
    throw p1
.end method

.method public final b([BLjava/lang/Appendable;II)V
    .locals 5

    .line 950
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 951
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    :goto_0
    const/4 v1, 0x3

    if-lt p4, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    .line 954
    aget-byte v2, p1, p3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p3, p3, 0x3

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x12

    .line 472
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    iget-object v4, v3, Lcom/google/common/io/BaseEncoding$c;->b:[C

    .line 472
    aget-char v2, v4, v2

    .line 955
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    .line 472
    iget-object v3, v3, Lcom/google/common/io/BaseEncoding$c;->b:[C

    aget-char v2, v3, v2

    .line 956
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    .line 472
    aget-char v2, v3, v2

    .line 957
    invoke-interface {p2, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    and-int/lit8 v1, v1, 0x3f

    .line 472
    aget-char v1, v3, v1

    .line 958
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, -0x3

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    sub-int/2addr v0, p3

    .line 961
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/io/BaseEncoding$g;->f([BLjava/lang/Appendable;II)V

    :cond_1
    return-void
.end method

.method public final g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 1

    .line 991
    new-instance v0, Lcom/google/common/io/BaseEncoding$e;

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$e;-><init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V

    return-object v0
.end method
