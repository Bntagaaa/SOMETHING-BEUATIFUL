.class public final Lcom/google/common/collect/LinkedHashMultiset;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public static create()Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 41
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/common/collect/LinkedHashMultiset;

    .line 69
    invoke-direct {v0, p0}, Lcom/google/common/collect/j;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/LinkedHashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 357
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 358
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    .line 63
    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 64
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    invoke-super {p0, p1}, Lcom/google/common/collect/m;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(I)V
    .locals 2

    .line 74
    new-instance v0, Lcom/google/common/collect/s4;

    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/r4;-><init>(II)V

    .line 74
    iput-object v0, p0, Lcom/google/common/collect/j;->c:Lcom/google/common/collect/r4;

    return-void
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/google/common/collect/m;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/google/common/collect/m;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/google/common/collect/m;->isEmpty()Z

    move-result v0

    return v0
.end method
