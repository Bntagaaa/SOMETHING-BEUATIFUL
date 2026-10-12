.class Lcom/google/common/collect/n1$a;
.super Lcom/google/common/collect/Maps$d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$d0<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/n1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .locals 1

    .line 333
    new-instance v0, Lcom/google/common/collect/m1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/m1;-><init>(Lcom/google/common/collect/n1$a;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 170
    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$a;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final createEntrySet()Ljava/util/Set;
    .locals 1

    .line 288
    new-instance v0, Lcom/google/common/collect/k1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k1;-><init>(Lcom/google/common/collect/n1$a;)V

    return-object v0
.end method

.method public final createKeySet()Ljava/util/Set;
    .locals 1

    .line 239
    new-instance v0, Lcom/google/common/collect/l1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/l1;-><init>(Lcom/google/common/collect/n1$a;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$a;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    iget-object v1, v0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 186
    :cond_0
    new-instance v3, Lcom/google/common/collect/n1$c;

    invoke-direct {v3, v0, p1}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;Ljava/lang/Object;)V

    invoke-static {v1, v3}, Lcom/google/common/collect/n1;->g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p1

    .line 187
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/common/collect/n1$a;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    iget-object v1, v0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 199
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 70
    iget-object v4, v0, Lcom/google/common/collect/n1;->g:Lcom/google/common/base/Predicate;

    .line 70
    invoke-static {p1, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 204
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 209
    :cond_3
    iget-object p1, v0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    instance-of p1, p1, Lcom/google/common/collect/SetMultimap;

    if-eqz p1, :cond_4

    .line 210
    invoke-static {v2}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 212
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
