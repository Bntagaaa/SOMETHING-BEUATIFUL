.class Lcom/google/common/collect/y5$n;
.super Lcom/google/common/collect/y5$u;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/y5$u<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient f:Ljava/util/NavigableSet;

.field public transient g:Ljava/util/NavigableMap;

.field public transient h:Ljava/util/NavigableSet;


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 1419
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public final b()Ljava/util/SortedMap;
    .locals 1

    .line 1419
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1424
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1425
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1431
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1432
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1433
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$n;->f:Ljava/util/NavigableSet;

    if-nez v1, :cond_0

    .line 1419
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1442
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 1389
    new-instance v3, Lcom/google/common/collect/y5$o;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1442
    iput-object v3, p0, Lcom/google/common/collect/y5$n;->f:Ljava/util/NavigableSet;

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1444
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1445
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1452
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$n;->g:Ljava/util/NavigableMap;

    if-nez v1, :cond_0

    .line 1419
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1454
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 1405
    new-instance v3, Lcom/google/common/collect/y5$n;

    .line 970
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1454
    iput-object v3, p0, Lcom/google/common/collect/y5$n;->g:Ljava/util/NavigableMap;

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1456
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1457
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1463
    invoke-interface {v1}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1464
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1469
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1470
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1476
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1477
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1478
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1483
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1484
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 1405
    new-instance v1, Lcom/google/common/collect/y5$n;

    .line 970
    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1484
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1485
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/y5$n;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1496
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1503
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1504
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1530
    invoke-virtual {p0}, Lcom/google/common/collect/y5$n;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1509
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1510
    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1511
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1516
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1517
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1523
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1524
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1525
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1537
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1538
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/y5$n;->h:Ljava/util/NavigableSet;

    if-nez v1, :cond_0

    .line 1419
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1539
    invoke-interface {v1}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 1389
    new-instance v3, Lcom/google/common/collect/y5$o;

    .line 108
    invoke-direct {v3, v1, v2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1539
    iput-object v3, p0, Lcom/google/common/collect/y5$n;->h:Ljava/util/NavigableSet;

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 1541
    :cond_0
    monitor-exit v0

    return-object v1

    .line 1542
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1547
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1548
    invoke-interface {v1}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1549
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1555
    invoke-interface {v1}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/y5;->c(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1563
    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 1405
    new-instance p3, Lcom/google/common/collect/y5$n;

    .line 970
    invoke-direct {p3, p1, p2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1563
    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    .line 1564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1569
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/y5$n;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1574
    iget-object v0, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1419
    :try_start_0
    invoke-super {p0}, Lcom/google/common/collect/y5$u;->b()Ljava/util/SortedMap;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableMap;

    .line 1575
    invoke-interface {v1, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/y5$p;->b:Ljava/lang/Object;

    .line 1405
    new-instance v1, Lcom/google/common/collect/y5$n;

    .line 970
    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/y5$p;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1575
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 1576
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1581
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/y5$n;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
