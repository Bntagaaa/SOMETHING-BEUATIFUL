.class public final Lcom/google/common/collect/HashBiMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$b;,
        Lcom/google/common/collect/HashBiMap$e;,
        Lcom/google/common/collect/HashBiMap$d;,
        Lcom/google/common/collect/HashBiMap$a;,
        Lcom/google/common/collect/HashBiMap$c;,
        Lcom/google/common/collect/HashBiMap$g;,
        Lcom/google/common/collect/HashBiMap$f;,
        Lcom/google/common/collect/HashBiMap$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient a:[Ljava/lang/Object;

.field public transient b:[Ljava/lang/Object;

.field public transient c:I

.field public transient d:I

.field public transient e:[I

.field public transient f:[I

.field public transient g:[I

.field public transient h:[I

.field public transient i:I

.field public transient j:I

.field public transient k:[I

.field public transient l:[I

.field public transient m:Ljava/util/Set;

.field public transient n:Ljava/util/Set;

.field public transient o:Ljava/util/Set;

.field public transient p:Lcom/google/common/collect/BiMap;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 114
    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 115
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/e2;->a(ID)I

    move-result v0

    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 118
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 119
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    .line 121
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    .line 122
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    .line 123
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    .line 124
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    const/4 v0, -0x2

    .line 126
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    .line 127
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->j:I

    .line 129
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 130
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    return-void
.end method

.method public static b(I)[I
    .locals 1

    .line 135
    new-array p0, p0, [I

    const/4 v0, -0x1

    .line 136
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-object p0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 58
    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    return p1
.end method

.method public final c(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 406
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 407
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p2

    .line 409
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    .line 410
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v3, v2, p1

    aput v3, v1, p2

    .line 411
    aput v0, v2, p1

    return-void

    .line 416
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget p2, p2, v2

    :goto_1
    move v4, v2

    move v2, p2

    move p2, v4

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v2, v1, p1

    aput v2, v1, p2

    .line 421
    aput v0, v1, p1

    return-void

    .line 418
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget p2, p2, v2

    goto :goto_1

    .line 426
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to find entry with key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public clear()V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 654
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 655
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 656
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 657
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 658
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 659
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    iget v3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 660
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 v0, -0x2

    .line 661
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->i:I

    .line 662
    iput v0, p0, Lcom/google/common/collect/HashBiMap;->j:I

    .line 663
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 198
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 210
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->g(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(II)V
    .locals 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 434
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 435
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p2

    .line 437
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_1

    .line 438
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v3, v2, p1

    aput v3, v1, p2

    .line 439
    aput v0, v2, p1

    return-void

    .line 444
    :cond_1
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget p2, p2, v2

    :goto_1
    move v4, v2

    move v2, p2

    move p2, v4

    if-eq v2, v0, :cond_3

    if-ne v2, p1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, v1, p1

    aput v2, v1, p2

    .line 449
    aput v0, v1, p1

    return-void

    .line 446
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget p2, p2, v2

    goto :goto_1

    .line 454
    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected to find entry with value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public final e(I)V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 158
    array-length v0, v0

    .line 159
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->a(II)I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 162
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    .line 163
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    .line 142
    array-length v2, v1

    .line 143
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const/4 v3, -0x1

    .line 144
    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 163
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    .line 164
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    .line 142
    array-length v2, v1

    .line 143
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 144
    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 164
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    .line 165
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 142
    array-length v2, v1

    .line 143
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 144
    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 165
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    .line 166
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 142
    array-length v2, v1

    .line 143
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 144
    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 166
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 170
    invoke-static {p1, v0, v1}, Lcom/google/common/collect/e2;->a(ID)I

    move-result p1

    .line 171
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    .line 172
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    const/4 p1, 0x0

    .line 174
    :goto_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ge p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 176
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 178
    aput p1, v2, v0

    .line 180
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 181
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v3, v2, v0

    aput v3, v1, p1

    .line 183
    aput p1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lcom/google/common/collect/HashBiMap$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$c;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->o:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final f(ILjava/lang/Object;)I
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 224
    aget-object v0, v2, p1

    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 223
    :cond_0
    aget p1, v1, p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(ILjava/lang/Object;)I
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 224
    aget-object v0, v2, p1

    invoke-static {v0, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 223
    :cond_0
    aget p1, v1, p1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 198
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final h(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 384
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 385
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p2

    .line 386
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v2, v1, p2

    aput v2, v0, p1

    .line 387
    aput p1, v1, p2

    return-void
.end method

.method public final i(II)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 396
    invoke-virtual {p0, p2}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p2

    .line 397
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v2, v1, p2

    aput v2, v0, p1

    .line 398
    aput p1, v1, p2

    return-void
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Lcom/google/common/collect/HashBiMap$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$d;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->p:Lcom/google/common/collect/BiMap;

    :cond_0
    return-object v0
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5

    .line 272
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 273
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 275
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 276
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 279
    :cond_0
    invoke-virtual {p0, p2, v1, p3}, Lcom/google/common/collect/HashBiMap;->p(Ljava/lang/Object;IZ)V

    return-object p1

    .line 284
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v1

    .line 285
    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->g(ILjava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    if-eq v3, v2, :cond_4

    .line 288
    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/HashBiMap;->n(II)V

    goto :goto_1

    :cond_2
    if-ne v3, v2, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 291
    :goto_0
    const-string v2, "Value already present: %s"

    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 294
    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v4

    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->e(I)V

    .line 295
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p1, p3, v2

    .line 296
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p2, p1, v2

    .line 298
    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 299
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->i(II)V

    .line 301
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 302
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    const/4 p2, -0x2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 303
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 304
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6

    .line 317
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->g(ILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 320
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p1, p1, v1

    .line 321
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 324
    :cond_0
    invoke-virtual {p0, p2, v1, p3}, Lcom/google/common/collect/HashBiMap;->o(Ljava/lang/Object;IZ)V

    return-object p1

    .line 329
    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    .line 330
    invoke-static {p2}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v3

    .line 331
    invoke-virtual {p0, v3, p2}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz p3, :cond_2

    if-eq v4, v2, :cond_4

    .line 334
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v1, p3, v4

    .line 335
    invoke-virtual {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->m(II)V

    goto :goto_1

    :cond_2
    if-ne v4, v2, :cond_3

    const/4 p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 338
    :goto_0
    const-string v2, "Key already present: %s"

    invoke-static {p3, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 345
    :cond_4
    :goto_1
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p3, v5

    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->e(I)V

    .line 346
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    aput-object p2, p3, v2

    .line 347
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p1, p2, v2

    .line 349
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 350
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->i(II)V

    const/4 p1, -0x2

    if-ne v1, p1, :cond_5

    .line 352
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->i:I

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p1, p1, v1

    .line 354
    :goto_2
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-virtual {p0, v1, p2}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 355
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 356
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 357
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->m:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 741
    new-instance v0, Lcom/google/common/collect/HashBiMap$f;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$f;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->m:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final l(III)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 565
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 567
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/HashBiMap;->d(II)V

    .line 569
    iget-object p2, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p2, p2, p1

    .line 570
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p3, p3, p1

    .line 571
    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 573
    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    sub-int/2addr p2, v0

    if-ne p2, p1, :cond_1

    goto :goto_5

    .line 598
    :cond_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p3, p3, p2

    .line 599
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v2, v2, p2

    .line 600
    invoke-virtual {p0, p3, p1}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 601
    invoke-virtual {p0, p1, v2}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 603
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v2, p3, p2

    .line 604
    iget-object v3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v4, v3, p2

    .line 606
    aput-object v2, p3, p1

    .line 607
    aput-object v4, v3, p1

    .line 610
    invoke-static {v2}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result p3

    .line 611
    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p3

    .line 612
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->e:[I

    aget v3, v2, p3

    if-ne v3, p2, :cond_2

    .line 613
    aput p1, v2, p3

    goto :goto_2

    .line 616
    :cond_2
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget p3, p3, v3

    :goto_1
    move v5, v3

    move v3, p3

    move p3, v5

    if-ne v3, p2, :cond_5

    .line 620
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aput p1, v2, p3

    .line 626
    :goto_2
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget v2, p3, p2

    aput v2, p3, p1

    .line 627
    aput v1, p3, p2

    .line 630
    invoke-static {v4}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result p3

    .line 631
    invoke-virtual {p0, p3}, Lcom/google/common/collect/HashBiMap;->a(I)I

    move-result p3

    .line 632
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->f:[I

    aget v3, v2, p3

    if-ne v3, p2, :cond_3

    .line 633
    aput p1, v2, p3

    goto :goto_4

    .line 636
    :cond_3
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget p3, p3, v3

    :goto_3
    move v5, v3

    move v3, p3

    move p3, v5

    if-ne v3, p2, :cond_4

    .line 640
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aput p1, v2, p3

    .line 646
    :goto_4
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget v2, p3, p2

    aput v2, p3, p1

    .line 647
    aput v1, p3, p2

    .line 574
    :goto_5
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    iget p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    add-int/lit8 p3, p2, -0x1

    const/4 v1, 0x0

    aput-object v1, p1, p3

    .line 575
    iget-object p1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    add-int/lit8 p3, p2, -0x1

    aput-object v1, p1, p3

    sub-int/2addr p2, v0

    .line 576
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->c:I

    .line 577
    iget p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/HashBiMap;->d:I

    return-void

    .line 638
    :cond_4
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->h:[I

    aget p3, p3, v3

    goto :goto_3

    .line 618
    :cond_5
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->g:[I

    aget p3, p3, v3

    goto :goto_1
.end method

.method public final m(II)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->l(III)V

    return-void
.end method

.method public final n(II)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/collect/HashBiMap;->l(III)V

    return-void
.end method

.method public final o(Ljava/lang/Object;IZ)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 487
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 488
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v1

    .line 489
    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result v2

    .line 491
    iget v3, p0, Lcom/google/common/collect/HashBiMap;->j:I

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 495
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v3, p3, v2

    .line 496
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget p3, p3, v2

    .line 497
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->m(II)V

    .line 498
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p2, v0, :cond_3

    move p2, v2

    goto :goto_1

    .line 502
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Key already present in map: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const/4 p3, -0x2

    :cond_3
    :goto_1
    if-ne v3, p2, :cond_4

    .line 506
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget v3, v0, p2

    goto :goto_2

    .line 507
    :cond_4
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne v3, v0, :cond_5

    move v3, v2

    :cond_5
    :goto_2
    if-ne p3, p2, :cond_6

    .line 512
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v2, p3, p2

    goto :goto_3

    .line 513
    :cond_6
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p3, v0, :cond_7

    goto :goto_3

    :cond_7
    move v2, p3

    .line 517
    :goto_3
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aget p3, p3, p2

    .line 518
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aget v0, v0, p2

    .line 519
    invoke-virtual {p0, p3, v0}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 521
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aget-object p3, p3, p2

    invoke-static {p3}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->c(II)V

    .line 522
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->a:[Ljava/lang/Object;

    aput-object p1, p3, p2

    .line 523
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/HashBiMap;->h(II)V

    .line 526
    invoke-virtual {p0, v3, p2}, Lcom/google/common/collect/HashBiMap;->q(II)V

    .line 527
    invoke-virtual {p0, p2, v2}, Lcom/google/common/collect/HashBiMap;->q(II)V

    return-void
.end method

.method public final p(Ljava/lang/Object;IZ)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 462
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 463
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v1

    .line 464
    invoke-virtual {p0, v1, p1}, Lcom/google/common/collect/HashBiMap;->g(ILjava/lang/Object;)I

    move-result v2

    if-eq v2, v0, :cond_2

    if-eqz p3, :cond_1

    .line 467
    invoke-virtual {p0, v2, v1}, Lcom/google/common/collect/HashBiMap;->n(II)V

    .line 468
    iget p3, p0, Lcom/google/common/collect/HashBiMap;->c:I

    if-ne p2, p3, :cond_2

    move p2, v2

    goto :goto_1

    .line 472
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Value already present in map: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 476
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object p3, p3, p2

    invoke-static {p3}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/common/collect/HashBiMap;->d(II)V

    .line 477
    iget-object p3, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aput-object p1, p3, p2

    .line 478
    invoke-virtual {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->i(II)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->j(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final q(II)V
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    .line 368
    iput p2, p0, Lcom/google/common/collect/HashBiMap;->i:I

    goto :goto_0

    .line 370
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->l:[I

    aput p2, v1, p1

    :goto_0
    if-ne p2, v0, :cond_1

    .line 373
    iput p1, p0, Lcom/google/common/collect/HashBiMap;->j:I

    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->k:[I

    aput p1, v0, p2

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 534
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 535
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 540
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->m(II)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->c:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->n:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 777
    new-instance v0, Lcom/google/common/collect/HashBiMap$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$g;-><init>(Lcom/google/common/collect/HashBiMap;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->n:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
