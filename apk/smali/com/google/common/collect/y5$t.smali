.class Lcom/google/common/collect/y5$t;
.super Lcom/google/common/collect/y5$l;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$l<",
        "TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient h:Ljava/util/Set;


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/google/common/collect/y5$t;->b()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 758
    check-cast v0, Lcom/google/common/collect/SetMultimap;

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lcom/google/common/collect/y5$t;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 784
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$t;->h:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/google/common/collect/y5$t;->b()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 211
    new-instance v3, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 786
    iput-object v3, p0, Lcom/google/common/collect/y5$t;->h:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 788
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$t;->h:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 789
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 748
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y5$t;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$t;->b()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 211
    new-instance v2, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v2, p1, v1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 764
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 765
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 748
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y5$t;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 771
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$t;->b()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 772
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 748
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/y5$t;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$t;->b()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 779
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
