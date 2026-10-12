.class Lcom/google/common/collect/r1;
.super Lcom/google/common/collect/l;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/t1;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/r1$c;,
        Lcom/google/common/collect/r1$a;,
        Lcom/google/common/collect/r1$b;
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

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/l;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multimap;

    iput-object p1, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    .line 45
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    iput-object p1, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->filterKeys(Ljava/util/Map;Lcom/google/common/base/Predicate;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1

    .line 181
    new-instance v0, Lcom/google/common/collect/r1$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/r1$c;-><init>(Lcom/google/common/collect/r1;)V

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lcom/google/common/collect/Multiset;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->filter(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Collection;
    .locals 1

    .line 208
    new-instance v0, Lcom/google/common/collect/u1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/u1;-><init>(Lcom/google/common/collect/t1;)V

    return-object v0
.end method

.method public entryPredicate()Lcom/google/common/base/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2112
    sget-object v0, Lcom/google/common/collect/Maps$e;->a:Lcom/google/common/collect/Maps$e$a;

    iget-object v1, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Iterator;
    .locals 2

    .line 176
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

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/r1;->g:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    instance-of v0, v1, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/google/common/collect/r1$b;

    invoke-direct {v0, p1}, Lcom/google/common/collect/r1$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Lcom/google/common/collect/r1$a;

    invoke-direct {v0, p1}, Lcom/google/common/collect/r1$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r1;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_0

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    instance-of p1, v1, Lcom/google/common/collect/SetMultimap;

    if-eqz p1, :cond_1

    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    .line 86
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/google/common/collect/l;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 62
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
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

    .line 50
    iget-object v0, p0, Lcom/google/common/collect/r1;->f:Lcom/google/common/collect/Multimap;

    return-object v0
.end method
