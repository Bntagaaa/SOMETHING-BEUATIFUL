.class Lcom/google/common/collect/v5$f$b;
.super Lcom/google/common/collect/Maps$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$c0<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/v5$f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$f;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/google/common/collect/v5$f$b;->b:Lcom/google/common/collect/v5$f;

    .line 922
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$c0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 927
    iget-object v0, p0, Lcom/google/common/collect/v5$f$b;->b:Lcom/google/common/collect/v5$f;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$d0;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 928
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    iget-object p1, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/v5;->e(Lcom/google/common/collect/v5;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 938
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    iget-object v0, p0, Lcom/google/common/collect/v5$f$b;->b:Lcom/google/common/collect/v5$f;

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

    .line 941
    iget-object v4, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/v5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 942
    invoke-static {v4, v3}, Lcom/google/common/collect/v5;->e(Lcom/google/common/collect/v5;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
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

    .line 951
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object v0, p0, Lcom/google/common/collect/v5$f$b;->b:Lcom/google/common/collect/v5$f;

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

    .line 954
    iget-object v4, v0, Lcom/google/common/collect/v5$f;->d:Lcom/google/common/collect/v5;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/v5;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 955
    invoke-static {v4, v3}, Lcom/google/common/collect/v5;->e(Lcom/google/common/collect/v5;Ljava/lang/Object;)Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
