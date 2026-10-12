.class Lcom/google/common/collect/v5$c;
.super Lcom/google/common/collect/Maps$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/v5$c$d;,
        Lcom/google/common/collect/v5$c$c;,
        Lcom/google/common/collect/v5$c$b;,
        Lcom/google/common/collect/v5$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d0<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;

.field public final synthetic e:Lcom/google/common/collect/v5;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5;Ljava/lang/Object;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d0;-><init>()V

    .line 405
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .line 566
    new-instance v0, Lcom/google/common/collect/v5$c$d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v5$c$d;-><init>(Lcom/google/common/collect/v5$c;)V

    return-object v0
.end method

.method public final b(Lcom/google/common/base/Predicate;)Z
    .locals 6

    .line 432
    iget-object v0, p0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 436
    iget-object v4, p0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 437
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v1, p0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/v5;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final createEntrySet()Ljava/util/Set;
    .locals 1

    .line 450
    new-instance v0, Lcom/google/common/collect/v5$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v5$c$a;-><init>(Lcom/google/common/collect/v5$c;)V

    return-object v0
.end method

.method public final createKeySet()Ljava/util/Set;
    .locals 1

    .line 539
    new-instance v0, Lcom/google/common/collect/v5$c$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/v5$c$c;-><init>(Lcom/google/common/collect/v5$c;)V

    return-object v0
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

    .line 415
    iget-object v0, p0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v1, p0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/v5;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TV;)TV;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v1, p0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/v5;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 425
    iget-object v0, p0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v1, p0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/v5;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
