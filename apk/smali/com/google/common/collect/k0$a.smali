.class Lcom/google/common/collect/k0$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/google/common/collect/k0$a;->a:Lcom/google/common/collect/k0;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 687
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 689
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 690
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 691
    check-cast p1, Ljava/util/Map$Entry;

    .line 692
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/common/collect/k0;->k(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 693
    iget-object v0, v0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 729
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 731
    :cond_0
    new-instance v1, Lcom/google/common/collect/i0;

    invoke-direct {v1, v0}, Lcom/google/common/collect/i0;-><init>(Lcom/google/common/collect/k0;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 700
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->f()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 702
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 703
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 704
    check-cast p1, Ljava/util/Map$Entry;

    .line 705
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->i()I

    move-result v5

    .line 711
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 76
    iget-object v6, v0, Lcom/google/common/collect/k0;->a:Ljava/lang/Object;

    .line 711
    iget-object v7, v0, Lcom/google/common/collect/k0;->b:[I

    iget-object v8, v0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/common/collect/k0;->d:[Ljava/lang/Object;

    .line 710
    invoke-static/range {v3 .. v9}, Lcom/google/common/collect/m0;->d(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    return v2

    .line 716
    :cond_2
    invoke-virtual {v0, p1, v5}, Lcom/google/common/collect/k0;->n(II)V

    .line 76
    iget p1, v0, Lcom/google/common/collect/k0;->f:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    iput p1, v0, Lcom/google/common/collect/k0;->f:I

    .line 718
    invoke-virtual {v0}, Lcom/google/common/collect/k0;->j()V

    return v1

    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/common/collect/k0$a;->a:Lcom/google/common/collect/k0;

    invoke-virtual {v0}, Lcom/google/common/collect/k0;->size()I

    move-result v0

    return v0
.end method
