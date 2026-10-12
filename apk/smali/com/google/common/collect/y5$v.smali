.class Lcom/google/common/collect/y5$v;
.super Lcom/google/common/collect/y5$s;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$s<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a()Ljava/util/Collection;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/Set;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/SortedSet;
    .locals 1

    .line 256
    invoke-super {p0}, Lcom/google/common/collect/y5$s;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 263
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 246
    new-instance v2, Lcom/google/common/collect/y5$v;

    .line 108
    invoke-direct {v2, p1, v1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 246
    new-instance v1, Lcom/google/common/collect/y5$v;

    .line 108
    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/y5$v;->c()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 246
    new-instance v2, Lcom/google/common/collect/y5$v;

    .line 108
    invoke-direct {v2, p1, v1}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 283
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 284
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
