.class Lcom/google/common/graph/a$b;
.super Lcom/google/common/graph/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/a;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/b0<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/common/graph/b0;->b:Lcom/google/common/graph/a;

    invoke-interface {v0}, Lcom/google/common/graph/h;->isDirected()Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/graph/b0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v3, Lcom/google/common/graph/a$b$a;

    invoke-direct {v3, p0}, Lcom/google/common/graph/a$b$a;-><init>(Lcom/google/common/graph/a$b;)V

    .line 110
    invoke-static {v1, v3}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v1

    .line 120
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    new-instance v2, Lcom/google/common/graph/a$b$b;

    invoke-direct {v2, p0}, Lcom/google/common/graph/a$b$b;-><init>(Lcom/google/common/graph/a$b;)V

    .line 118
    invoke-static {v0, v2}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 109
    invoke-static {v1, v0}, Lcom/google/common/collect/Iterators;->concat(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 130
    :cond_0
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/a$b$c;

    invoke-direct {v1, p0}, Lcom/google/common/graph/a$b$c;-><init>(Lcom/google/common/graph/a$b;)V

    .line 129
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/google/common/graph/a$b;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
