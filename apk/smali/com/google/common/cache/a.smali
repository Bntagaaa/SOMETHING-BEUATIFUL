.class Lcom/google/common/cache/a;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/a$n;,
        Lcom/google/common/cache/a$o;,
        Lcom/google/common/cache/a$l;,
        Lcom/google/common/cache/a$p;,
        Lcom/google/common/cache/a$h;,
        Lcom/google/common/cache/a$b0;,
        Lcom/google/common/cache/a$k;,
        Lcom/google/common/cache/a$c;,
        Lcom/google/common/cache/a$g;,
        Lcom/google/common/cache/a$l0;,
        Lcom/google/common/cache/a$z;,
        Lcom/google/common/cache/a$j;,
        Lcom/google/common/cache/a$i;,
        Lcom/google/common/cache/a$e;,
        Lcom/google/common/cache/a$k0;,
        Lcom/google/common/cache/a$m;,
        Lcom/google/common/cache/a$r;,
        Lcom/google/common/cache/a$i0;,
        Lcom/google/common/cache/a$h0;,
        Lcom/google/common/cache/a$j0;,
        Lcom/google/common/cache/a$x;,
        Lcom/google/common/cache/a$s;,
        Lcom/google/common/cache/a$f0;,
        Lcom/google/common/cache/a$d0;,
        Lcom/google/common/cache/a$g0;,
        Lcom/google/common/cache/a$c0;,
        Lcom/google/common/cache/a$e0;,
        Lcom/google/common/cache/a$v;,
        Lcom/google/common/cache/a$y;,
        Lcom/google/common/cache/a$u;,
        Lcom/google/common/cache/a$w;,
        Lcom/google/common/cache/a$d;,
        Lcom/google/common/cache/a$q;,
        Lcom/google/common/cache/a$a0;,
        Lcom/google/common/cache/a$f;,
        Lcom/google/common/cache/a$t;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final w:Ljava/util/logging/Logger;

.field public static final x:Lcom/google/common/cache/a$a;

.field public static final y:Ljava/util/Queue;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Lcom/google/common/cache/a$r;

.field public final d:I

.field public final e:Lcom/google/common/base/Equivalence;

.field public final f:Lcom/google/common/base/Equivalence;

.field public final g:Lcom/google/common/cache/a$t;

.field public final h:Lcom/google/common/cache/a$t;

.field public final i:J

.field public final j:Lcom/google/common/cache/Weigher;

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:Ljava/util/AbstractQueue;

.field public final o:Lcom/google/common/cache/RemovalListener;

.field public final p:Lcom/google/common/base/Ticker;

.field public final q:Lcom/google/common/cache/a$f;

.field public final r:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field public final s:Lcom/google/common/cache/CacheLoader;

.field public t:Ljava/util/Set;

.field public u:Ljava/util/Collection;

.field public v:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-class v0, Lcom/google/common/cache/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 676
    new-instance v0, Lcom/google/common/cache/a$a;

    invoke-direct {v0}, Lcom/google/common/cache/a$a;-><init>()V

    sput-object v0, Lcom/google/common/cache/a;->x:Lcom/google/common/cache/a$a;

    .line 893
    new-instance v0, Lcom/google/common/cache/a$b;

    invoke-direct {v0}, Lcom/google/common/cache/a$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/a;->y:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 236
    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    .line 410
    iget v0, v6, Lcom/google/common/cache/CacheBuilder;->c:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x4

    :cond_0
    const/high16 v4, 0x10000

    .line 237
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Lcom/google/common/cache/a;->d:I

    .line 575
    iget-object v0, v6, Lcom/google/common/cache/CacheBuilder;->g:Lcom/google/common/cache/a$t;

    sget-object v4, Lcom/google/common/cache/a$t;->a:Lcom/google/common/cache/a$t$a;

    invoke-static {v0, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/a$t;

    .line 239
    iput-object v0, v1, Lcom/google/common/cache/a;->g:Lcom/google/common/cache/a$t;

    .line 632
    iget-object v5, v6, Lcom/google/common/cache/CacheBuilder;->h:Lcom/google/common/cache/a$t;

    invoke-static {v5, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/a$t;

    .line 240
    iput-object v5, v1, Lcom/google/common/cache/a;->h:Lcom/google/common/cache/a$t;

    .line 575
    iget-object v5, v6, Lcom/google/common/cache/CacheBuilder;->g:Lcom/google/common/cache/a$t;

    invoke-static {v5, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/a$t;

    .line 319
    invoke-virtual {v5}, Lcom/google/common/cache/a$t;->a()Lcom/google/common/base/Equivalence;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7, v5}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/base/Equivalence;

    .line 242
    iput-object v5, v1, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 632
    iget-object v5, v6, Lcom/google/common/cache/CacheBuilder;->h:Lcom/google/common/cache/a$t;

    invoke-static {v5, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/a$t;

    .line 340
    invoke-virtual {v4}, Lcom/google/common/cache/a$t;->a()Lcom/google/common/base/Equivalence;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/base/Equivalence;

    .line 243
    iput-object v4, v1, Lcom/google/common/cache/a;->f:Lcom/google/common/base/Equivalence;

    .line 535
    iget-wide v4, v6, Lcom/google/common/cache/CacheBuilder;->i:J

    const-wide/16 v7, 0x0

    cmp-long v9, v4, v7

    if-eqz v9, :cond_3

    iget-wide v4, v6, Lcom/google/common/cache/CacheBuilder;->j:J

    cmp-long v9, v4, v7

    if-nez v9, :cond_1

    goto :goto_0

    .line 538
    :cond_1
    iget-object v4, v6, Lcom/google/common/cache/CacheBuilder;->f:Lcom/google/common/cache/Weigher;

    if-nez v4, :cond_2

    iget-wide v4, v6, Lcom/google/common/cache/CacheBuilder;->d:J

    goto :goto_1

    :cond_2
    iget-wide v4, v6, Lcom/google/common/cache/CacheBuilder;->e:J

    goto :goto_1

    :cond_3
    :goto_0
    move-wide v4, v7

    .line 245
    :goto_1
    iput-wide v4, v1, Lcom/google/common/cache/a;->i:J

    .line 544
    iget-object v9, v6, Lcom/google/common/cache/CacheBuilder;->f:Lcom/google/common/cache/Weigher;

    sget-object v10, Lcom/google/common/cache/CacheBuilder$e;->a:Lcom/google/common/cache/CacheBuilder$e;

    invoke-static {v9, v10}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/cache/Weigher;

    .line 246
    iput-object v9, v1, Lcom/google/common/cache/a;->j:Lcom/google/common/cache/Weigher;

    .line 707
    iget-wide v11, v6, Lcom/google/common/cache/CacheBuilder;->j:J

    const-wide/16 v13, -0x1

    cmp-long v15, v11, v13

    if-nez v15, :cond_4

    move-wide v11, v7

    .line 247
    :cond_4
    iput-wide v11, v1, Lcom/google/common/cache/a;->k:J

    .line 667
    iget-wide v11, v6, Lcom/google/common/cache/CacheBuilder;->i:J

    cmp-long v15, v11, v13

    if-nez v15, :cond_5

    move-wide v11, v7

    .line 248
    :cond_5
    iput-wide v11, v1, Lcom/google/common/cache/a;->l:J

    .line 750
    iget-wide v11, v6, Lcom/google/common/cache/CacheBuilder;->k:J

    cmp-long v15, v11, v13

    if-nez v15, :cond_6

    move-wide v11, v7

    .line 249
    :cond_6
    iput-wide v11, v1, Lcom/google/common/cache/a;->m:J

    .line 812
    iget-object v13, v6, Lcom/google/common/cache/CacheBuilder;->l:Lcom/google/common/cache/RemovalListener;

    sget-object v14, Lcom/google/common/cache/CacheBuilder$d;->a:Lcom/google/common/cache/CacheBuilder$d;

    .line 813
    invoke-static {v13, v14}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/common/cache/RemovalListener;

    .line 251
    iput-object v13, v1, Lcom/google/common/cache/a;->o:Lcom/google/common/cache/RemovalListener;

    if-ne v13, v14, :cond_7

    .line 924
    sget-object v13, Lcom/google/common/cache/a;->y:Ljava/util/Queue;

    goto :goto_2

    .line 254
    :cond_7
    new-instance v13, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v13}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_2
    check-cast v13, Ljava/util/AbstractQueue;

    iput-object v13, v1, Lcom/google/common/cache/a;->n:Ljava/util/AbstractQueue;

    .line 345
    invoke-virtual {v1}, Lcom/google/common/cache/a;->d()Z

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-nez v13, :cond_9

    cmp-long v13, v11, v7

    if-lez v13, :cond_8

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v13, 0x1

    :goto_4
    if-nez v13, :cond_b

    .line 349
    invoke-virtual {v1}, Lcom/google/common/cache/a;->c()Z

    move-result v13

    if-eqz v13, :cond_a

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v13, 0x1

    .line 770
    :goto_6
    iget-object v2, v6, Lcom/google/common/cache/CacheBuilder;->m:Lcom/google/common/base/Ticker;

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v13, :cond_d

    .line 773
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v2

    goto :goto_7

    :cond_d
    sget-object v2, Lcom/google/common/cache/CacheBuilder;->r:Lcom/google/common/base/Ticker;

    .line 257
    :goto_7
    iput-object v2, v1, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    .line 337
    invoke-virtual {v1}, Lcom/google/common/cache/a;->c()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1}, Lcom/google/common/cache/a;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_8

    .line 349
    :cond_e
    invoke-virtual {v1}, Lcom/google/common/cache/a;->c()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v2, 0x1

    .line 341
    :goto_9
    invoke-virtual {v1}, Lcom/google/common/cache/a;->d()Z

    move-result v13

    if-nez v13, :cond_12

    .line 345
    invoke-virtual {v1}, Lcom/google/common/cache/a;->d()Z

    move-result v13

    if-nez v13, :cond_12

    cmp-long v13, v11, v7

    if-lez v13, :cond_11

    goto :goto_a

    :cond_11
    const/4 v7, 0x0

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v7, 0x1

    .line 564
    :goto_b
    sget-object v8, Lcom/google/common/cache/a$t;->c:Lcom/google/common/cache/a$t$c;

    if-ne v0, v8, :cond_13

    const/16 v16, 0x4

    goto :goto_c

    :cond_13
    const/16 v16, 0x0

    :goto_c
    or-int v0, v16, v2

    if-eqz v7, :cond_14

    const/4 v2, 0x2

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    :goto_d
    or-int/2addr v0, v2

    .line 568
    sget-object v2, Lcom/google/common/cache/a$f;->a:[Lcom/google/common/cache/a$f;

    aget-object v0, v2, v0

    .line 258
    iput-object v0, v1, Lcom/google/common/cache/a;->q:Lcom/google/common/cache/a$f;

    .line 835
    iget-object v0, v6, Lcom/google/common/cache/CacheBuilder;->n:Lcom/google/common/base/Supplier;

    .line 259
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, v1, Lcom/google/common/cache/a;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    move-object/from16 v0, p2

    .line 260
    iput-object v0, v1, Lcom/google/common/cache/a;->s:Lcom/google/common/cache/CacheLoader;

    .line 365
    iget v0, v6, Lcom/google/common/cache/CacheBuilder;->b:I

    if-ne v0, v3, :cond_15

    const/16 v0, 0x10

    :cond_15
    const/high16 v2, 0x40000000    # 2.0f

    .line 262
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 263
    invoke-virtual {v1}, Lcom/google/common/cache/a;->b()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eq v9, v10, :cond_16

    goto :goto_e

    :cond_16
    int-to-long v2, v0

    .line 264
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    :cond_17
    :goto_e
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    :goto_f
    iget v4, v1, Lcom/google/common/cache/a;->d:I

    if-ge v2, v4, :cond_19

    invoke-virtual {v1}, Lcom/google/common/cache/a;->b()Z

    move-result v4

    if-eqz v4, :cond_18

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    iget-wide v7, v1, Lcom/google/common/cache/a;->i:J

    cmp-long v9, v4, v7

    if-gtz v9, :cond_19

    :cond_18
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_19
    rsub-int/lit8 v3, v3, 0x20

    .line 278
    iput v3, v1, Lcom/google/common/cache/a;->b:I

    add-int/lit8 v3, v2, -0x1

    .line 279
    iput v3, v1, Lcom/google/common/cache/a;->a:I

    .line 1817
    new-array v3, v2, [Lcom/google/common/cache/a$r;

    .line 281
    iput-object v3, v1, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    .line 283
    div-int v3, v0, v2

    mul-int v4, v3, v2

    if-ge v4, v0, :cond_1a

    add-int/lit8 v3, v3, 0x1

    :cond_1a
    :goto_10
    if-ge v15, v3, :cond_1b

    shl-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 293
    :cond_1b
    invoke-virtual {v1}, Lcom/google/common/cache/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 295
    iget-wide v3, v1, Lcom/google/common/cache/a;->i:J

    int-to-long v7, v2

    div-long v9, v3, v7

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    .line 296
    rem-long v7, v3, v7

    .line 297
    :goto_11
    iget-object v13, v1, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    array-length v0, v13

    if-ge v14, v0, :cond_1e

    int-to-long v2, v14

    cmp-long v0, v2, v7

    if-nez v0, :cond_1c

    sub-long/2addr v9, v11

    :cond_1c
    move-wide v3, v9

    .line 835
    iget-object v0, v6, Lcom/google/common/cache/CacheBuilder;->n:Lcom/google/common/base/Supplier;

    .line 302
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 1732
    new-instance v0, Lcom/google/common/cache/a$r;

    move v2, v15

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/a$r;-><init>(Lcom/google/common/cache/a;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 302
    aput-object v0, v13, v14

    add-int/lit8 v14, v14, 0x1

    move v15, v2

    move-wide v9, v3

    goto :goto_11

    :cond_1d
    move v2, v15

    .line 305
    :goto_12
    iget-object v7, v1, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    array-length v0, v7

    if-ge v14, v0, :cond_1e

    .line 835
    iget-object v0, v6, Lcom/google/common/cache/CacheBuilder;->n:Lcom/google/common/base/Supplier;

    .line 307
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 1732
    new-instance v0, Lcom/google/common/cache/a$r;

    const-wide/16 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/a$r;-><init>(Lcom/google/common/cache/a;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 307
    aput-object v0, v7, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    goto :goto_12

    :cond_1e
    return-void
.end method

.method public static a(Ljava/util/AbstractCollection;)Ljava/util/ArrayList;
    .locals 2

    .line 4402
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4403
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 5

    .line 313
    iget-wide v0, p0, Lcom/google/common/cache/a;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 5

    .line 329
    iget-wide v0, p0, Lcom/google/common/cache/a;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cleanUp()V
    .locals 6

    .line 3786
    iget-object v0, p0, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3359
    iget-object v4, v3, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    .line 3359
    iget-object v4, v4, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 3360
    invoke-virtual {v3, v4, v5}, Lcom/google/common/cache/a$r;->v(J)V

    .line 3361
    invoke-virtual {v3}, Lcom/google/common/cache/a$r;->w()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 12

    .line 4137
    iget-object v0, p0, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_b

    aget-object v4, v0, v3

    .line 3100
    iget v5, v4, Lcom/google/common/cache/a$r;->b:I

    if-eqz v5, :cond_a

    .line 3101
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3103
    :try_start_0
    iget-object v5, v4, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v5, v5, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v5}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v5

    .line 3350
    invoke-virtual {v4, v5, v6}, Lcom/google/common/cache/a$r;->v(J)V

    .line 3106
    iget-object v5, v4, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v6, 0x0

    .line 3107
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 3108
    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/cache/f;

    :goto_2
    if-eqz v7, :cond_3

    .line 3110
    invoke-interface {v7}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3111
    invoke-interface {v7}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 3112
    invoke-interface {v7}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v8, :cond_1

    if-nez v9, :cond_0

    goto :goto_3

    .line 3113
    :cond_0
    sget-object v10, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    :goto_3
    sget-object v10, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3116
    :goto_4
    invoke-interface {v7}, Lcom/google/common/cache/f;->getHash()I

    invoke-interface {v7}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v11

    .line 3115
    invoke-virtual {v4, v8, v9, v11, v10}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3108
    :cond_2
    invoke-interface {v7}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v7

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 3120
    :goto_5
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    const/4 v7, 0x0

    .line 3121
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2399
    :cond_5
    iget-object v5, v4, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    sget-object v6, Lcom/google/common/cache/a$t;->a:Lcom/google/common/cache/a$t$a;

    .line 365
    :try_start_1
    iget-object v7, v5, Lcom/google/common/cache/a;->g:Lcom/google/common/cache/a$t;

    const/4 v8, 0x1

    if-eq v7, v6, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_7

    .line 2408
    :goto_7
    iget-object v7, v4, Lcom/google/common/cache/a$r;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v7

    if-eqz v7, :cond_7

    goto :goto_7

    .line 369
    :cond_7
    iget-object v5, v5, Lcom/google/common/cache/a;->h:Lcom/google/common/cache/a$t;

    if-eq v5, v6, :cond_8

    const/4 v5, 0x1

    goto :goto_8

    :cond_8
    const/4 v5, 0x0

    :goto_8
    if-eqz v5, :cond_9

    .line 2412
    :goto_9
    iget-object v5, v4, Lcom/google/common/cache/a$r;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    if-eqz v5, :cond_9

    goto :goto_9

    .line 3124
    :cond_9
    iget-object v5, v4, Lcom/google/common/cache/a$r;->l:Ljava/util/AbstractQueue;

    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    .line 3125
    iget-object v5, v4, Lcom/google/common/cache/a$r;->m:Ljava/util/AbstractQueue;

    invoke-interface {v5}, Ljava/util/Collection;->clear()V

    .line 3126
    iget-object v5, v4, Lcom/google/common/cache/a$r;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3128
    iget v5, v4, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr v5, v8

    iput v5, v4, Lcom/google/common/cache/a$r;->d:I

    .line 3129
    iput v2, v4, Lcom/google/common/cache/a$r;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3131
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v4}, Lcom/google/common/cache/a$r;->w()V

    goto :goto_b

    .line 3131
    :goto_a
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v4}, Lcom/google/common/cache/a$r;->w()V

    .line 3133
    throw v0

    :cond_a
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4031
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v1

    .line 4032
    invoke-virtual {p0, v1}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2640
    :try_start_0
    iget v3, v2, Lcom/google/common/cache/a$r;->b:I

    if-eqz v3, :cond_6

    .line 2641
    iget-object v3, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v3, v3, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 2606
    invoke-virtual {v2, v1, p1}, Lcom/google/common/cache/a$r;->j(ILjava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    .line 2609
    :cond_1
    iget-object v5, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    invoke-virtual {v5, p1, v3, v4}, Lcom/google/common/cache/a;->g(Lcom/google/common/cache/f;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2490
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 2492
    :try_start_1
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/a$r;->g(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    :try_start_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    :goto_0
    move-object p1, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2496
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 2651
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->m()V

    return v0

    .line 2646
    :cond_4
    :try_start_3
    invoke-interface {p1}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    .line 2651
    :cond_5
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->m()V

    return v0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->m()V

    return v0

    :goto_2
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->m()V

    .line 2652
    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 4047
    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 4048
    iget-object v5, v0, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    .line 4052
    array-length v9, v5

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v9, :cond_4

    aget-object v13, v5, v12

    .line 4054
    iget v14, v13, Lcom/google/common/cache/a$r;->b:I

    .line 4056
    iget-object v14, v13, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 4057
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 4058
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/f;

    :goto_3
    if-eqz v2, :cond_2

    move-object/from16 v17, v5

    .line 4059
    invoke-virtual {v13, v2, v3, v4}, Lcom/google/common/cache/a$r;->k(Lcom/google/common/cache/f;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v2

    if-eqz v5, :cond_1

    .line 4060
    iget-object v2, v0, Lcom/google/common/cache/a;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, v1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 4058
    :cond_1
    invoke-interface/range {v18 .. v18}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v2

    move-object/from16 v5, v17

    goto :goto_3

    :cond_2
    move-object/from16 v17, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v17, v5

    .line 4065
    iget v2, v13, Lcom/google/common/cache/a$r;->d:I

    int-to-long v13, v2

    add-long/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v17, v5

    const/16 v16, 0x0

    cmp-long v2, v10, v6

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v10

    move-object/from16 v5, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    const/16 v16, 0x0

    :goto_4
    return v16
.end method

.method public final d()Z
    .locals 5

    .line 325
    iget-wide v0, p0, Lcom/google/common/cache/a;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 9

    .line 3848
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v4

    .line 3849
    invoke-virtual {p0, v4}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2021
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2024
    :try_start_0
    iget v0, v1, Lcom/google/common/cache/a$r;->b:I

    if-eqz v0, :cond_1

    .line 2026
    invoke-virtual {v1, v4, p1}, Lcom/google/common/cache/a$r;->j(ILjava/lang/Object;)Lcom/google/common/cache/f;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2028
    iget-object v0, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v0, v0, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2029
    invoke-virtual {v1, v2, v6, v7}, Lcom/google/common/cache/a$r;->k(Lcom/google/common/cache/f;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2031
    invoke-virtual {v1, v2, v6, v7}, Lcom/google/common/cache/a$r;->p(Lcom/google/common/cache/f;J)V

    .line 2032
    iget-object v0, v1, Lcom/google/common/cache/a$r;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v3, p1

    move-object v8, p2

    .line 2033
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/a$r;->x(Lcom/google/common/cache/f;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2053
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->m()V

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    move-object v8, p2

    .line 2035
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object p1

    .line 2036
    invoke-interface {p1}, Lcom/google/common/cache/a$a0;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2037
    invoke-virtual {v1, v2, v3, p1}, Lcom/google/common/cache/a$r;->B(Lcom/google/common/cache/f;Ljava/lang/Object;Lcom/google/common/cache/a$a0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2053
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->m()V

    return-object p1

    :cond_1
    move-object v3, p1

    move-object v8, p2

    .line 2043
    :cond_2
    :try_start_2
    invoke-virtual {v1, v3, v4, v8}, Lcom/google/common/cache/a$r;->l(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2053
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->m()V

    return-object p1

    .line 2045
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 2046
    instance-of v0, p2, Ljava/lang/Error;

    if-nez v0, :cond_4

    .line 2048
    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 2049
    new-instance p1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2051
    :cond_3
    throw p1

    .line 2047
    :cond_4
    new-instance p1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast p2, Ljava/lang/Error;

    invoke-direct {p1, p2}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2053
    :goto_1
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->m()V

    .line 2054
    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4173
    iget-object v0, p0, Lcom/google/common/cache/a;->v:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 4174
    :cond_0
    new-instance v0, Lcom/google/common/cache/a$h;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/a$h;-><init>(Lcom/google/common/cache/a;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/a;->v:Ljava/util/Set;

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 2

    .line 1695
    iget-object v0, p0, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

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

.method public final g(Lcom/google/common/cache/f;J)Z
    .locals 6

    .line 1761
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    invoke-virtual {p0}, Lcom/google/common/cache/a;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/f;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/a;->k:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    return v1

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/f;->getWriteTime()J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget-wide v2, p0, Lcom/google/common/cache/a;->l:J

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v0

    .line 3844
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/a$r;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3854
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v0

    .line 3855
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/a$r;->h(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    .line 3856
    iget-object v1, p0, Lcom/google/common/cache/a;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    if-nez p1, :cond_0

    .line 3857
    invoke-interface {v1, v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object p1

    .line 3859
    :cond_0
    invoke-interface {v1, v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3868
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final h(Ljava/util/LinkedHashSet;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 7

    .line 3950
    iget-object v0, p0, Lcom/google/common/cache/a;->r:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3951
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3952
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3957
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 3983
    invoke-virtual {v1}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 3986
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3987
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3988
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v6, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    .line 3993
    :cond_0
    invoke-virtual {p0, v6, v5}, Lcom/google/common/cache/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 4003
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    return-object p1

    .line 3998
    :cond_3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3999
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " returned null keys or values from loadAll"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3979
    :cond_4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3980
    new-instance p1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " returned null map from loadAll"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3971
    :try_start_1
    new-instance p2, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw p2

    :catch_1
    move-exception p1

    .line 3969
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 3967
    new-instance p2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {p2, p1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 3964
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 3965
    new-instance p2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_4
    move-exception p1

    .line 3962
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-nez v2, :cond_5

    .line 3974
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3976
    :cond_5
    throw p1
.end method

.method public final i(I)Lcom/google/common/cache/a$r;
    .locals 1

    .line 1727
    iget v0, p0, Lcom/google/common/cache/a;->b:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lcom/google/common/cache/a;->a:I

    and-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 10

    .line 3803
    iget-object v0, p0, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 3804
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3805
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/a$r;->b:I

    if-eqz v7, :cond_0

    return v3

    .line 3808
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/a$r;->d:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    .line 3812
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 3813
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/cache/a$r;->b:I

    if-eqz v8, :cond_2

    return v3

    .line 3816
    :cond_2
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/cache/a$r;->d:I

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

    .line 4154
    iget-object v0, p0, Lcom/google/common/cache/a;->t:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 4155
    :cond_0
    new-instance v0, Lcom/google/common/cache/a$k;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/a$k;-><init>(Lcom/google/common/cache/a;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/a;->t:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4077
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4078
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4079
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4080
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/a$r;->n(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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

    .line 4093
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

    .line 4094
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4085
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4086
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4087
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4088
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/a$r;->n(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
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

    .line 4103
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v1

    .line 4104
    invoke-virtual {p0, v1}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v2

    .line 2948
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2950
    :try_start_0
    iget-object v3, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v3, v3, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 3350
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/a$r;->v(J)V

    .line 2954
    iget-object v9, v2, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2955
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int v10, v1, v3

    .line 2956
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/f;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 2959
    invoke-interface {v4}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2960
    invoke-interface {v4}, Lcom/google/common/cache/f;->getHash()I

    move-result v6

    if-ne v6, v1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v6, v6, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 2962
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2963
    invoke-interface {v4}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v7

    .line 2964
    invoke-interface {v7}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2968
    sget-object p1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    :goto_1
    move-object v8, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    .line 2969
    :cond_1
    invoke-interface {v7}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2970
    sget-object p1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 2976
    :goto_2
    iget p1, v2, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcom/google/common/cache/a$r;->d:I

    .line 2978
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 2979
    iget v0, v2, Lcom/google/common/cache/a$r;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2980
    invoke-virtual {v9, v10, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2981
    iput v0, v2, Lcom/google/common/cache/a$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2988
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    return-object v6

    .line 2988
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    return-object v0

    .line 2958
    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2988
    :cond_4
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    return-object v0

    .line 2988
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    .line 2990
    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 4112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v1

    .line 4113
    invoke-virtual {p0, v1}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v2

    .line 2994
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2996
    :try_start_0
    iget-object v3, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v3, v3, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 3350
    invoke-virtual {v2, v3, v4}, Lcom/google/common/cache/a$r;->v(J)V

    .line 3000
    iget-object v9, v2, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3001
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    and-int v11, v1, v3

    .line 3002
    invoke-virtual {v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/f;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_5

    .line 3005
    invoke-interface {v4}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3006
    invoke-interface {v4}, Lcom/google/common/cache/f;->getHash()I

    move-result v6

    if-ne v6, v1, :cond_4

    if-eqz v5, :cond_4

    iget-object v6, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v6, v6, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 3008
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3009
    invoke-interface {v4}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v7

    .line 3010
    invoke-interface {v7}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v6

    .line 3013
    iget-object p1, v2, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object p1, p1, Lcom/google/common/cache/a;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {p1, p2, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3014
    sget-object p1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    :goto_1
    move-object v8, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_1
    if-nez v6, :cond_3

    .line 3015
    invoke-interface {v7}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3016
    sget-object p1, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3022
    :goto_2
    iget p1, v2, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr p1, v10

    iput p1, v2, Lcom/google/common/cache/a$r;->d:I

    .line 3024
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 3025
    iget p2, v2, Lcom/google/common/cache/a$r;->b:I

    sub-int/2addr p2, v10

    .line 3026
    invoke-virtual {v9, v11, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3027
    iput p2, v2, Lcom/google/common/cache/a$r;->b:I

    .line 3028
    sget-object p1, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, p1, :cond_2

    const/4 v0, 0x1

    .line 3034
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    return v0

    .line 3034
    :cond_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    return v0

    .line 3004
    :cond_4
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3034
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    return v0

    .line 3034
    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v2}, Lcom/google/common/cache/a$r;->w()V

    .line 3036
    throw p1

    :cond_6
    :goto_4
    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4129
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4130
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    invoke-virtual {p0, p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v0

    .line 4132
    invoke-virtual {p0, v0}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v1

    .line 2893
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2895
    :try_start_0
    iget-object v2, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v2, v2, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v5

    .line 3350
    invoke-virtual {v1, v5, v6}, Lcom/google/common/cache/a$r;->v(J)V

    .line 2898
    iget-object v8, v1, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2899
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v9, v0, v2

    .line 2900
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/f;

    move-object v3, v2

    :goto_0
    const/4 v10, 0x0

    if-eqz v3, :cond_3

    .line 2903
    invoke-interface {v3}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2904
    invoke-interface {v3}, Lcom/google/common/cache/f;->getHash()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v7, v1, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v7, v7, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 2906
    invoke-virtual {v7, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-wide v11, v5

    .line 2907
    invoke-interface {v3}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v6

    .line 2908
    invoke-interface {v6}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2910
    invoke-interface {v6}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2913
    iget p1, v1, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/google/common/cache/a$r;->d:I

    .line 2914
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 2915
    invoke-virtual/range {v1 .. v7}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 2923
    iget p2, v1, Lcom/google/common/cache/a$r;->b:I

    add-int/lit8 p2, p2, -0x1

    .line 2924
    invoke-virtual {v8, v9, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2925
    iput p2, v1, Lcom/google/common/cache/a$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .line 2941
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    return-object v10

    :cond_1
    move-object v2, v3

    move-object v0, v5

    .line 2930
    :try_start_1
    iget v3, v1, Lcom/google/common/cache/a$r;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/google/common/cache/a$r;->d:I

    .line 2932
    invoke-interface {v6}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v3

    sget-object v4, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 2931
    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object v3, p1

    move-object v4, p2

    move-wide v5, v11

    .line 2933
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2934
    invoke-virtual {v1, v2}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2941
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    return-object v0

    :cond_2
    move-object v4, v3

    move-object v3, p1

    move-object p1, v2

    move-object v2, v4

    move-object v4, p2

    .line 2902
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, p1

    move-object p1, v3

    move-object v3, p2

    move-object p2, v4

    goto :goto_0

    .line 2941
    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    return-object v10

    .line 2941
    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v1}, Lcom/google/common/cache/a$r;->w()V

    .line 2943
    throw p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 16
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    move-object/from16 v3, p1

    move-object/from16 v0, p2

    .line 4118
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4119
    invoke-static/range {p3 .. p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4123
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/common/cache/a;->f(Ljava/lang/Object;)I

    move-result v2

    move-object/from16 v7, p0

    .line 4124
    invoke-virtual {v7, v2}, Lcom/google/common/cache/a;->i(I)Lcom/google/common/cache/a$r;

    move-result-object v8

    .line 2831
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2833
    :try_start_0
    iget-object v4, v8, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v4, v4, Lcom/google/common/cache/a;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v5

    .line 3350
    invoke-virtual {v8, v5, v6}, Lcom/google/common/cache/a$r;->v(J)V

    .line 2836
    iget-object v4, v8, Lcom/google/common/cache/a$r;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2837
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v9

    const/4 v15, 0x1

    sub-int/2addr v9, v15

    and-int/2addr v9, v2

    .line 2838
    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/cache/f;

    move v11, v9

    move-object v9, v10

    :goto_0
    if-eqz v10, :cond_5

    move v12, v11

    .line 2841
    invoke-interface {v10}, Lcom/google/common/cache/f;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 2842
    invoke-interface {v10}, Lcom/google/common/cache/f;->getHash()I

    move-result v13

    if-ne v13, v2, :cond_4

    if-eqz v11, :cond_4

    iget-object v13, v8, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v13, v13, Lcom/google/common/cache/a;->e:Lcom/google/common/base/Equivalence;

    .line 2844
    invoke-virtual {v13, v3, v11}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2845
    invoke-interface {v10}, Lcom/google/common/cache/f;->getValueReference()Lcom/google/common/cache/a$a0;

    move-result-object v13

    move v2, v12

    .line 2846
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->get()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    .line 2848
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2851
    iget v0, v8, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr v0, v15

    iput v0, v8, Lcom/google/common/cache/a$r;->d:I

    .line 2852
    sget-object v14, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move v3, v2

    .line 2853
    invoke-virtual/range {v8 .. v14}, Lcom/google/common/cache/a$r;->u(Lcom/google/common/cache/f;Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/a$a0;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/f;

    move-result-object v0

    .line 2861
    iget v2, v8, Lcom/google/common/cache/a$r;->b:I

    sub-int/2addr v2, v15

    .line 2862
    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2863
    iput v2, v8, Lcom/google/common/cache/a$r;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 2886
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    return v1

    :cond_2
    move-object v2, v10

    .line 2868
    :try_start_1
    iget-object v4, v8, Lcom/google/common/cache/a$r;->a:Lcom/google/common/cache/a;

    iget-object v4, v4, Lcom/google/common/cache/a;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, v0, v12}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2869
    iget v0, v8, Lcom/google/common/cache/a$r;->d:I

    add-int/2addr v0, v15

    iput v0, v8, Lcom/google/common/cache/a$r;->d:I

    .line 2871
    invoke-interface {v13}, Lcom/google/common/cache/a$a0;->getWeight()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 2870
    invoke-virtual {v8, v3, v12, v0, v1}, Lcom/google/common/cache/a$r;->d(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p3

    move-object v1, v8

    .line 2872
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/a$r;->y(Lcom/google/common/cache/f;Ljava/lang/Object;Ljava/lang/Object;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v1

    move-object v10, v2

    .line 2873
    :try_start_3
    invoke-virtual {v8, v10}, Lcom/google/common/cache/a$r;->e(Lcom/google/common/cache/f;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2886
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    return v15

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v10, v2

    .line 2878
    :try_start_4
    invoke-virtual {v8, v10, v5, v6}, Lcom/google/common/cache/a$r;->o(Lcom/google/common/cache/f;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2886
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    return v1

    :cond_4
    move v3, v12

    .line 2840
    :try_start_5
    invoke-interface {v10}, Lcom/google/common/cache/f;->getNext()Lcom/google/common/cache/f;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v11, v3

    move-object/from16 v3, p1

    goto/16 :goto_0

    .line 2886
    :cond_5
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    return v1

    .line 2886
    :goto_2
    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 3355
    invoke-virtual {v8}, Lcom/google/common/cache/a$r;->w()V

    .line 2888
    throw v0
.end method

.method public size()I
    .locals 7

    .line 3824
    iget-object v0, p0, Lcom/google/common/cache/a;->c:[Lcom/google/common/cache/a$r;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3826
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 3827
    aget-object v5, v0, v4

    iget v5, v5, Lcom/google/common/cache/a$r;->b:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3834
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

    .line 4163
    iget-object v0, p0, Lcom/google/common/cache/a;->u:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    .line 4164
    :cond_0
    new-instance v0, Lcom/google/common/cache/a$b0;

    invoke-direct {v0, p0, p0}, Lcom/google/common/cache/a$b0;-><init>(Lcom/google/common/cache/a;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/common/cache/a;->u:Ljava/util/Collection;

    return-object v0
.end method
