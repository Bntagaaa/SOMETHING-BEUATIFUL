.class Lcom/google/common/collect/Multimaps$d;
.super Lcom/google/common/collect/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/p<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient h:Lcom/google/common/base/Supplier;


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/google/common/collect/g;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/google/common/collect/g;->i()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$d;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public createCollection()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$d;->h:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final k(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .line 327
    instance-of v0, p1, Ljava/util/NavigableSet;

    if-eqz v0, :cond_0

    .line 328
    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    return-object p1

    .line 329
    :cond_0
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 330
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    .line 332
    :cond_1
    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .line 338
    instance-of v0, p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 339
    new-instance v0, Lcom/google/common/collect/g$k;

    check-cast p2, Ljava/util/NavigableSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$k;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/NavigableSet;Lcom/google/common/collect/g$i;)V

    return-object v0

    .line 340
    :cond_0
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_1

    .line 341
    new-instance v0, Lcom/google/common/collect/g$m;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/g$m;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/g$i;)V

    return-object v0

    .line 343
    :cond_1
    new-instance v0, Lcom/google/common/collect/g$l;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/g$l;-><init>(Lcom/google/common/collect/g;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method
