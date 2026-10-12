.class final Lcom/google/common/io/BaseEncoding$d;
.super Lcom/google/common/io/BaseEncoding$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final j:[C


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$c;)V
    .locals 5

    const/4 v0, 0x0

    .line 899
    invoke-direct {p0, p1, v0}, Lcom/google/common/io/BaseEncoding$g;-><init>(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)V

    const/16 v0, 0x200

    .line 892
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->j:[C

    .line 420
    iget-object v0, p1, Lcom/google/common/io/BaseEncoding$c;->b:[C

    .line 900
    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v2, v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$d;->j:[C

    ushr-int/lit8 v1, v2, 0x4

    .line 472
    iget-object v3, p1, Lcom/google/common/io/BaseEncoding$c;->b:[C

    aget-char v1, v3, v1

    .line 902
    aput-char v1, v0, v2

    or-int/lit16 v1, v2, 0x100

    and-int/lit8 v4, v2, 0xf

    .line 472
    aget-char v3, v3, v4

    .line 903
    aput-char v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a([BLjava/lang/CharSequence;)I
    .locals 5

    .line 920
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 925
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 926
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$g;->f:Lcom/google/common/io/BaseEncoding$c;

    invoke-virtual {v3, v2}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding$c;->a(C)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 927
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_0
    return v1

    .line 922
    :cond_1
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

    .line 922
    throw p1
.end method

.method public final b([BLjava/lang/Appendable;II)V
    .locals 4

    .line 909
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 910
    array-length v1, p1

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    .line 912
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 913
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$d;->j:[C

    aget-char v3, v2, v1

    invoke-interface {p2, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    or-int/lit16 v1, v1, 0x100

    .line 914
    aget-char v1, v2, v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lcom/google/common/io/BaseEncoding$c;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 0

    .line 934
    new-instance p2, Lcom/google/common/io/BaseEncoding$d;

    invoke-direct {p2, p1}, Lcom/google/common/io/BaseEncoding$d;-><init>(Lcom/google/common/io/BaseEncoding$c;)V

    return-object p2
.end method
