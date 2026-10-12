.class final Lcom/google/common/collect/HashBiMap$c;
.super Lcom/google/common/collect/HashBiMap$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap$h<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/HashBiMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$c;->b:Lcom/google/common/collect/HashBiMap;

    .line 818
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$h;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 2

    .line 852
    new-instance v0, Lcom/google/common/collect/HashBiMap$a;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$c;->b:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/HashBiMap$a;-><init>(Lcom/google/common/collect/HashBiMap;I)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 823
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 824
    check-cast p1, Ljava/util/Map$Entry;

    .line 825
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 826
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 827
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$c;->b:Lcom/google/common/collect/HashBiMap;

    .line 198
    invoke-static {v0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 828
    iget-object v1, v1, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 836
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 837
    check-cast p1, Ljava/util/Map$Entry;

    .line 838
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 839
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 840
    invoke-static {v0}, Lcom/google/common/collect/e2;->c(Ljava/lang/Object;)I

    move-result v1

    .line 841
    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$c;->b:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v2, v1, v0}, Lcom/google/common/collect/HashBiMap;->f(ILjava/lang/Object;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 842
    iget-object v3, v2, Lcom/google/common/collect/HashBiMap;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 843
    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/HashBiMap;->m(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
