.class final Lcom/google/common/graph/j;
.super Lcom/google/common/graph/l;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/MutableNetwork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/l<",
        "TN;TE;>;",
        "Lcom/google/common/graph/MutableNetwork<",
        "TN;TE;>;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/graph/f0;
    .locals 6

    .line 165
    invoke-virtual {p0}, Lcom/google/common/graph/l;->isDirected()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/google/common/graph/l;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/google/common/graph/o;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 46
    invoke-direct {v0, v4, v5, v1}, Lcom/google/common/graph/b;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/google/common/graph/p;

    .line 44
    invoke-static {v3}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v2

    invoke-static {v3}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/google/common/graph/p;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/l;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    new-instance v0, Lcom/google/common/graph/h0;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 46
    invoke-direct {v0, v4}, Lcom/google/common/graph/f;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Lcom/google/common/graph/i0;

    invoke-static {v3}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/graph/i0;-><init>(Ljava/util/Map;)V

    .line 71
    :goto_0
    iget-object v2, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v2, p1, v0}, Lcom/google/common/graph/c0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v0
.end method

.method public addEdge(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TE;)Z"
        }
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 123
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/graph/j;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    .line 78
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "edge"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lcom/google/common/graph/l;->containsEdge(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, p3}, Lcom/google/common/graph/l;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 69
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    .line 86
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    .line 85
    invoke-static {p2, v2, p3, v0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/f0;

    .line 94
    invoke-virtual {p0}, Lcom/google/common/graph/l;->allowsParallelEdges()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Lcom/google/common/graph/f0;->successors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v2, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    .line 95
    invoke-static {v1, v2, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 102
    invoke-virtual {p0}, Lcom/google/common/graph/l;->allowsSelfLoops()Z

    move-result v2

    if-nez v2, :cond_5

    xor-int/lit8 v2, v1, 0x1

    .line 103
    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v2, v4, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-nez v0, :cond_6

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/common/graph/j;->a(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object v0

    .line 109
    :cond_6
    invoke-interface {v0, p3, p2}, Lcom/google/common/graph/f0;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p2}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/f0;

    if-nez v0, :cond_7

    .line 112
    invoke-virtual {p0, p2}, Lcom/google/common/graph/j;->a(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object v0

    .line 114
    :cond_7
    invoke-interface {v0, p3, p1, v1}, Lcom/google/common/graph/f0;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 115
    iget-object p2, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    invoke-virtual {p2, p3, p1}, Lcom/google/common/graph/c0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public addNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 53
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/j;->a(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    const/4 p1, 0x1

    return p1
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 148
    const-string v0, "edge"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-object v2, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v2, v0}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/f0;

    .line 156
    invoke-interface {v2, p1}, Lcom/google/common/graph/f0;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v4, v3}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/graph/f0;

    .line 158
    invoke-interface {v2, p1}, Lcom/google/common/graph/f0;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lcom/google/common/graph/l;->allowsSelfLoops()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v4, p1, v1}, Lcom/google/common/graph/f0;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v5
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 129
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/f0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 138
    :cond_0
    invoke-interface {v0}, Lcom/google/common/graph/f0;->incidentEdges()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/common/graph/j;->removeEdge(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
