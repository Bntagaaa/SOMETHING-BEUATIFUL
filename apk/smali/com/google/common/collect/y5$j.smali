.class Lcom/google/common/collect/y5$j;
.super Lcom/google/common/collect/y5$l;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
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
        "Lcom/google/common/collect/ListMultimap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public final a()Lcom/google/common/collect/Multimap;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/collect/Multimap;

    .line 713
    check-cast v0, Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 705
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y5$j;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/Multimap;

    .line 713
    check-cast v1, Lcom/google/common/collect/ListMultimap;

    .line 719
    invoke-interface {v1, p1}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 59
    invoke-static {p1, v1}, Lcom/google/common/collect/y5;->d(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 719
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 720
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 705
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y5$j;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/Multimap;

    .line 713
    check-cast v1, Lcom/google/common/collect/ListMultimap;

    .line 726
    invoke-interface {v1, p1}, Lcom/google/common/collect/ListMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 705
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/y5$j;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/common/collect/Multimap;

    .line 713
    check-cast v1, Lcom/google/common/collect/ListMultimap;

    .line 733
    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/ListMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 734
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
