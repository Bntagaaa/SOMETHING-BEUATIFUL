.class Lcom/google/common/graph/l;
.super Lcom/google/common/graph/AbstractNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractNetwork<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Lcom/google/common/graph/ElementOrder;

.field public final e:Lcom/google/common/graph/ElementOrder;

.field protected final edgeToReferenceNode:Lcom/google/common/graph/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/c0<",
            "TE;TN;>;"
        }
    .end annotation
.end field

.field protected final nodeConnections:Lcom/google/common/graph/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/c0<",
            "TN;",
            "Lcom/google/common/graph/f0<",
            "TN;TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/NetworkBuilder;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/google/common/graph/AbstractNetwork;-><init>()V

    .line 81
    iget-boolean v0, p1, Lcom/google/common/graph/c;->a:Z

    iput-boolean v0, p0, Lcom/google/common/graph/l;->a:Z

    .line 82
    iget-boolean v0, p1, Lcom/google/common/graph/NetworkBuilder;->f:Z

    iput-boolean v0, p0, Lcom/google/common/graph/l;->b:Z

    .line 83
    iget-boolean v0, p1, Lcom/google/common/graph/c;->b:Z

    iput-boolean v0, p0, Lcom/google/common/graph/l;->c:Z

    .line 84
    iget-object v0, p1, Lcom/google/common/graph/c;->c:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/graph/l;->d:Lcom/google/common/graph/ElementOrder;

    .line 85
    iget-object p1, p1, Lcom/google/common/graph/NetworkBuilder;->g:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/graph/l;->e:Lcom/google/common/graph/ElementOrder;

    .line 88
    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/common/graph/d0;

    .line 34
    invoke-direct {p1, p2}, Lcom/google/common/graph/c0;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 88
    :cond_0
    new-instance p1, Lcom/google/common/graph/c0;

    invoke-direct {p1, p2}, Lcom/google/common/graph/c0;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    .line 92
    new-instance p1, Lcom/google/common/graph/c0;

    invoke-direct {p1, p3}, Lcom/google/common/graph/c0;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/f0;->adjacentNodes()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public allowsParallelEdges()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/google/common/graph/l;->b:Z

    return v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/google/common/graph/l;->c:Z

    return v0
.end method

.method public final checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/f0<",
            "TN;TE;>;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/f0;

    if-eqz v0, :cond_0

    return-object v0

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Node %s is not an element of this graph."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkedReferenceNode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 189
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Edge %s is not an element of this graph."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final containsEdge(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsNode(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public edgeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/common/graph/l;->e:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/common/graph/l;->edgeToReferenceNode:Lcom/google/common/graph/c0;

    invoke-virtual {v0}, Lcom/google/common/graph/c0;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object v0

    .line 150
    iget-boolean v1, p0, Lcom/google/common/graph/l;->c:Z

    if-nez v1, :cond_0

    if-ne p1, p2, :cond_0

    .line 151
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/common/graph/l;->containsNode(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {p1, v1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-interface {v0, p2}, Lcom/google/common/graph/f0;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/f0;->inEdges()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/f0;->incidentEdges()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedReferenceNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v1, v0}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/f0;

    invoke-interface {v1, p1}, Lcom/google/common/graph/f0;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 69
    invoke-interface {p0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/graph/EndpointPair;->unordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public isDirected()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/google/common/graph/l;->a:Z

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/common/graph/l;->d:Lcom/google/common/graph/ElementOrder;

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/common/graph/l;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0}, Lcom/google/common/graph/c0;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/f0;->outEdges()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/f0;->predecessors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/common/graph/l;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/f0;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/f0;->successors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
