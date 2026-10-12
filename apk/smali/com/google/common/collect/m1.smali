.class Lcom/google/common/collect/m1;
.super Lcom/google/common/collect/Maps$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$c0<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/n1$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1$a;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/google/common/collect/m1;->b:Lcom/google/common/collect/n1$a;

    .line 296
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$c0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 301
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 302
    check-cast p1, Ljava/util/Collection;

    .line 303
    iget-object v0, p0, Lcom/google/common/collect/m1;->b:Lcom/google/common/collect/n1$a;

    iget-object v1, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    iget-object v1, v1, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    .line 304
    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 305
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 309
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/google/common/collect/n1$c;

    iget-object v6, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-direct {v5, v6, v3}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/google/common/collect/n1;->g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v3

    .line 310
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/common/collect/m1;->b:Lcom/google/common/collect/n1$a;

    iget-object v0, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2116
    sget-object v1, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v1}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 325
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/common/collect/m1;->b:Lcom/google/common/collect/n1$a;

    iget-object v0, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2116
    sget-object v1, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v1}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 330
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
