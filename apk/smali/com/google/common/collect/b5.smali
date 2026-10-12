.class final Lcom/google/common/collect/b5;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/b5$b;,
        Lcom/google/common/collect/b5$c;,
        Lcom/google/common/collect/b5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final i:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field public final transient f:Ljava/lang/Object;

.field public final transient g:[Ljava/lang/Object;

.field public final transient h:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/google/common/collect/b5;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/b5;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/b5;->i:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/common/collect/b5;->f:Ljava/lang/Object;

    .line 194
    iput-object p2, p0, Lcom/google/common/collect/b5;->g:[Ljava/lang/Object;

    .line 195
    iput p3, p0, Lcom/google/common/collect/b5;->h:I

    return-void
.end method

.method public static h(I[Ljava/lang/Object;)Lcom/google/common/collect/b5;
    .locals 3

    if-nez p0, :cond_0

    .line 74
    sget-object p0, Lcom/google/common/collect/b5;->i:Lcom/google/common/collect/ImmutableMap;

    check-cast p0, Lcom/google/common/collect/b5;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 76
    aget-object p0, p1, v0

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/google/common/collect/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    new-instance p0, Lcom/google/common/collect/b5;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/common/collect/b5;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 79
    :cond_1
    array-length v2, p1

    shr-int/lit8 v1, v2, 0x1

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 80
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->e(I)I

    move-result v1

    .line 81
    invoke-static {p0, v1, p1, v0}, Lcom/google/common/collect/b5;->i(II[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/google/common/collect/b5;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/common/collect/b5;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method public static i(II[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 93
    aget-object p0, p2, p3

    xor-int/lit8 p1, p3, 0x1

    aget-object p1, p2, p1

    invoke-static {p0, p1}, Lcom/google/common/collect/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-gt p1, v1, :cond_4

    .line 105
    new-array p1, p1, [B

    .line 106
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-ge v2, p0, :cond_3

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p3

    .line 110
    aget-object v3, p2, v1

    xor-int/lit8 v4, v1, 0x1

    .line 111
    aget-object v4, p2, v4

    .line 112
    invoke-static {v3, v4}, Lcom/google/common/collect/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/e2;->b(I)I

    move-result v5

    :goto_1
    and-int/2addr v5, v0

    .line 115
    aget-byte v6, p1, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_1

    int-to-byte v1, v1

    .line 117
    aput-byte v1, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_1
    aget-object v7, p2, v6

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {p2, v6, v3, v4}, Lcom/google/common/collect/b5;->j([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    return-object p1

    :cond_4
    const v1, 0x8000

    if-gt p1, v1, :cond_8

    .line 132
    new-array p1, p1, [S

    .line 133
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    if-ge v2, p0, :cond_7

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p3

    .line 137
    aget-object v3, p2, v1

    xor-int/lit8 v4, v1, 0x1

    .line 138
    aget-object v4, p2, v4

    .line 139
    invoke-static {v3, v4}, Lcom/google/common/collect/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/e2;->b(I)I

    move-result v5

    :goto_3
    and-int/2addr v5, v0

    .line 142
    aget-short v6, p1, v5

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5

    int-to-short v1, v1

    .line 144
    aput-short v1, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_5
    aget-object v7, p2, v6

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 147
    :cond_6
    invoke-static {p2, v6, v3, v4}, Lcom/google/common/collect/b5;->j([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_7
    return-object p1

    .line 156
    :cond_8
    new-array p1, p1, [I

    .line 157
    invoke-static {p1, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_4
    if-ge v2, p0, :cond_b

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v1, p3

    .line 161
    aget-object v4, p2, v1

    xor-int/lit8 v5, v1, 0x1

    .line 162
    aget-object v5, p2, v5

    .line 163
    invoke-static {v4, v5}, Lcom/google/common/collect/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/e2;->b(I)I

    move-result v6

    :goto_5
    and-int/2addr v6, v0

    .line 166
    aget v7, p1, v6

    if-ne v7, v3, :cond_9

    .line 168
    aput v1, p1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 170
    :cond_9
    aget-object v8, p2, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 171
    :cond_a
    invoke-static {p2, v7, v4, v5}, Lcom/google/common/collect/b5;->j([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_b
    return-object p1
.end method

.method public static j([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 3

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Multiple entries with same key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " and "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p0, p1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static k(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 219
    aget-object p0, p1, p3

    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    xor-int/lit8 p0, p3, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_1
    if-nez p0, :cond_2

    goto :goto_3

    .line 225
    :cond_2
    instance-of p2, p0, [B

    if-eqz p2, :cond_5

    .line 226
    move-object p2, p0

    check-cast p2, [B

    .line 227
    array-length p0, p2

    add-int/lit8 p3, p0, -0x1

    .line 228
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/e2;->b(I)I

    move-result p0

    :goto_0
    and-int/2addr p0, p3

    .line 230
    aget-byte v1, p2, p0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    goto :goto_3

    .line 233
    :cond_3
    aget-object v2, p1, v1

    invoke-virtual {v2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    xor-int/lit8 p0, v1, 0x1

    .line 234
    aget-object p0, p1, p0

    return-object p0

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 237
    :cond_5
    instance-of p2, p0, [S

    if-eqz p2, :cond_8

    .line 238
    move-object p2, p0

    check-cast p2, [S

    .line 239
    array-length p0, p2

    add-int/lit8 p3, p0, -0x1

    .line 240
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/google/common/collect/e2;->b(I)I

    move-result p0

    :goto_1
    and-int/2addr p0, p3

    .line 242
    aget-short v1, p2, p0

    const v2, 0xffff

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    goto :goto_3

    .line 245
    :cond_6
    aget-object v2, p1, v1

    invoke-virtual {v2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    xor-int/lit8 p0, v1, 0x1

    .line 246
    aget-object p0, p1, p0

    return-object p0

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 250
    :cond_8
    check-cast p0, [I

    .line 251
    array-length p2, p0

    sub-int/2addr p2, v0

    .line 252
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Lcom/google/common/collect/e2;->b(I)I

    move-result p3

    :goto_2
    and-int/2addr p3, p2

    .line 254
    aget v1, p0, p3

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    :cond_9
    :goto_3
    const/4 p0, 0x0

    return-object p0

    .line 257
    :cond_a
    aget-object v2, p1, v1

    invoke-virtual {v2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    xor-int/lit8 p0, v1, 0x1

    .line 258
    aget-object p0, p1, p0

    return-object p0

    :cond_b
    add-int/lit8 p3, p3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 266
    new-instance v0, Lcom/google/common/collect/b5$a;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/b5;->h:I

    iget-object v3, p0, Lcom/google/common/collect/b5;->g:[Ljava/lang/Object;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/google/common/collect/b5$a;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSet;
    .locals 4

    .line 342
    new-instance v0, Lcom/google/common/collect/b5$c;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/common/collect/b5;->h:I

    iget-object v3, p0, Lcom/google/common/collect/b5;->g:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/collect/b5$c;-><init>([Ljava/lang/Object;II)V

    .line 344
    new-instance v1, Lcom/google/common/collect/b5$b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/b5$b;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public final c()Lcom/google/common/collect/ImmutableCollection;
    .locals 4

    .line 418
    new-instance v0, Lcom/google/common/collect/b5$c;

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/collect/b5;->h:I

    iget-object v3, p0, Lcom/google/common/collect/b5;->g:[Ljava/lang/Object;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/common/collect/b5$c;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 207
    iget v0, p0, Lcom/google/common/collect/b5;->h:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/collect/b5;->f:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/b5;->g:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1, p1}, Lcom/google/common/collect/b5;->k(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/google/common/collect/b5;->h:I

    return v0
.end method
