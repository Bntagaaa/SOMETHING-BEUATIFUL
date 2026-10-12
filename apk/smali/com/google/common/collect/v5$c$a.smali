.class Lcom/google/common/collect/v5$c$a;
.super Lcom/google/common/collect/Sets$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$k<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/v5$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$c;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$k;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/v5$c;->b(Lcom/google/common/base/Predicate;)Z

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 483
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    iget-object v0, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    iget-object v2, v0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, v0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/google/common/collect/v5;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    iget-object v1, v0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/v5;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 457
    new-instance v0, Lcom/google/common/collect/v5$c$b;

    iget-object v1, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    invoke-direct {v0, v1}, Lcom/google/common/collect/v5$c$b;-><init>(Lcom/google/common/collect/v5$c;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .line 492
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 493
    check-cast p1, Ljava/util/Map$Entry;

    .line 494
    iget-object v0, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    iget-object v2, v0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 184
    iget-object v0, v0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Lcom/google/common/collect/v5;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {v2, v3, v0}, Lcom/google/common/collect/v5;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 501
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5$c;->b(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 5

    .line 463
    iget-object v0, p0, Lcom/google/common/collect/v5$c$a;->a:Lcom/google/common/collect/v5$c;

    iget-object v1, v0, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object v1, v1, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 464
    iget-object v4, v0, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
