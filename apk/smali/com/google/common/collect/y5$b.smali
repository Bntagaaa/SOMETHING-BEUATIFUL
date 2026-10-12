.class Lcom/google/common/collect/y5$b;
.super Lcom/google/common/collect/y5$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$k<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public transient f:Ljava/util/Set;

.field public transient g:Ljava/util/Collection;


# virtual methods
.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 1246
    invoke-virtual {p0}, Lcom/google/common/collect/y5$b;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$b;->f:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 1227
    new-instance v1, Lcom/google/common/collect/y5$c;

    .line 976
    iget-object v2, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 1227
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 108
    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1227
    iput-object v1, p0, Lcom/google/common/collect/y5$b;->f:Ljava/util/Set;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1229
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$b;->f:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 1230
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1207
    invoke-virtual {p0, p1}, Lcom/google/common/collect/y5$b;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1217
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1218
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/collect/y5$k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/google/common/collect/y5;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1220
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$b;->g:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 1237
    new-instance v1, Lcom/google/common/collect/y5$d;

    .line 976
    iget-object v2, p0, Lcom/google/common/collect/y5$p;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    .line 1237
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 108
    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1237
    iput-object v1, p0, Lcom/google/common/collect/y5$b;->g:Ljava/util/Collection;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1239
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/y5$b;->g:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 1240
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
