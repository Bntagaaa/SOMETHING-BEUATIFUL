.class Lcom/google/common/collect/k0;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k0$e;,
        Lcom/google/common/collect/k0$d;,
        Lcom/google/common/collect/k0$a;,
        Lcom/google/common/collect/k0$c;,
        Lcom/google/common/collect/k0$b;
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
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public transient a:Ljava/lang/Object;

.field public transient b:[I

.field public transient c:[Ljava/lang/Object;

.field public transient d:[Ljava/lang/Object;

.field public transient e:I

.field public transient f:I

.field public transient g:Ljava/util/Set;

.field public transient h:Ljava/util/Set;

.field public transient i:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/k0;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 182
    invoke-virtual {p0, v0}, Lcom/google/common/collect/k0;->l(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0;->l(I)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/common/collect/k0;

    invoke-direct {v0}, Lcom/google/common/collect/k0;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/k0<",
            "TK;TV;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/common/collect/k0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b(II)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public c()I
    .locals 4

    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->o()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 213
    iget v0, p0, Lcom/google/common/collect/k0;->e:I

    add-int/lit8 v1, v0, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 70
    invoke-static {v1, v2, v3}, Lcom/google/common/collect/e2;->a(ID)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 215
    invoke-static {v1}, Lcom/google/common/collect/m0;->a(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    .line 258
    iget v2, p0, Lcom/google/common/collect/k0;->e:I

    const/16 v3, 0x1f

    .line 259
    invoke-static {v2, v1, v3}, Lcom/google/common/collect/m0;->b(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/k0;->e:I

    .line 218
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/k0;->b:[I

    .line 219
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    .line 220
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    return v0
.end method

.method public clear()V
    .locals 5

    .line 891
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->j()V

    .line 895
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 898
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    const/4 v3, 0x3

    const v4, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v3, v4}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k0;->e:I

    .line 899
    iput-object v2, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    .line 900
    iput v1, p0, Lcom/google/common/collect/k0;->f:I

    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/k0;->f:I

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/k0;->f:I

    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    .line 90
    instance-of v2, v0, [B

    if-eqz v2, :cond_2

    .line 91
    check-cast v0, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 92
    :cond_2
    instance-of v2, v0, [S

    if-eqz v2, :cond_3

    .line 93
    check-cast v0, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    .line 95
    :cond_3
    check-cast v0, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/k0;->b:[I

    iget v2, p0, Lcom/google/common/collect/k0;->f:I

    invoke-static {v0, v1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 906
    iput v1, p0, Lcom/google/common/collect/k0;->f:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 441
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0;->k(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 808
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 812
    :goto_0
    iget v2, p0, Lcom/google/common/collect/k0;->f:I

    if-ge v1, v2, :cond_2

    .line 813
    iget-object v2, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public d()Ljava/util/Map;
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/k0;->e(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 244
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->g()I

    move-result v1

    :goto_0
    if-ltz v1, :cond_0

    .line 245
    iget-object v2, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, v1}, Lcom/google/common/collect/k0;->h(I)I

    move-result v1

    goto :goto_0

    .line 247
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 248
    iput-object v1, p0, Lcom/google/common/collect/k0;->b:[I

    .line 249
    iput-object v1, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    .line 250
    iput-object v1, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->j()V

    return-object v0
.end method

.method public e(I)Ljava/util/LinkedHashMap;
    .locals 2

    .line 236
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
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

    .line 660
    iget-object v0, p0, Lcom/google/common/collect/k0;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/google/common/collect/k0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k0$a;-><init>(Lcom/google/common/collect/k0;)V

    .line 660
    iput-object v0, p0, Lcom/google/common/collect/k0;->h:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final f()Ljava/util/Map;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 448
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0;->k(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 456
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0;->a(I)V

    .line 457
    iget-object v0, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 543
    iget v0, p0, Lcom/google/common/collect/k0;->f:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final i()I
    .locals 2

    .line 264
    iget v0, p0, Lcom/google/common/collect/k0;->e:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 1

    .line 268
    iget v0, p0, Lcom/google/common/collect/k0;->e:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/k0;->e:I

    return-void
.end method

.method public final k(Ljava/lang/Object;)I
    .locals 7

    .line 417
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->o()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 420
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v0

    .line 421
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->i()I

    move-result v2

    .line 422
    iget-object v3, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v4, v3}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 429
    iget-object v5, p0, Lcom/google/common/collect/k0;->b:[I

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    .line 430
    iget-object v6, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    aget-object v6, v6, v3

    .line 431
    invoke-static {p1, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_3
    and-int v3, v5, v2

    if-nez v3, :cond_2

    return v1
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

    .line 604
    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lcom/google/common/collect/k0$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k0$c;-><init>(Lcom/google/common/collect/k0;)V

    .line 604
    iput-object v0, p0, Lcom/google/common/collect/k0;->g:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public l(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 196
    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const v1, 0x3fffffff    # 1.9999999f

    .line 199
    invoke-static {p1, v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/k0;->e:I

    return-void
.end method

.method public m(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/google/common/collect/k0;->b:[I

    const/4 v1, 0x0

    invoke-static {p4, v1, p5}, Lcom/google/common/collect/m0;->b(III)I

    move-result p4

    aput p4, v0, p1

    .line 352
    iget-object p4, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    aput-object p2, p4, p1

    .line 353
    iget-object p2, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aput-object p3, p2, p1

    return-void
.end method

.method public n(II)V
    .locals 8

    .line 499
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge p1, v1, :cond_2

    .line 502
    iget-object v4, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    aget-object v5, v4, v1

    .line 503
    aput-object v5, v4, p1

    .line 504
    iget-object v6, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v7, v6, v1

    aput-object v7, v6, p1

    .line 505
    aput-object v3, v4, v1

    .line 506
    aput-object v3, v6, v1

    .line 509
    iget-object v3, p0, Lcom/google/common/collect/k0;->b:[I

    aget v4, v3, v1

    aput v4, v3, p1

    .line 510
    aput v2, v3, v1

    .line 513
    invoke-static {v5}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 514
    iget-object v2, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 518
    iget-object p2, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 525
    iget-object v1, p0, Lcom/google/common/collect/k0;->b:[I

    aget v3, v1, v2

    and-int v4, v3, p2

    if-ne v4, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 529
    invoke-static {v3, p1, p2}, Lcom/google/common/collect/m0;->b(III)I

    move-result p1

    aput p1, v1, v2

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    .line 532
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    aput-object v3, p2, p1

    .line 533
    iget-object p2, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aput-object v3, p2, p1

    .line 534
    iget-object p2, p0, Lcom/google/common/collect/k0;->b:[I

    aput v2, p2, p1

    return-void
.end method

.method public final o()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 475
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->o()Z

    move-result v0

    sget-object v1, Lcom/google/common/collect/k0;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v1

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->i()I

    move-result v4

    .line 479
    iget-object v5, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/collect/k0;->b:[I

    iget-object v7, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    .line 480
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/m0;->d(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 488
    invoke-virtual {p0, p1, v4}, Lcom/google/common/collect/k0;->n(II)V

    .line 489
    iget p1, p0, Lcom/google/common/collect/k0;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/k0;->f:I

    .line 490
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->j()V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 283
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->c()I

    .line 286
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 290
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/k0;->b:[I

    .line 291
    iget-object v4, v0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    .line 292
    iget-object v5, v0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    move-object v6, v1

    .line 294
    iget v1, v0, Lcom/google/common/collect/k0;->f:I

    add-int/lit8 v7, v1, 0x1

    move-object v8, v4

    .line 296
    invoke-static {v2}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v4

    .line 297
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->i()I

    move-result v9

    and-int v10, v4, v9

    .line 299
    iget-object v11, v0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v11

    const/4 v12, 0x1

    if-nez v11, :cond_3

    if-le v7, v9, :cond_2

    .line 303
    invoke-static {v9}, Lcom/google/common/collect/m0;->c(I)I

    move-result v5

    invoke-virtual {v0, v9, v5, v4, v1}, Lcom/google/common/collect/k0;->r(IIII)I

    move-result v9

    move v5, v9

    const/16 v16, 0x1

    goto :goto_2

    .line 305
    :cond_2
    iget-object v5, v0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    invoke-static {v5, v10, v7}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    not-int v10, v9

    and-int v13, v4, v10

    const/4 v14, 0x0

    :goto_0
    sub-int/2addr v11, v12

    .line 314
    aget v15, v6, v11

    const/16 v16, 0x1

    and-int v12, v15, v10

    if-ne v12, v13, :cond_4

    .line 315
    aget-object v12, v8, v11

    .line 316
    invoke-static {v2, v12}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 319
    aget-object v1, v5, v11

    .line 321
    aput-object v3, v5, v11

    .line 322
    invoke-virtual {v0, v11}, Lcom/google/common/collect/k0;->a(I)V

    return-object v1

    :cond_4
    and-int v12, v15, v9

    add-int/lit8 v14, v14, 0x1

    if-nez v12, :cond_8

    const/16 v5, 0x9

    if-lt v14, v5, :cond_5

    .line 330
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5
    if-le v7, v9, :cond_6

    .line 335
    invoke-static {v9}, Lcom/google/common/collect/m0;->c(I)I

    move-result v5

    invoke-virtual {v0, v9, v5, v4, v1}, Lcom/google/common/collect/k0;->r(IIII)I

    move-result v9

    :goto_1
    move v5, v9

    goto :goto_2

    .line 337
    :cond_6
    invoke-static {v15, v7, v9}, Lcom/google/common/collect/m0;->b(III)I

    move-result v5

    aput v5, v6, v11

    goto :goto_1

    .line 358
    :goto_2
    iget-object v6, v0, Lcom/google/common/collect/k0;->b:[I

    array-length v6, v6

    if-le v7, v6, :cond_7

    ushr-int/lit8 v8, v6, 0x1

    const/4 v11, 0x1

    .line 362
    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v6

    or-int/2addr v8, v11

    const v9, 0x3fffffff    # 1.9999999f

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-eq v8, v6, :cond_7

    .line 364
    invoke-virtual {v0, v8}, Lcom/google/common/collect/k0;->q(I)V

    .line 341
    :cond_7
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/k0;->m(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 342
    iput v7, v0, Lcom/google/common/collect/k0;->f:I

    .line 343
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->j()V

    const/4 v1, 0x0

    return-object v1

    :cond_8
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v11, v12

    const/4 v12, 0x1

    goto :goto_0
.end method

.method public q(I)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/common/collect/k0;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/k0;->b:[I

    .line 375
    iget-object v0, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    return-void
.end method

.method public final r(IIII)I
    .locals 8

    .line 381
    invoke-static {p2}, Lcom/google/common/collect/m0;->a(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 386
    invoke-static {v0, p3, p4}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    .line 389
    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    .line 390
    iget-object p4, p0, Lcom/google/common/collect/k0;->b:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 394
    invoke-static {v1, p3}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 397
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 403
    invoke-static {v6, v0}, Lcom/google/common/collect/m0;->e(ILjava/lang/Object;)I

    move-result v7

    .line 404
    invoke-static {v0, v6, v2}, Lcom/google/common/collect/m0;->f(Ljava/lang/Object;II)V

    .line 405
    invoke-static {v5, v7, p2}, Lcom/google/common/collect/m0;->b(III)I

    move-result v2

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    .line 257
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 258
    iget p3, p0, Lcom/google/common/collect/k0;->e:I

    const/16 p4, 0x1f

    .line 259
    invoke-static {p3, p1, p4}, Lcom/google/common/collect/m0;->b(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/k0;->e:I

    return p2
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 465
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 469
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 470
    sget-object v0, Lcom/google/common/collect/k0;->j:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 797
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/k0;->f:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/google/common/collect/k0;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Lcom/google/common/collect/k0$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k0$e;-><init>(Lcom/google/common/collect/k0;)V

    .line 824
    iput-object v0, p0, Lcom/google/common/collect/k0;->i:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
