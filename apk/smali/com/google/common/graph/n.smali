.class final Lcom/google/common/graph/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/n$i;,
        Lcom/google/common/graph/n$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/v<",
        "TN;TV;>;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/AbstractCollection;

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/util/List;II)V
    .locals 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    .line 147
    check-cast p2, Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    .line 148
    invoke-static {p3}, Lcom/google/common/graph/Graphs;->a(I)V

    iput p3, p0, Lcom/google/common/graph/n;->c:I

    .line 149
    invoke-static {p4}, Lcom/google/common/graph/Graphs;->a(I)V

    iput p4, p0, Lcom/google/common/graph/n;->d:I

    .line 151
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p2

    if-gt p3, p2, :cond_0

    .line 152
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-gt p4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/util/Set;Lcom/google/common/base/Function;)Lcom/google/common/graph/n;
    .locals 9

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 186
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/EndpointPair;

    .line 187
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    new-instance v5, Lcom/google/common/graph/n$j;

    invoke-interface {p2, p0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/graph/n$j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    new-instance v5, Lcom/google/common/graph/n$i$a;

    .line 81
    invoke-direct {v5, p0}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 193
    new-instance v5, Lcom/google/common/graph/n$i$b;

    .line 102
    invoke-direct {v5, p0}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    sget-object v7, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 197
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    .line 199
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 201
    new-instance v7, Lcom/google/common/graph/n$j;

    invoke-direct {v7, v6}, Lcom/google/common/graph/n$j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_1
    new-instance v6, Lcom/google/common/graph/n$i$a;

    .line 81
    invoke-direct {v6, v5}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 209
    invoke-virtual {v5}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    .line 210
    invoke-interface {p2, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 212
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    if-ne v8, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 214
    :goto_2
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 215
    new-instance v7, Lcom/google/common/graph/n$j;

    invoke-direct {v7, v6}, Lcom/google/common/graph/n$j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_4
    new-instance v6, Lcom/google/common/graph/n$i$b;

    .line 102
    invoke-direct {v6, v5}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 218
    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 223
    :cond_5
    new-instance p0, Lcom/google/common/graph/n;

    .line 225
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/google/common/graph/n;-><init>(Ljava/util/HashMap;Ljava/util/List;II)V

    return-object p0
.end method


# virtual methods
.method public addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)V"
        }
    .end annotation

    .line 488
    sget-object p2, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    instance-of v2, v1, Lcom/google/common/graph/n$j;

    if-eqz v2, :cond_1

    .line 495
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    if-eq v1, p2, :cond_3

    .line 499
    new-instance p2, Lcom/google/common/graph/n$j;

    invoke-direct {p2, v1}, Lcom/google/common/graph/n$j;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    :goto_0
    iget p2, p0, Lcom/google/common/graph/n;->c:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/common/graph/n;->c:I

    if-lez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 596
    :goto_1
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 508
    iget-object p2, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-eqz p2, :cond_3

    .line 509
    new-instance v0, Lcom/google/common/graph/n$i$a;

    .line 81
    invoke-direct {v0, p1}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 509
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TV;)TV;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 522
    :cond_0
    instance-of v3, v1, Lcom/google/common/graph/n$j;

    if-eqz v3, :cond_1

    .line 523
    new-instance v2, Lcom/google/common/graph/n$j;

    invoke-direct {v2, p2}, Lcom/google/common/graph/n$j;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    check-cast v1, Lcom/google/common/graph/n$j;

    iget-object v1, v1, Lcom/google/common/graph/n$j;->a:Ljava/lang/Object;

    goto :goto_1

    .line 525
    :cond_1
    sget-object v3, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    if-ne v1, v3, :cond_2

    .line 526
    new-instance v1, Lcom/google/common/graph/n$j;

    invoke-direct {v1, p2}, Lcom/google/common/graph/n$j;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 533
    iget p2, p0, Lcom/google/common/graph/n;->d:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/common/graph/n;->d:I

    if-lez p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 596
    :goto_2
    const-string v2, "Not true that %s is positive."

    invoke-static {v0, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 535
    iget-object p2, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-eqz p2, :cond_4

    .line 536
    new-instance v0, Lcom/google/common/graph/n$i$b;

    .line 102
    invoke-direct {v0, p1}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 536
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method public adjacentNodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Lcom/google/common/graph/n$a;

    invoke-direct {v0, p0}, Lcom/google/common/graph/n$a;-><init>(Lcom/google/common/graph/n;)V

    return-object v0
.end method

.method public incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/google/common/graph/n;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/n$d;

    invoke-direct {v1, p1}, Lcom/google/common/graph/n$d;-><init>(Ljava/lang/Object;)V

    .line 370
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lcom/google/common/graph/n;->successors()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lcom/google/common/graph/n$e;

    invoke-direct {v2, p1}, Lcom/google/common/graph/n$e;-><init>(Ljava/lang/Object;)V

    .line 378
    invoke-static {v1, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    .line 369
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/n$f;

    invoke-direct {v1, p1}, Lcom/google/common/graph/n$f;-><init>(Ljava/lang/Object;)V

    .line 388
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p1

    .line 402
    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 403
    new-instance v1, Lcom/google/common/graph/n$g;

    invoke-direct {v1, p1, v0}, Lcom/google/common/graph/n$g;-><init>(Ljava/util/Iterator;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v1
.end method

.method public predecessors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 270
    new-instance v0, Lcom/google/common/graph/n$b;

    invoke-direct {v0, p0}, Lcom/google/common/graph/n$b;-><init>(Lcom/google/common/graph/n;)V

    return-object v0
.end method

.method public removePredecessor(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 440
    sget-object v2, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 441
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 443
    :cond_0
    instance-of v2, v1, Lcom/google/common/graph/n$j;

    if-eqz v2, :cond_1

    .line 444
    check-cast v1, Lcom/google/common/graph/n$j;

    .line 58
    iget-object v1, v1, Lcom/google/common/graph/n$j;->a:Ljava/lang/Object;

    .line 444
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :goto_0
    iget v0, p0, Lcom/google/common/graph/n;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/graph/n;->c:I

    invoke-static {v0}, Lcom/google/common/graph/Graphs;->a(I)V

    .line 453
    iget-object v0, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-eqz v0, :cond_1

    .line 454
    new-instance v1, Lcom/google/common/graph/n$i$a;

    .line 81
    invoke-direct {v1, p1}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 454
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 462
    iget-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 465
    sget-object v2, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    instance-of v3, v1, Lcom/google/common/graph/n$j;

    if-eqz v3, :cond_1

    .line 468
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    check-cast v1, Lcom/google/common/graph/n$j;

    iget-object v1, v1, Lcom/google/common/graph/n$j;->a:Ljava/lang/Object;

    goto :goto_1

    .line 471
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 476
    iget v0, p0, Lcom/google/common/graph/n;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/graph/n;->d:I

    invoke-static {v0}, Lcom/google/common/graph/Graphs;->a(I)V

    .line 478
    iget-object v0, p0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-eqz v0, :cond_3

    .line 479
    new-instance v2, Lcom/google/common/graph/n$i$b;

    .line 102
    invoke-direct {v2, p1}, Lcom/google/common/graph/n$i;-><init>(Ljava/lang/Object;)V

    .line 479
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method

.method public successors()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/google/common/graph/n$c;

    invoke-direct {v0, p0}, Lcom/google/common/graph/n$c;-><init>(Lcom/google/common/graph/n;)V

    return-object v0
.end method

.method public value(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 425
    sget-object v0, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_0
    instance-of v0, p1, Lcom/google/common/graph/n$j;

    if-eqz v0, :cond_1

    .line 429
    check-cast p1, Lcom/google/common/graph/n$j;

    .line 58
    iget-object p1, p1, Lcom/google/common/graph/n$j;->a:Ljava/lang/Object;

    :cond_1
    return-object p1
.end method
