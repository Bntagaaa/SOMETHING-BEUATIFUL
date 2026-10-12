.class Lcom/google/common/collect/m3;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/m3$p;,
        Lcom/google/common/collect/m3$b;,
        Lcom/google/common/collect/m3$n;,
        Lcom/google/common/collect/m3$h;,
        Lcom/google/common/collect/m3$z;,
        Lcom/google/common/collect/m3$m;,
        Lcom/google/common/collect/m3$g;,
        Lcom/google/common/collect/m3$j0;,
        Lcom/google/common/collect/m3$y;,
        Lcom/google/common/collect/m3$l;,
        Lcom/google/common/collect/m3$i;,
        Lcom/google/common/collect/m3$e;,
        Lcom/google/common/collect/m3$b0;,
        Lcom/google/common/collect/m3$f0;,
        Lcom/google/common/collect/m3$d0;,
        Lcom/google/common/collect/m3$s;,
        Lcom/google/common/collect/m3$w;,
        Lcom/google/common/collect/m3$u;,
        Lcom/google/common/collect/m3$o;,
        Lcom/google/common/collect/m3$i0;,
        Lcom/google/common/collect/m3$f;,
        Lcom/google/common/collect/m3$h0;,
        Lcom/google/common/collect/m3$e0;,
        Lcom/google/common/collect/m3$c0;,
        Lcom/google/common/collect/m3$a0;,
        Lcom/google/common/collect/m3$d;,
        Lcom/google/common/collect/m3$r;,
        Lcom/google/common/collect/m3$v;,
        Lcom/google/common/collect/m3$t;,
        Lcom/google/common/collect/m3$g0;,
        Lcom/google/common/collect/m3$x;,
        Lcom/google/common/collect/m3$c;,
        Lcom/google/common/collect/m3$j;,
        Lcom/google/common/collect/m3$k;,
        Lcom/google/common/collect/m3$q;
    }
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
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final j:Lcom/google/common/collect/m3$a;


# instance fields
.field public final transient a:I

.field public final transient b:I

.field public final transient c:[Lcom/google/common/collect/m3$o;

.field public final d:I

.field public final e:Lcom/google/common/base/Equivalence;

.field public final transient f:Lcom/google/common/collect/m3$k;

.field public transient g:Ljava/util/Set;

.field public transient h:Ljava/util/Collection;

.field public transient i:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1006
    new-instance v0, Lcom/google/common/collect/m3$a;

    invoke-direct {v0}, Lcom/google/common/collect/m3$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/m3;->j:Lcom/google/common/collect/m3$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/m3$k;)V
    .locals 5

    .line 161
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 188
    iget v0, p1, Lcom/google/common/collect/MapMaker;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    const/high16 v2, 0x10000

    .line 162
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/m3;->d:I

    .line 129
    iget-object v0, p1, Lcom/google/common/collect/MapMaker;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/m3$q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/m3$q;->a()Lcom/google/common/base/Equivalence;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    .line 164
    iput-object v0, p0, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 165
    iput-object p2, p0, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    .line 154
    iget p1, p1, Lcom/google/common/collect/MapMaker;->b:I

    if-ne p1, v1, :cond_1

    const/16 p1, 0x10

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 167
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    :goto_0
    iget v4, p0, Lcom/google/common/collect/m3;->d:I

    if-ge v2, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    rsub-int/lit8 v3, v3, 0x20

    .line 177
    iput v3, p0, Lcom/google/common/collect/m3;->b:I

    add-int/lit8 v3, v2, -0x1

    .line 178
    iput v3, p0, Lcom/google/common/collect/m3;->a:I

    .line 1132
    new-array v3, v2, [Lcom/google/common/collect/m3$o;

    .line 180
    iput-object v3, p0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    .line 182
    div-int v3, p1, v2

    mul-int v2, v2, v3

    if-ge v2, p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    :goto_1
    if-ge p2, v3, :cond_4

    shl-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 192
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    array-length v2, p1

    if-ge v0, v2, :cond_5

    .line 1116
    iget-object v2, p0, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-interface {v2, p0, p2, v1}, Lcom/google/common/collect/m3$k;->newSegment(Lcom/google/common/collect/m3;II)Lcom/google/common/collect/m3$o;

    move-result-object v2

    .line 193
    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;)Ljava/util/ArrayList;
    .locals 2

    .line 2826
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2827
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 2

    .line 1080
    iget-object v0, p0, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    shl-int/lit8 v0, p1, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method public final c(I)Lcom/google/common/collect/m3$o;
    .locals 1

    .line 1112
    iget v0, p0, Lcom/google/common/collect/m3;->b:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lcom/google/common/collect/m3;->a:I

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public clear()V
    .locals 8

    .line 2474
    iget-object v0, p0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1774
    iget v5, v4, Lcom/google/common/collect/m3$o;->b:I

    if-eqz v5, :cond_1

    .line 1775
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1777
    :try_start_0
    iget-object v5, v4, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v6, 0x0

    .line 1778
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v7, 0x0

    .line 1779
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1781
    :cond_0
    invoke-virtual {v4}, Lcom/google/common/collect/m3$o;->e()V

    .line 1782
    iget-object v5, v4, Lcom/google/common/collect/m3$o;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1784
    iget v5, v4, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/google/common/collect/m3$o;->c:I

    .line 1785
    iput v2, v4, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1788
    throw v0

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2364
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2365
    invoke-virtual {p0, v1}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1437
    :try_start_0
    iget v3, v2, Lcom/google/common/collect/m3$o;->b:I

    if-eqz v3, :cond_2

    .line 1415
    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/m3$o;->d(ILjava/lang/Object;)Lcom/google/common/collect/m3$j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1439
    invoke-interface {p1}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1444
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->g()V

    return v0

    :cond_2
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->g()V

    return v0

    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->g()V

    .line 1445
    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 17
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 2379
    :cond_1
    iget-object v3, v0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    .line 2383
    array-length v7, v3

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_7

    aget-object v11, v3, v10

    .line 2385
    iget v12, v11, Lcom/google/common/collect/m3$o;->b:I

    .line 2387
    iget-object v12, v11, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v13, 0x0

    .line 2388
    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 2389
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/common/collect/m3$j;

    :goto_3
    if-eqz v14, :cond_5

    .line 1950
    invoke-interface {v14}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    if-nez v15, :cond_2

    .line 1951
    invoke-virtual {v11}, Lcom/google/common/collect/m3$o;->m()V

    :goto_4
    move-object/from16 v15, v16

    goto :goto_5

    .line 1954
    :cond_2
    invoke-interface {v14}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_3

    .line 1956
    invoke-virtual {v11}, Lcom/google/common/collect/m3$o;->m()V

    goto :goto_4

    :cond_3
    :goto_5
    const/16 v16, 0x0

    if-eqz v15, :cond_4

    .line 2293
    iget-object v2, v0, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    invoke-interface {v2}, Lcom/google/common/collect/m3$k;->valueStrength()Lcom/google/common/collect/m3$q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/m3$q;->a()Lcom/google/common/base/Equivalence;

    move-result-object v2

    .line 2391
    invoke-virtual {v2, v1, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    return v1

    .line 2389
    :cond_4
    invoke-interface {v14}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v14

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    .line 2396
    iget v2, v11, Lcom/google/common/collect/m3$o;->c:I

    int-to-long v11, v2

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/16 v16, 0x0

    cmp-long v2, v8, v4

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v8

    goto :goto_0

    :goto_6
    return v16
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2499
    iget-object v0, p0, Lcom/google/common/collect/m3;->i:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2500
    :cond_0
    new-instance v0, Lcom/google/common/collect/m3$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m3$h;-><init>(Lcom/google/common/collect/m3;)V

    iput-object v0, p0, Lcom/google/common/collect/m3;->i:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2343
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2344
    invoke-virtual {p0, v1}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1415
    :try_start_0
    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/m3$o;->d(ILjava/lang/Object;)Lcom/google/common/collect/m3$j;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 1431
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->g()V

    return-object v0

    .line 1425
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1427
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1431
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->g()V

    return-object p1

    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->g()V

    .line 1432
    throw p1
.end method

.method public isEmpty()Z
    .locals 10

    .line 2308
    iget-object v0, p0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2309
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 2310
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/m3$o;->b:I

    if-eqz v7, :cond_0

    return v3

    .line 2313
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/m3$o;->c:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    .line 2317
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 2318
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/collect/m3$o;->b:I

    if-eqz v8, :cond_2

    return v3

    .line 2321
    :cond_2
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/collect/m3$o;->c:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    return v4

    :cond_4
    return v3

    :cond_5
    return v4
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

    .line 2483
    iget-object v0, p0, Lcom/google/common/collect/m3;->g:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 2484
    :cond_0
    new-instance v0, Lcom/google/common/collect/m3$m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m3$m;-><init>(Lcom/google/common/collect/m3;)V

    iput-object v0, p0, Lcom/google/common/collect/m3;->g:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2409
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2410
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v0

    .line 2412
    invoke-virtual {p0, v0}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/m3$o;->h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 2426
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2427
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/m3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2418
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2419
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2420
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v0

    .line 2421
    invoke-virtual {p0, v0}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/m3$o;->h(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2438
    invoke-virtual {p0, v1}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    .line 1693
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1980
    :try_start_0
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->j()V

    .line 1698
    iget-object v3, v2, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1699
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v1

    .line 1700
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/collect/m3$j;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_4

    .line 1703
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 1704
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v8

    if-ne v8, v1, :cond_3

    if-eqz v7, :cond_3

    iget-object v8, v2, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v8, v8, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 1706
    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1707
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 1941
    :cond_1
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1717
    :goto_1
    iget v0, v2, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/google/common/collect/m3$o;->c:I

    .line 1718
    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/m3$o;->i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object v0

    .line 1719
    iget v1, v2, Lcom/google/common/collect/m3$o;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 1720
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1721
    iput v1, v2, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 1702
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1728
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1729
    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2448
    invoke-virtual {p0, v1}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    .line 1733
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1980
    :try_start_0
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->j()V

    .line 1738
    iget-object v3, v2, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1739
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v4, v1

    .line 1740
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/m3$j;

    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_4

    .line 1743
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 1744
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v9

    if-ne v9, v1, :cond_3

    if-eqz v8, :cond_3

    iget-object v9, v2, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v9, v9, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 1746
    invoke-virtual {v9, p1, v8}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1747
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 1750
    iget-object v1, v2, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    .line 2293
    iget-object v1, v1, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    .line 2293
    invoke-interface {v1}, Lcom/google/common/collect/m3$k;->valueStrength()Lcom/google/common/collect/m3$q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/m3$q;->a()Lcom/google/common/base/Equivalence;

    move-result-object v1

    .line 1750
    invoke-virtual {v1, p2, p1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 1941
    :cond_1
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1758
    :goto_1
    iget p1, v2, Lcom/google/common/collect/m3$o;->c:I

    add-int/2addr p1, v5

    iput p1, v2, Lcom/google/common/collect/m3$o;->c:I

    .line 1759
    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/m3$o;->i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object p1

    .line 1760
    iget p2, v2, Lcom/google/common/collect/m3$o;->b:I

    sub-int/2addr p2, v5

    .line 1761
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1762
    iput p2, v2, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 1742
    :cond_3
    :try_start_1
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1769
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1770
    throw p1

    :cond_5
    :goto_3
    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2466
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v0

    .line 2469
    invoke-virtual {p0, v0}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v1

    .line 1651
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1980
    :try_start_0
    invoke-virtual {v1}, Lcom/google/common/collect/m3$o;->j()V

    .line 1655
    iget-object v2, v1, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1656
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    .line 1657
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/m3$j;

    move-object v5, v4

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 1660
    invoke-interface {v5}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 1661
    invoke-interface {v5}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v8

    if-ne v8, v0, :cond_2

    if-eqz v7, :cond_2

    iget-object v8, v1, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v8, v8, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 1663
    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1666
    invoke-interface {v5}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1941
    invoke-interface {v5}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1670
    iget p1, v1, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/google/common/collect/m3$o;->c:I

    .line 1671
    invoke-virtual {v1, v4, v5}, Lcom/google/common/collect/m3$o;->i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object p1

    .line 1672
    iget p2, v1, Lcom/google/common/collect/m3$o;->b:I

    add-int/lit8 p2, p2, -0x1

    .line 1673
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1674
    iput p2, v1, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1687
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    .line 1679
    :cond_1
    :try_start_1
    iget v0, v1, Lcom/google/common/collect/m3$o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/google/common/collect/m3$o;->c:I

    .line 1680
    invoke-virtual {v1, v5, p2}, Lcom/google/common/collect/m3$o;->l(Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1659
    :cond_2
    :try_start_2
    invoke-interface {v5}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1687
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v6

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1688
    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 2454
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2459
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/m3;->b(Ljava/lang/Object;)I

    move-result v1

    .line 2460
    invoke-virtual {p0, v1}, Lcom/google/common/collect/m3;->c(I)Lcom/google/common/collect/m3$o;

    move-result-object v2

    .line 1604
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1980
    :try_start_0
    invoke-virtual {v2}, Lcom/google/common/collect/m3$o;->j()V

    .line 1608
    iget-object v3, v2, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1609
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    and-int/2addr v4, v1

    .line 1610
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/m3$j;

    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_5

    .line 1613
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 1614
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getHash()I

    move-result v9

    if-ne v9, v1, :cond_4

    if-eqz v8, :cond_4

    iget-object v9, v2, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    iget-object v9, v9, Lcom/google/common/collect/m3;->e:Lcom/google/common/base/Equivalence;

    .line 1616
    invoke-virtual {v9, p1, v8}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1619
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1941
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1623
    iget p1, v2, Lcom/google/common/collect/m3$o;->c:I

    add-int/2addr p1, v5

    iput p1, v2, Lcom/google/common/collect/m3$o;->c:I

    .line 1624
    invoke-virtual {v2, v6, v7}, Lcom/google/common/collect/m3$o;->i(Lcom/google/common/collect/m3$j;Lcom/google/common/collect/m3$j;)Lcom/google/common/collect/m3$j;

    move-result-object p1

    .line 1625
    iget p2, v2, Lcom/google/common/collect/m3$o;->b:I

    sub-int/2addr p2, v5

    .line 1626
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1627
    iput p2, v2, Lcom/google/common/collect/m3$o;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1646
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 1632
    :cond_2
    :try_start_1
    iget-object v1, v2, Lcom/google/common/collect/m3$o;->a:Lcom/google/common/collect/m3;

    .line 2293
    iget-object v1, v1, Lcom/google/common/collect/m3;->f:Lcom/google/common/collect/m3$k;

    .line 2293
    invoke-interface {v1}, Lcom/google/common/collect/m3$k;->valueStrength()Lcom/google/common/collect/m3$q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/m3$q;->a()Lcom/google/common/base/Equivalence;

    move-result-object v1

    .line 1632
    invoke-virtual {v1, p2, p1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1633
    iget p1, v2, Lcom/google/common/collect/m3$o;->c:I

    add-int/2addr p1, v5

    iput p1, v2, Lcom/google/common/collect/m3$o;->c:I

    .line 1634
    invoke-virtual {v2, v7, p3}, Lcom/google/common/collect/m3$o;->l(Lcom/google/common/collect/m3$j;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1646
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    .line 1612
    :cond_4
    :try_start_2
    invoke-interface {v7}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1646
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1647
    throw p1
.end method

.method public size()I
    .locals 6

    .line 2330
    iget-object v0, p0, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2332
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 2333
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/common/collect/m3$o;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2335
    :cond_0
    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2491
    iget-object v0, p0, Lcom/google/common/collect/m3;->h:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    .line 2492
    :cond_0
    new-instance v0, Lcom/google/common/collect/m3$z;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m3$z;-><init>(Lcom/google/common/collect/m3;)V

    iput-object v0, p0, Lcom/google/common/collect/m3;->h:Ljava/util/Collection;

    return-object v0
.end method
