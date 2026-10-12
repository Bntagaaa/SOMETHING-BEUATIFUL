.class Lcom/google/common/collect/y5$k;
.super Lcom/google/common/collect/y5$p;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$p;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient c:Ljava/util/Set;

.field public transient d:Ljava/util/Collection;

.field public transient e:Ljava/util/Set;


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 983
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 990
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 997
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$k;->e:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 211
    new-instance v3, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1004
    iput-object v3, p0, Lcom/google/common/collect/y5$k;->e:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1006
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$k;->e:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1007
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1079
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1012
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1013
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1014
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1086
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1021
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1026
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$k;->c:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 211
    new-instance v3, Lcom/google/common/collect/y5$s;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1028
    iput-object v3, p0, Lcom/google/common/collect/y5$k;->c:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1030
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$k;->c:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1031
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1038
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1045
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1050
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1051
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1052
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public size()I
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1059
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$k;->d:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/google/common/collect/y5$k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 102
    new-instance v3, Lcom/google/common/collect/y5$f;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1066
    iput-object v3, p0, Lcom/google/common/collect/y5$k;->d:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1068
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$k;->d:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 1069
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
