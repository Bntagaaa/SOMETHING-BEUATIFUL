.class Lcom/google/common/collect/v5$f$a;
.super Lcom/google/common/collect/v5$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v5<",
        "TR;TC;TV;>.i<",
        "Ljava/util/Map$Entry<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/v5$f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$f;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object p1, p1, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-direct {p0, p1}, Lcom/google/common/collect/v5$i;-><init>(Lcom/google/common/collect/v5;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 870
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 871
    check-cast p1, Ljava/util/Map$Entry;

    .line 872
    iget-object v0, p0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object v1, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/v5;->containsColumn(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 877
    invoke-virtual {v0, v1}, Lcom/google/common/collect/v5$f;->get(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    .line 853
    iget-object v0, p0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object v0, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    .line 854
    invoke-virtual {v0}, Lcom/google/common/collect/v5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/v5$f$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/v5$f$a$a;-><init>(Lcom/google/common/collect/v5$f$a;)V

    .line 845
    new-instance v2, Lcom/google/common/collect/t3;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/t3;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 885
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v5$f$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    check-cast p1, Ljava/util/Map$Entry;

    .line 887
    iget-object v0, p0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object v0, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/v5;->e(Lcom/google/common/collect/v5;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 901
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->d(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 907
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    iget-object v0, p0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object v1, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v1}, Lcom/google/common/collect/v5;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 910
    iget-object v4, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/v5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 911
    invoke-static {v4, v3}, Lcom/google/common/collect/v5;->e(Lcom/google/common/collect/v5;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public size()I
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/google/common/collect/v5$f$a;->b:Lcom/google/common/collect/v5$f;

    iget-object v0, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v0}, Lcom/google/common/collect/v5;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
