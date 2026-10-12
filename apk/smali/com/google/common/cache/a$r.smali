.class Lcom/google/common/cache/a$r;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/cache/a;

.field public volatile b:I

.field public c:J

.field public d:I

.field public e:I

.field public volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final g:J

.field public final h:Ljava/lang/ref/ReferenceQueue;

.field public final i:Ljava/lang/ref/ReferenceQueue;

.field public final j:Ljava/util/AbstractQueue;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Ljava/util/AbstractQueue;

.field public final m:Ljava/util/AbstractQueue;

.field public final n:Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/a;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 4

    .line 1937
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1914
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/a$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1938
    iput-object p1, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    .line 1939
    iput-wide p3, p0, Lcom/google/common/cache/a$r;->g:J

    .line 1940
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object p5, p0, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 1964
    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p5, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 1968
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/google/common/cache/a$r;->e:I

    .line 317
    sget-object v0, Lcom/google/common/cache/CacheBuilder$e;->a:Lcom/google/common/cache/CacheBuilder$e;

    .line 317
    iget-object v1, p1, Lcom/google/common/cache/a;->j:Lcom/google/common/cache/Weigher;

    const/4 v2, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-long v0, p2

    cmp-long v3, v0, p3

    if-nez v3, :cond_1

    add-int/2addr p2, v2

    .line 1971
    iput p2, p0, Lcom/google/common/cache/a$r;->e:I

    .line 1973
    :cond_1
    :goto_0
    iput-object p5, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 365
    sget-object p2, Lcom/google/common/cache/a$t;->a:Lcom/google/common/cache/a$t$a;

    iget-object p3, p1, Lcom/google/common/cache/a;->g:Lcom/google/common/cache/a$t;

    if-eq p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 p3, 0x0

    if-eqz v2, :cond_3

    .line 1943
    new-instance p4, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_2

    :cond_3
    move-object p4, p3

    :goto_2
    iput-object p4, p0, Lcom/google/common/cache/a$r;->h:Ljava/lang/ref/ReferenceQueue;

    .line 369
    iget-object p4, p1, Lcom/google/common/cache/a;->h:Lcom/google/common/cache/a$t;

    if-eq p4, p2, :cond_4

    .line 1945
    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_4
    iput-object p3, p0, Lcom/google/common/cache/a$r;->i:Ljava/lang/ref/ReferenceQueue;

    .line 337
    invoke-virtual {p1}, Lcom/google/common/cache/a;->c()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/common/cache/a;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    .line 924
    :cond_5
    sget-object p2, Lcom/google/common/cache/a;->y:Ljava/util/Queue;

    goto :goto_4

    .line 1948
    :cond_6
    :goto_3
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 1950
    :goto_4
    check-cast p2, Ljava/util/AbstractQueue;

    iput-object p2, p0, Lcom/google/common/cache/a$r;->j:Ljava/util/AbstractQueue;

    .line 341
    invoke-virtual {p1}, Lcom/google/common/cache/a;->d()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1953
    new-instance p2, Lcom/google/common/cache/a$k0;

    invoke-direct {p2}, Lcom/google/common/cache/a$k0;-><init>()V

    goto :goto_5

    .line 924
    :cond_7
    sget-object p2, Lcom/google/common/cache/a;->y:Ljava/util/Queue;

    .line 1955
    :goto_5
    check-cast p2, Ljava/util/AbstractQueue;

    iput-object p2, p0, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    .line 337
    invoke-virtual {p1}, Lcom/google/common/cache/a;->c()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lcom/google/common/cache/a;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    .line 924
    :cond_8
    sget-object p1, Lcom/google/common/cache/a;->y:Ljava/util/Queue;

    goto :goto_7

    .line 1958
    :cond_9
    :goto_6
    new-instance p1, Lcom/google/common/cache/a$e;

    invoke-direct {p1}, Lcom/google/common/cache/a$e;-><init>()V

    .line 1960
    :goto_7
    check-cast p1, Ljava/util/AbstractQueue;

    iput-object p1, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    .line 2346
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2351
    throw v0

    :cond_0
    return-void
.end method

.method public final B(Lcom/google/common/cache/f;Ljava/lang/Object;Lcom/google/common/cache/a$a0;)Ljava/lang/Object;
    .locals 5

    .line 2166
    iget-object v0, p0, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const-string v1, "CacheLoader returned null for key "

    invoke-interface {p3}, Lcom/google/common/cache/a$a0;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2170
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "Recursive load of: %s"

    invoke-static {v2, v4, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2173
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/a$a0;->waitForValue()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 2178
    iget-object p2, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object p2, p2, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {p2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v1

    .line 2179
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/common/cache/a$r;->p(Lcom/google/common/cache/f;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    invoke-interface {v0, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2175
    :cond_0
    :try_start_1
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2182
    :goto_0
    invoke-interface {v0, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2183
    throw p1

    .line 2167
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;
    .locals 3

    .line 1987
    invoke-interface {p1}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1992
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v0

    .line 1993
    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1994
    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 1999
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v2, v2, Lcom/google/common/cache/a;->q:Lcom/google/common/cache/a$f;

    invoke-virtual {v2, p0, p1, p2}, Lcom/google/common/cache/a$f;->b(Lcom/google/common/cache/a$r;Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 2000
    iget-object p2, p0, Lcom/google/common/cache/a$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p2, v1, p1}, Lcom/google/common/cache/a$a0;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/f;)Lcom/google/common/cache/a$a0;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V

    return-object p1
.end method

.method public final b()V
    .locals 3

    .line 2475
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->j:Ljava/util/AbstractQueue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    if-eqz v0, :cond_1

    .line 2480
    iget-object v1, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2481
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 15

    .line 2361
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    .line 365
    sget-object v1, Lcom/google/common/cache/a$t;->a:Lcom/google/common/cache/a$t$a;

    .line 365
    iget-object v0, v0, Lcom/google/common/cache/a;->g:Lcom/google/common/cache/a$t;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x10

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2373
    :cond_1
    iget-object v5, p0, Lcom/google/common/cache/a$r;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2375
    check-cast v5, Lcom/google/common/cache/f;

    .line 2376
    iget-object v6, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1706
    invoke-interface {v5}, Lcom/google/common/cache/f;->getHash()I

    move-result v7

    .line 1707
    invoke-virtual {v6, v7}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v8

    .line 3192
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3195
    :try_start_0
    iget-object v6, v8, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3196
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    sub-int/2addr v9, v3

    and-int/2addr v7, v9

    .line 3197
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/cache/f;

    move-object v10, v9

    :goto_1
    if-eqz v10, :cond_2

    if-ne v10, v5, :cond_3

    .line 3201
    iget v5, v8, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr v5, v3

    iput v5, v8, Lcom/google/common/cache/a$r;->d:I

    .line 3206
    invoke-interface {v10}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 3208
    invoke-interface {v10}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v12

    .line 3209
    invoke-interface {v10}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v13

    sget-object v14, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3203
    invoke-virtual/range {v8 .. v14}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object v5

    .line 3211
    iget v9, v8, Lcom/google/common/cache/a$r;->b:I

    sub-int/2addr v9, v3

    .line 3212
    invoke-virtual {v6, v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3213
    iput v9, v8, Lcom/google/common/cache/a$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
    :cond_2
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 3199
    :cond_3
    :try_start_1
    invoke-interface {v10}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    add-int/2addr v0, v3

    if-ne v0, v4, :cond_1

    goto :goto_4

    .line 3220
    :goto_3
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    .line 3222
    throw v0

    .line 2364
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    .line 369
    iget-object v0, v0, Lcom/google/common/cache/a;->h:Lcom/google/common/cache/a$t;

    if-eq v0, v1, :cond_b

    .line 2387
    :cond_5
    iget-object v0, p0, Lcom/google/common/cache/a$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2389
    move-object v10, v0

    check-cast v10, Lcom/google/common/cache/a$a0;

    .line 2390
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1700
    invoke-interface {v10}, Lcom/google/common/cache/a$a0;->getEntry()Lcom/google/common/cache/f;

    move-result-object v1

    .line 1701
    invoke-interface {v1}, Lcom/google/common/cache/f;->getHash()I

    move-result v5

    .line 1702
    invoke-virtual {v0, v5}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v6

    invoke-interface {v1}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3227
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3230
    :try_start_2
    iget-object v1, v6, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3231
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    sub-int/2addr v7, v3

    and-int v12, v5, v7

    .line 3232
    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/cache/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v8, v5

    move-object v5, v6

    move-object v6, v7

    :goto_5
    if-eqz v7, :cond_8

    move v9, v8

    .line 3235
    :try_start_3
    invoke-interface {v7}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 3236
    invoke-interface {v7}, Lcom/google/common/cache/f;->getHash()I

    move-result v11

    if-ne v11, v9, :cond_7

    if-eqz v8, :cond_7

    iget-object v11, v5, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v11, v11, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 3238
    invoke-virtual {v11, v0, v8}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3239
    invoke-interface {v7}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v0

    if-ne v0, v10, :cond_6

    .line 3241
    iget v0, v5, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/google/common/cache/a$r;->d:I

    .line 3248
    invoke-interface {v10}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3243
    invoke-virtual/range {v5 .. v11}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object v0

    .line 3251
    iget v6, v5, Lcom/google/common/cache/a$r;->b:I

    sub-int/2addr v6, v3

    .line 3252
    invoke-virtual {v1, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3253
    iput v6, v5, Lcom/google/common/cache/a$r;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3262
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3263
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3355
    :goto_6
    invoke-virtual {v5}, Lcom/google/common/cache/a$r;->w()V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 3262
    :cond_6
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3263
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    .line 3234
    :cond_7
    :try_start_4
    invoke-interface {v7}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v8, v9

    goto :goto_5

    .line 3262
    :cond_8
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3263
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    :goto_7
    add-int/2addr v2, v3

    if-ne v2, v4, :cond_5

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v5, v6

    .line 3262
    :goto_8
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3263
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3355
    invoke-virtual {v5}, Lcom/google/common/cache/a$r;->w()V

    .line 3266
    :cond_a
    throw v0

    :cond_b
    :goto_9
    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    .locals 4

    .line 2522
    iget-wide v0, p0, Lcom/google/common/cache/a$r;->c:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/a$r;->c:J

    .line 2523
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2524
    iget-object p3, p0, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {p3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2526
    :cond_0
    iget-object p3, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, p3, Lcom/google/common/cache/a;->n:Ljava/util/AbstractQueue;

    sget-object v1, Lcom/google/common/cache/a;->y:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2527
    invoke-static {p1, p2, p4}, Lcom/google/common/cache/RemovalNotification;->create(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/RemovalNotification;

    move-result-object p1

    .line 2528
    iget-object p2, p3, Lcom/google/common/cache/a;->n:Ljava/util/AbstractQueue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final e(Lcom/google/common/cache/f;)V
    .locals 5

    .line 2540
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v0}, Lcom/google/common/cache/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2544
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->b()V

    .line 2548
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/a$r;->g:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 2549
    invoke-interface {p1}, Lcom/google/common/cache/f;->getHash()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/a$r;->s(Lcom/google/common/cache/f;ILcom/google/common/cache/RemovalCause;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2550
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2554
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/google/common/cache/a$r;->c:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    .line 2565
    iget-object p1, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    .line 2566
    invoke-interface {v0}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v1

    if-lez v1, :cond_3

    .line 2556
    invoke-interface {v0}, Lcom/google/common/cache/f;->getHash()I

    move-result p1

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/common/cache/a$r;->s(Lcom/google/common/cache/f;ILcom/google/common/cache/RemovalCause;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 2557
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2571
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public final f()V
    .locals 11

    .line 2763
    iget-object v0, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2764
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 2779
    :cond_0
    iget v2, p0, Lcom/google/common/cache/a$r;->b:I

    shl-int/lit8 v3, v1, 0x1

    .line 1964
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 2781
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/google/common/cache/a$r;->e:I

    .line 2782
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 2786
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/f;

    if-eqz v6, :cond_5

    .line 2789
    invoke-interface {v6}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v7

    .line 2790
    invoke-interface {v6}, Lcom/google/common/cache/f;->getHash()I

    move-result v8

    and-int/2addr v8, v3

    if-nez v7, :cond_1

    .line 2794
    invoke-virtual {v4, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 2802
    invoke-interface {v7}, Lcom/google/common/cache/f;->getHash()I

    move-result v10

    and-int/2addr v10, v3

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 2801
    :cond_2
    invoke-interface {v7}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v7

    goto :goto_1

    .line 2809
    :cond_3
    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 2813
    invoke-interface {v6}, Lcom/google/common/cache/f;->getHash()I

    move-result v7

    and-int/2addr v7, v3

    .line 2814
    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/cache/f;

    .line 2815
    invoke-virtual {p0, v6, v8}, Lcom/google/common/cache/a$r;->a(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2817
    invoke-virtual {v4, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 2819
    :cond_4
    invoke-virtual {p0, v6}, Lcom/google/common/cache/a$r;->r(Lcom/google/common/cache/f;)V

    add-int/lit8 v2, v2, -0x1

    .line 2812
    :goto_3
    invoke-interface {v6}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2826
    :cond_6
    iput-object v4, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2827
    iput v2, p0, Lcom/google/common/cache/a$r;->b:I

    return-void
.end method

.method public final g(J)V
    .locals 4

    .line 2502
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->b()V

    .line 2505
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    iget-object v1, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2506
    invoke-interface {v0}, Lcom/google/common/cache/f;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/a$r;->s(Lcom/google/common/cache/f;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2507
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2510
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2511
    invoke-interface {v0}, Lcom/google/common/cache/f;->getHash()I

    move-result v2

    sget-object v3, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/common/cache/a$r;->s(Lcom/google/common/cache/f;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2512
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method public final h(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10

    .line 2060
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/a$r;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2061
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v7

    .line 2606
    invoke-virtual {p0, p2, p1}, Lcom/google/common/cache/a$r;->j(ILjava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v0, p1, v7, v8}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2490
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 2492
    :try_start_1
    invoke-virtual {p0, v7, v8}, Lcom/google/common/cache/a$r;->g(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    :try_start_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    :goto_0
    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2496
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    move-object v3, p1

    :goto_1
    if-nez v3, :cond_3

    .line 2076
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->m()V

    return-object v1

    .line 2067
    :cond_3
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 2069
    invoke-virtual {p0, v3, v7, v8}, Lcom/google/common/cache/a$r;->p(Lcom/google/common/cache/f;J)V

    .line 2070
    invoke-interface {v3}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v9, p1, Lcom/google/common/cache/a;->s:Lcom/google/common/cache/CacheLoader;

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/a$r;->x(Lcom/google/common/cache/f;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2076
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->m()V

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 2072
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->A()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2076
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->m()V

    return-object v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->m()V

    .line 2077
    throw p1
.end method

.method public final i(Ljava/lang/Object;ILcom/google/common/cache/a$m;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6

    .line 2227
    iget-object v0, p0, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const-string v1, "CacheLoader returned null for key "

    .line 2229
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_0

    .line 2233
    :try_start_1
    invoke-virtual {p3}, Lcom/google/common/cache/a$m;->elapsedNanos()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/a$r;->z(Ljava/lang/Object;ILcom/google/common/cache/a$m;Ljava/lang/Object;)V

    return-object p4

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 2231
    :cond_0
    new-instance v2, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_1
    move-exception v1

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_4

    .line 2238
    invoke-virtual {p3}, Lcom/google/common/cache/a$m;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3270
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3272
    :try_start_2
    iget-object p4, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3273
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p2

    .line 3274
    invoke-virtual {p4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/f;

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    .line 3277
    invoke-interface {v3}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 3278
    invoke-interface {v3}, Lcom/google/common/cache/f;->getHash()I

    move-result v5

    if-ne v5, p2, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v5, v5, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 3280
    invoke-virtual {v5, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3281
    invoke-interface {v3}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p1

    if-ne p1, p3, :cond_2

    .line 3283
    invoke-virtual {p3}, Lcom/google/common/cache/a$m;->isActive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3284
    invoke-virtual {p3}, Lcom/google/common/cache/a$m;->getOldValue()Lcom/google/common/cache/a$a0;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    .line 3286
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/a$r;->t(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 3287
    invoke-virtual {p4, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3297
    :cond_2
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    goto :goto_4

    .line 3276
    :cond_3
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 3297
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    .line 3299
    throw p1

    .line 2241
    :cond_4
    :goto_4
    throw v1
.end method

.method public final j(ILjava/lang/Object;)Lcom/google/common/cache/f;
    .locals 3

    .line 2577
    iget-object v0, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2578
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/f;

    :goto_0
    if-eqz v0, :cond_3

    .line 2586
    invoke-interface {v0}, Lcom/google/common/cache/f;->getHash()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 2590
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2592
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->A()V

    goto :goto_1

    .line 2596
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v2, v2, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p2, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 2585
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(Lcom/google/common/cache/f;J)Ljava/lang/Object;
    .locals 3

    .line 2621
    invoke-interface {p1}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2622
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->A()V

    return-object v1

    .line 2625
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2627
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->A()V

    return-object v1

    .line 2631
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2490
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2492
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/a$r;->g(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2496
    throw p1

    :cond_2
    return-object v1

    :cond_3
    return-object v0
.end method

.method public final l(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 2086
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2089
    :try_start_0
    iget-object v3, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v3, v3, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 3350
    invoke-virtual {v1, v3, v4}, Lcom/google/common/cache/a$r;->v(J)V

    .line 2092
    iget v5, v1, Lcom/google/common/cache/a$r;->b:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 2093
    iget-object v7, v1, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2094
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    sub-int/2addr v8, v6

    and-int/2addr v8, v2

    .line 2095
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/cache/f;

    move-object v10, v9

    :goto_0
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 2098
    invoke-interface {v10}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 2099
    invoke-interface {v10}, Lcom/google/common/cache/f;->getHash()I

    move-result v13

    if-ne v13, v2, :cond_3

    if-eqz v12, :cond_3

    iget-object v13, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v13, v13, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 2101
    invoke-virtual {v13, v0, v12}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2102
    invoke-interface {v10}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v13

    .line 2103
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->isLoading()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v3, 0x0

    goto :goto_3

    .line 2106
    :cond_0
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_1

    .line 2109
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v3

    sget-object v4, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 2108
    invoke-virtual {v1, v12, v14, v3, v4}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 2110
    :cond_1
    iget-object v15, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v15, v10, v3, v4}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 2114
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v3

    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    .line 2113
    invoke-virtual {v1, v12, v14, v3, v4}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 2123
    :goto_1
    iget-object v3, v1, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    invoke-interface {v3, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2124
    iget-object v3, v1, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {v3, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2125
    iput v5, v1, Lcom/google/common/cache/a$r;->b:I

    :goto_2
    const/4 v3, 0x1

    goto :goto_3

    .line 2116
    :cond_2
    invoke-virtual {v1, v10, v3, v4}, Lcom/google/common/cache/a$r;->o(Lcom/google/common/cache/f;J)V

    .line 2117
    iget-object v0, v1, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    return-object v14

    .line 2097
    :cond_3
    :try_start_1
    invoke-interface {v10}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v10

    goto :goto_0

    :cond_4
    move-object v13, v11

    goto :goto_2

    :goto_3
    if-eqz v3, :cond_6

    .line 2132
    new-instance v11, Lcom/google/common/cache/a$m;

    invoke-direct {v11}, Lcom/google/common/cache/a$m;-><init>()V

    if-nez v10, :cond_5

    .line 1978
    iget-object v4, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v4, v4, Lcom/google/common/cache/a;->q:Lcom/google/common/cache/a$f;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v2, v1, v9, v5}, Lcom/google/common/cache/a$f;->d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object v10

    .line 2136
    invoke-interface {v10, v11}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V

    .line 2137
    invoke-virtual {v7, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    .line 2139
    :cond_5
    invoke-interface {v10, v11}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2143
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    if-eqz v3, :cond_7

    .line 2152
    :try_start_2
    monitor-enter v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v3, p3

    .line 2194
    :try_start_3
    invoke-virtual {v11, v0, v3}, Lcom/google/common/cache/a$m;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    .line 2195
    invoke-virtual {v1, v0, v2, v11, v3}, Lcom/google/common/cache/a$r;->i(Ljava/lang/Object;ILcom/google/common/cache/a$m;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 2153
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2156
    iget-object v2, v1, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v0

    :catchall_1
    move-exception v0

    .line 2154
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 2156
    iget-object v2, v1, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2157
    throw v0

    .line 2160
    :cond_7
    invoke-virtual {v1, v10, v0, v13}, Lcom/google/common/cache/a$r;->B(Lcom/google/common/cache/f;Ljava/lang/Object;Lcom/google/common/cache/a$a0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2143
    :goto_5
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    .line 2145
    throw v0
.end method

.method public final m()V
    .locals 2

    .line 3337
    iget-object v0, p0, Lcom/google/common/cache/a$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3359
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3360
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/a$r;->v(J)V

    .line 3361
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    :cond_0
    return-void
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9

    .line 2687
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2689
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v5

    .line 3350
    invoke-virtual {p0, v5, v6}, Lcom/google/common/cache/a$r;->v(J)V

    .line 2692
    iget v0, p0, Lcom/google/common/cache/a$r;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2693
    iget v1, p0, Lcom/google/common/cache/a$r;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-le v0, v1, :cond_0

    .line 2694
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_6

    .line 2698
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2699
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v7, p2, v1

    .line 2700
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v1

    :goto_1
    const/4 v8, 0x0

    if-eqz v2, :cond_5

    .line 2704
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2705
    invoke-interface {v2}, Lcom/google/common/cache/f;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_4

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v4, v4, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 2707
    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2710
    invoke-interface {v2}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p2

    .line 2711
    invoke-interface {p2}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-nez v0, :cond_2

    .line 2714
    :try_start_4
    iget p4, p0, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/google/common/cache/a$r;->d:I

    .line 2715
    invoke-interface {p2}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 2717
    invoke-interface {p2}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result p2

    sget-object p4, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 2716
    invoke-virtual {p0, p1, v0, p2, p4}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 2718
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2719
    iget p1, v1, Lcom/google/common/cache/a$r;->b:I

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v1, p0

    goto :goto_2

    :cond_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    .line 2721
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2722
    iget p1, v1, Lcom/google/common/cache/a$r;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2724
    :goto_3
    iput p1, v1, Lcom/google/common/cache/a$r;->b:I

    .line 2725
    invoke-virtual {p0, v2}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2755
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-object v8

    :cond_2
    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    if-eqz p4, :cond_3

    .line 2731
    :try_start_6
    invoke-virtual {p0, v2, v5, v6}, Lcom/google/common/cache/a$r;->o(Lcom/google/common/cache/f;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2755
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-object v0

    .line 2735
    :cond_3
    :try_start_7
    iget p1, v1, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/google/common/cache/a$r;->d:I

    .line 2737
    invoke-interface {p2}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result p1

    sget-object p2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 2736
    invoke-virtual {p0, v3, v0, p1, p2}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 2738
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    move-object p1, v1

    .line 2739
    :try_start_8
    invoke-virtual {p0, v2}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2755
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-object v0

    :catchall_3
    move-exception v0

    :goto_4
    move-object p2, v0

    move-object v1, p1

    :goto_5
    move-object p1, p2

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object p1, v1

    move-object p2, v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object p1, p0

    goto :goto_4

    :cond_4
    move-object v3, p1

    move-object v4, p3

    move-object p1, p0

    .line 2703
    :try_start_9
    invoke-interface {v2}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object p1, v3

    move-object p3, v4

    goto/16 :goto_1

    :cond_5
    move-object v3, p1

    move-object v4, p3

    move-object p1, p0

    .line 2746
    :try_start_a
    iget p3, p1, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/google/common/cache/a$r;->d:I

    .line 1978
    iget-object p3, p1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object p3, p3, Lcom/google/common/cache/a;->q:Lcom/google/common/cache/a$f;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p0, v1, p4}, Lcom/google/common/cache/a$f;->d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object v1, p1

    .line 2748
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2749
    invoke-virtual {v0, v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2750
    iget p1, v1, Lcom/google/common/cache/a$r;->b:I

    add-int/lit8 p1, p1, 0x1

    .line 2751
    iput p1, v1, Lcom/google/common/cache/a$r;->b:I

    .line 2752
    invoke-virtual {p0, v2}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2755
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-object v8

    :catchall_6
    move-exception v0

    move-object v1, p1

    goto/16 :goto_2

    .line 2755
    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    .line 2757
    throw p1
.end method

.method public final o(Lcom/google/common/cache/f;J)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v0}, Lcom/google/common/cache/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/f;->setAccessTime(J)V

    .line 2443
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final p(Lcom/google/common/cache/f;J)V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v0}, Lcom/google/common/cache/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/f;->setAccessTime(J)V

    .line 2428
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/a$r;->j:Ljava/util/AbstractQueue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final q(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 12

    .line 2295
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2297
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 3350
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/a$r;->v(J)V

    .line 2300
    iget-object v0, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2301
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, p2

    .line 2302
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/cache/f;

    move-object v8, v7

    :goto_0
    const/4 v9, 0x0

    if-eqz v8, :cond_3

    .line 2306
    invoke-interface {v8}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 2307
    invoke-interface {v8}, Lcom/google/common/cache/f;->getHash()I

    move-result v11

    if-ne v11, p2, :cond_2

    if-eqz v10, :cond_2

    iget-object v11, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v11, v11, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 2309
    invoke-virtual {v11, p1, v10}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2312
    invoke-interface {v8}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v0

    .line 2313
    invoke-interface {v0}, Lcom/google/common/cache/a$a0;->isLoading()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p4, :cond_0

    .line 2314
    invoke-interface {v8}, Lcom/google/common/cache/f;->getWriteTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-wide v6, v6, Lcom/google/common/cache/a;->m:J

    cmp-long v10, v4, v6

    if-gez v10, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 2322
    :cond_0
    iget v4, p0, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/cache/a$r;->d:I

    .line 2323
    new-instance v4, Lcom/google/common/cache/a$m;

    invoke-direct {v4, v0}, Lcom/google/common/cache/a$m;-><init>(Lcom/google/common/cache/a$a0;)V

    .line 2325
    invoke-interface {v8, v4}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    goto :goto_3

    .line 2337
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    move-object v4, v9

    goto :goto_3

    .line 2305
    :cond_2
    :try_start_1
    invoke-interface {v8}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v8

    goto :goto_0

    .line 2330
    :cond_3
    iget v4, p0, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/cache/a$r;->d:I

    .line 2331
    new-instance v4, Lcom/google/common/cache/a$m;

    invoke-direct {v4}, Lcom/google/common/cache/a$m;-><init>()V

    .line 1978
    iget-object v5, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v5, v5, Lcom/google/common/cache/a;->q:Lcom/google/common/cache/a$f;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, p2, p0, v7, v8}, Lcom/google/common/cache/a$f;->d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object v5

    .line 2333
    invoke-interface {v5, v4}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V

    .line 2334
    invoke-virtual {v0, v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    if-nez v4, :cond_4

    goto :goto_4

    .line 2203
    :cond_4
    invoke-virtual {v4, p1, p3}, Lcom/google/common/cache/a$m;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 2204
    new-instance v0, Lcom/google/common/cache/b;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/b;-><init>(Lcom/google/common/cache/a$r;Ljava/lang/Object;ILcom/google/common/cache/a$m;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2216
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2204
    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2277
    invoke-interface {v5}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2279
    :try_start_2
    invoke-static {v5}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    :cond_5
    :goto_4
    return-object v9

    .line 2337
    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    .line 2339
    throw v0
.end method

.method public final r(Lcom/google/common/cache/f;)V
    .locals 4

    .line 3181
    invoke-interface {p1}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 3182
    invoke-interface {p1}, Lcom/google/common/cache/f;->getHash()I

    .line 3183
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3184
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v2

    sget-object v3, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3180
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3186
    iget-object v0, p0, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3187
    iget-object v0, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(Lcom/google/common/cache/f;ILcom/google/common/cache/RemovalCause;)Z
    .locals 10

    .line 3306
    iget-object v0, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3307
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 3308
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/common/cache/f;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_1

    if-ne v5, p1, :cond_0

    .line 3312
    iget p1, p0, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/a$r;->d:I

    .line 3317
    invoke-interface {v5}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3319
    invoke-interface {v5}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3320
    invoke-interface {v5}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v8

    move-object v3, p0

    move-object v9, p3

    .line 3314
    invoke-virtual/range {v3 .. v9}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 3322
    iget p3, v3, Lcom/google/common/cache/a$r;->b:I

    sub-int/2addr p3, v2

    .line 3323
    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3324
    iput p3, v3, Lcom/google/common/cache/a$r;->b:I

    return v2

    :cond_0
    move-object v3, p0

    move-object v9, p3

    .line 3310
    invoke-interface {v5}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v3, p0

    const/4 p1, 0x0

    return p1
.end method

.method public final t(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;
    .locals 3

    .line 3163
    iget v0, p0, Lcom/google/common/cache/a$r;->b:I

    .line 3164
    invoke-interface {p2}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 3166
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/a$r;->a(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 3170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$r;->r(Lcom/google/common/cache/f;)V

    add-int/lit8 v0, v0, -0x1

    .line 3165
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object p1

    goto :goto_0

    .line 3174
    :cond_1
    iput v0, p0, Lcom/google/common/cache/a$r;->b:I

    return-object v1
.end method

.method public final u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;
    .locals 1

    .line 3147
    invoke-interface {p5}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v0

    invoke-virtual {p0, p3, p4, v0, p6}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3148
    iget-object p3, p0, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3149
    iget-object p3, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {p3, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3151
    invoke-interface {p5}, Lcom/google/common/cache/a$a0;->isLoading()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3152
    invoke-interface {p5, p2}, Lcom/google/common/cache/a$a0;->notifyNewValue(Ljava/lang/Object;)V

    return-object p1

    .line 3155
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/a$r;->t(Lcom/google/common/cache/f;Lcom/google/common/cache/f;)Lcom/google/common/cache/f;

    move-result-object p1

    return-object p1
.end method

.method public final v(J)V
    .locals 1

    .line 3365
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->c()V

    .line 3368
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/a$r;->g(J)V

    .line 3369
    iget-object p1, p0, Lcom/google/common/cache/a$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3371
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3372
    throw p1

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 4

    .line 3378
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v1, v0, Lcom/google/common/cache/a;->n:Ljava/util/AbstractQueue;

    .line 1806
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/RemovalNotification;

    if-eqz v1, :cond_0

    .line 1808
    :try_start_0
    iget-object v0, v0, Lcom/google/common/cache/a;->o:Lcom/google/common/cache/RemovalListener;

    invoke-interface {v0, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1810
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Exception thrown by removal listener"

    sget-object v3, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Lcom/google/common/cache/f;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-wide v1, v0, Lcom/google/common/cache/a;->m:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 2252
    invoke-interface {p1}, Lcom/google/common/cache/f;->getWriteTime()J

    move-result-wide v1

    sub-long/2addr p5, v1

    iget-wide v0, v0, Lcom/google/common/cache/a;->m:J

    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 2253
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/a$a0;->isLoading()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2254
    invoke-virtual {p0, p2, p3, p7, p1}, Lcom/google/common/cache/a$r;->q(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method public final y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6

    .line 2007
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v2, v1, Lcom/google/common/cache/a;->j:Lcom/google/common/cache/Weigher;

    invoke-interface {v2, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2009
    :goto_0
    const-string v3, "Weights must be non-negative"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2011
    iget-object v2, v1, Lcom/google/common/cache/a;->h:Lcom/google/common/cache/a$t;

    .line 2012
    invoke-virtual {v2, p2, p0, p1, p3}, Lcom/google/common/cache/a$t;->b(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/a$a0;

    move-result-object v2

    .line 2013
    invoke-interface {p1, v2}, Lcom/google/common/cache/f;->setValueReference(Lcom/google/common/cache/a$a0;)V

    .line 2453
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->b()V

    .line 2454
    iget-wide v2, p0, Lcom/google/common/cache/a$r;->c:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/cache/a$r;->c:J

    .line 349
    invoke-virtual {v1}, Lcom/google/common/cache/a;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2457
    invoke-interface {p1, p4, p5}, Lcom/google/common/cache/f;->setAccessTime(J)V

    .line 345
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/cache/a;->d()Z

    move-result p2

    if-nez p2, :cond_2

    .line 333
    iget-wide v1, v1, Lcom/google/common/cache/a;->m:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_3

    .line 2460
    :cond_2
    invoke-interface {p1, p4, p5}, Lcom/google/common/cache/f;->setWriteTime(J)V

    .line 2462
    :cond_3
    iget-object p2, p0, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2463
    iget-object p2, p0, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2015
    invoke-interface {v0, p3}, Lcom/google/common/cache/a$a0;->notifyNewValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;ILcom/google/common/cache/a$m;Ljava/lang/Object;)V
    .locals 9

    .line 3041
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3043
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v5

    .line 3350
    invoke-virtual {p0, v5, v6}, Lcom/google/common/cache/a$r;->v(J)V

    .line 3046
    iget v0, p0, Lcom/google/common/cache/a$r;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 3047
    iget v1, p0, Lcom/google/common/cache/a$r;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-le v0, v1, :cond_0

    .line 3048
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->f()V

    .line 3049
    iget v0, p0, Lcom/google/common/cache/a$r;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto/16 :goto_7

    .line 3052
    :cond_0
    :goto_0
    :try_start_2
    iget-object v7, p0, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3053
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3054
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_6

    .line 3057
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3058
    invoke-interface {v2}, Lcom/google/common/cache/f;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v4, v4, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 3060
    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3061
    invoke-interface {v2}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p2

    .line 3062
    invoke-interface {p2}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eq p3, p2, :cond_2

    if-nez v1, :cond_1

    .line 3065
    :try_start_4
    sget-object v3, Lcom/google/common/cache/a;->x:Lcom/google/common/cache/a$a;

    if-eq p2, v3, :cond_1

    goto :goto_2

    .line 3081
    :cond_1
    sget-object p2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3094
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-void

    .line 3067
    :cond_2
    :goto_2
    :try_start_5
    iget p2, p0, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/cache/a$r;->d:I

    .line 3068
    invoke-virtual {p3}, Lcom/google/common/cache/a$m;->isActive()Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p2, :cond_4

    if-nez v1, :cond_3

    .line 3069
    :try_start_6
    sget-object p2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_3

    :cond_3
    sget-object p2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 3071
    :goto_3
    invoke-virtual {p3}, Lcom/google/common/cache/a$m;->getWeight()I

    move-result p3

    invoke-virtual {p0, p1, v1, p3, p2}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v0, v0, -0x1

    :cond_4
    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    .line 3074
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object p1, v1

    .line 3075
    :try_start_8
    iput v0, p1, Lcom/google/common/cache/a$r;->b:I

    .line 3076
    invoke-virtual {p0, v2}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 3094
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-void

    :catchall_1
    move-exception v0

    :goto_4
    move-object p2, v0

    move-object v1, p1

    :goto_5
    move-object p1, p2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p1, v1

    move-object p2, v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object p1, p0

    goto :goto_4

    :cond_5
    move-object v3, p1

    move-object v4, p4

    move-object p1, p0

    .line 3056
    :try_start_9
    invoke-interface {v2}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object p1, v3

    move-object p4, v4

    goto :goto_1

    :cond_6
    move-object v3, p1

    move-object v4, p4

    move-object p1, p0

    .line 3086
    :try_start_a
    iget p3, p1, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/google/common/cache/a$r;->d:I

    .line 1978
    iget-object p3, p1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object p3, p3, Lcom/google/common/cache/a;->q:Lcom/google/common/cache/a$f;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p2, p0, v1, p4}, Lcom/google/common/cache/a$f;->d(ILcom/google/common/cache/a$r;Lcom/google/common/cache/f;Ljava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object v1, p1

    .line 3088
    :try_start_b
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3089
    invoke-virtual {v7, v8, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3090
    iput v0, v1, Lcom/google/common/cache/a$r;->b:I

    .line 3091
    invoke-virtual {p0, v2}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 3094
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    return-void

    :catchall_4
    move-exception v0

    :goto_6
    move-object p1, v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v1, p1

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v1, p0

    goto :goto_6

    .line 3094
    :goto_7
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/a$r;->w()V

    .line 3096
    throw p1
.end method
