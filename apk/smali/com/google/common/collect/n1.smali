.class Lcom/google/common/collect/n1;
.super Lcom/google/common/collect/l;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/t1;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n1$b;,
        Lcom/google/common/collect/n1$a;,
        Lcom/google/common/collect/n1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l<",
        "TK;TV;>;",
        "Lcom/google/common/collect/t1<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final f:Lcom/google/common/collect/Multimap;

.field public final g:Lcom/google/common/base/Predicate;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/common/collect/l;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multimap;

    iput-object p1, p0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    .line 51
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    iput-object p1, p0, Lcom/google/common/collect/n1;->g:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public static g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;
    .locals 1

    .line 88
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 139
    new-instance v0, Lcom/google/common/collect/n1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n1$a;-><init>(Lcom/google/common/collect/n1;)V

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/n1;->g:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/n1;->g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/google/common/collect/l;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/google/common/collect/l;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/l;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 339
    new-instance v0, Lcom/google/common/collect/n1$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n1$b;-><init>(Lcom/google/common/collect/n1;)V

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    .line 129
    new-instance v0, Lcom/google/common/collect/u1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u1;-><init>(Lcom/google/common/collect/t1;)V

    return-object v0
.end method

.method public entryPredicate()Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/n1;->g:Lcom/google/common/base/Predicate;

    return-object v0
.end method

.method public final f()Ljava/util/Iterator;
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/n1$c;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/n1;->g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/google/common/base/Predicate;)Z
    .locals 6

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/google/common/collect/n1$c;

    invoke-direct {v5, p0, v3}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/google/common/collect/n1;->g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v4

    .line 154
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v4}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 158
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
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

    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/l;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    instance-of v0, v0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 102
    :goto_0
    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/l;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public unfiltered()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    return-object v0
.end method
