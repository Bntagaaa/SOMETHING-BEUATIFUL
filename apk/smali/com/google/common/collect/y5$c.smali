.class Lcom/google/common/collect/y5$c;
.super Lcom/google/common/collect/y5$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$s<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 913
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 914
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    .line 3457
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3460
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1278
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v2, Lcom/google/common/collect/x3;

    invoke-direct {v2, p1}, Lcom/google/common/collect/x3;-><init>(Ljava/util/Map$Entry;)V

    .line 3460
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 914
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 915
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 920
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Collections2;->b(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 922
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 931
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 932
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 876
    new-instance v0, Lcom/google/common/collect/y5$c$a;

    .line 877
    invoke-super {p0}, Lcom/google/common/collect/y5$f;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/y5$c$a;-><init>(Lcom/google/common/collect/y5$c;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 937
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 938
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    .line 3475
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3478
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1278
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v2, Lcom/google/common/collect/x3;

    invoke-direct {v2, p1}, Lcom/google/common/collect/x3;-><init>(Ljava/util/Map$Entry;)V

    .line 3478
    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 938
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 945
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 946
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 953
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 899
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 900
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    .line 174
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/ObjectArrays;->b(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 900
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 901
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 907
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/ObjectArrays;->c(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 908
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
