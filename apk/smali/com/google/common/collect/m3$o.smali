.class abstract Lcom/google/common/collect/m3$o;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/m3$j<",
        "TK;TV;TE;>;S:",
        "Lcom/google/common/collect/m3$o<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# static fields
.field public static final synthetic g:I


# instance fields
.field public final a:Lcom/google/common/collect/m3;

.field public volatile b:I

.field public c:I

.field public d:I

.field public volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m3;II)V
    .locals 1

    .line 1208
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/m3$o;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1209
    iput-object p1, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    .line 1240
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 1244
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/google/common/collect/m3$o;->d:I

    if-ne p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1247
    iput p2, p0, Lcom/google/common/collect/m3$o;->d:I

    .line 1249
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/ref/ReferenceQueue;)V
    .locals 7

    const/4 v0, 0x0

    .line 1355
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1357
    check-cast v1, Lcom/google/common/collect/m3$j;

    .line 1358
    iget-object v2, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    invoke-interface {v1}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v3

    .line 1092
    invoke-virtual {v2, v3}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    .line 1823
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1826
    :try_start_0
    iget-object v4, v2, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1827
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v3, v5

    .line 1828
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/m3$j;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, v1, :cond_2

    .line 1832
    iget v1, v2, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/google/common/collect/m3$o;->c:I

    .line 1833
    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/m3$o;->i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object v1

    .line 1834
    iget v5, v2, Lcom/google/common/collect/m3$o;->b:I

    add-int/lit8 v5, v5, -0x1

    .line 1835
    invoke-virtual {v4, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1836
    iput v5, v2, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1843
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1830
    :cond_2
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 1843
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1844
    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public final b(Ljava/lang/ref/ReferenceQueue;)V
    .locals 11

    const/4 v0, 0x0

    .line 1369
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1371
    check-cast v1, Lcom/google/common/collect/m3$h0;

    .line 1372
    iget-object v2, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    invoke-interface {v1}, Lcom/google/common/collect/m3$h0;->getEntry()Lcom/google/common/collect/m3$j;

    move-result-object v3

    .line 1086
    invoke-interface {v3}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v4

    .line 1087
    invoke-virtual {v2, v4}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    invoke-interface {v3}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1850
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1853
    :try_start_0
    iget-object v5, v2, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1854
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v4

    .line 1855
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/m3$j;

    move-object v8, v7

    :goto_0
    if-eqz v8, :cond_1

    .line 1858
    invoke-interface {v8}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 1859
    invoke-interface {v8}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v10

    if-ne v10, v4, :cond_2

    if-eqz v9, :cond_2

    iget-object v10, v2, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v10, v10, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 1861
    invoke-virtual {v10, v3, v9}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1862
    move-object v3, v8

    check-cast v3, Lcom/google/common/collect/m3$g0;

    invoke-interface {v3}, Lcom/google/common/collect/m3$g0;->getValueReference()Lcom/google/common/collect/m3$h0;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 1864
    iget v1, v2, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/google/common/collect/m3$o;->c:I

    .line 1865
    invoke-virtual {v2, v7, v8}, Lcom/google/common/collect/m3$o;->i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object v1

    .line 1866
    iget v3, v2, Lcom/google/common/collect/m3$o;->b:I

    add-int/lit8 v3, v3, -0x1

    .line 1867
    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1868
    iput v3, v2, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1857
    :cond_2
    :try_start_1
    invoke-interface {v8}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 1877
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1878
    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 12

    .line 1537
    iget-object v0, p0, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1538
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 1553
    :cond_0
    iget v2, p0, Lcom/google/common/collect/m3$o;->b:I

    shl-int/lit8 v3, v1, 0x1

    .line 1240
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 1555
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/collect/m3$o;->d:I

    .line 1556
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 1560
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/m3$j;

    if-eqz v6, :cond_5

    .line 1563
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v7

    .line 1564
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v7, :cond_1

    .line 1568
    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 1576
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v10

    and-int/2addr v10, v3

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 1575
    :cond_2
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v7

    goto :goto_1

    .line 1583
    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 1587
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v7

    and-int/2addr v7, v3

    .line 1588
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/m3$j;

    .line 1236
    iget-object v10, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v10, v10, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->k()Lcom/google/common/collect/m3$o;

    move-result-object v11

    invoke-interface {v10, v11, v6, v8}, Lcom/google/common/collect/m3$k;->copy(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1591
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 1586
    :goto_3
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1599
    :cond_6
    iput-object v4, p0, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1600
    iput v2, p0, Lcom/google/common/collect/m3$o;->b:I

    return-void
.end method

.method public final d(ILjava/lang/Object;)Lcom/google/common/collect/m3$j;
    .locals 3

    .line 1393
    iget v0, p0, Lcom/google/common/collect/m3$o;->b:I

    if-eqz v0, :cond_3

    .line 1386
    iget-object v0, p0, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1387
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/m3$j;

    :goto_0
    if-eqz v0, :cond_3

    .line 1395
    invoke-interface {v0}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 1399
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1401
    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->m()V

    goto :goto_1

    .line 1405
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v2, v2, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p2, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1394
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/google/common/collect/m3$o;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->j()V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8

    .line 1478
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1980
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->j()V

    .line 1482
    iget v0, p0, Lcom/google/common/collect/m3$o;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1483
    iget v1, p0, Lcom/google/common/collect/m3$o;->d:I

    if-le v0, v1, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->c()V

    .line 1485
    iget v0, p0, Lcom/google/common/collect/m3$o;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1488
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1489
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1490
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/m3$j;

    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1494
    invoke-interface {v4}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1495
    invoke-interface {v4}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v7, v7, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 1497
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1500
    invoke-interface {v4}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1503
    iget p1, p0, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/m3$o;->c:I

    .line 1504
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/m3$o;->l(Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V

    .line 1505
    iget p1, p0, Lcom/google/common/collect/m3$o;->b:I

    .line 1506
    iput p1, p0, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1515
    :cond_2
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/m3$o;->c:I

    .line 1516
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/m3$o;->l(Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1493
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v4

    goto :goto_1

    .line 1523
    :cond_4
    iget p4, p0, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/google/common/collect/m3$o;->c:I

    .line 1524
    iget-object p4, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object p4, p4, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->k()Lcom/google/common/collect/m3$o;

    move-result-object v4

    invoke-interface {p4, v4, p1, p2, v3}, Lcom/google/common/collect/m3$k;->newEntry(Lcom/google/common/collect/m3$o;Ljava/lang/Object;ILcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object p1

    .line 1525
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/m3$o;->l(Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V

    .line 1526
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1527
    iput v0, p0, Lcom/google/common/collect/m3$o;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    throw p1
.end method

.method public final i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;
    .locals 4

    .line 1806
    iget v0, p0, Lcom/google/common/collect/m3$o;->b:I

    .line 1807
    invoke-interface {p2}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v2, v2, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->k()Lcom/google/common/collect/m3$o;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/google/common/collect/m3$k;->copy(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1808
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object p1

    goto :goto_0

    .line 1816
    :cond_1
    iput v0, p0, Lcom/google/common/collect/m3$o;->b:I

    return-object v1
.end method

.method public final j()V
    .locals 2

    .line 1988
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->f()V

    .line 1991
    iget-object v0, p0, Lcom/google/common/collect/m3$o;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1994
    throw v0

    :cond_0
    return-void
.end method

.method public abstract k()Lcom/google/common/collect/m3$o;
.end method

.method public final l(Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v0, v0, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->k()Lcom/google/common/collect/m3$o;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/m3$k;->setValue(Lcom/google/common/collect/m3$o;Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V

    return-void
.end method

.method public final m()V
    .locals 1

    .line 1342
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/m3$o;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1347
    throw v0

    :cond_0
    return-void
.end method
