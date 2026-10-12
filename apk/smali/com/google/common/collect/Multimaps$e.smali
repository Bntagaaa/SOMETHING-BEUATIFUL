.class Lcom/google/common/collect/Multimaps$e;
.super Lcom/google/common/collect/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient h:Lcom/google/common/base/Supplier;

.field public transient i:Ljava/util/Comparator;


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/google/common/collect/g;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lcom/google/common/collect/g;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$e;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$e;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public createCollection()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$e;->h:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$e;->i:Ljava/util/Comparator;

    return-object v0
.end method
