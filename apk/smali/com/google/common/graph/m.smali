.class Lcom/google/common/graph/m;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/google/common/graph/ElementOrder;

.field protected edgeCount:J

.field protected final nodeConnections:Lcom/google/common/graph/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/c0<",
            "TN;",
            "Lcom/google/common/graph/v<",
            "TN;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/graph/c;Ljava/util/Map;J)V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

    .line 72
    iget-boolean v0, p1, Lcom/google/common/graph/c;->a:Z

    iput-boolean v0, p0, Lcom/google/common/graph/m;->a:Z

    .line 73
    iget-boolean v0, p1, Lcom/google/common/graph/c;->b:Z

    iput-boolean v0, p0, Lcom/google/common/graph/m;->b:Z

    .line 74
    iget-object p1, p1, Lcom/google/common/graph/c;->c:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/graph/m;->c:Lcom/google/common/graph/ElementOrder;

    .line 76
    instance-of p1, p2, Ljava/util/TreeMap;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/common/graph/d0;

    .line 34
    invoke-direct {p1, p2}, Lcom/google/common/graph/c0;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/google/common/graph/c0;

    invoke-direct {p1, p2}, Lcom/google/common/graph/c0;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object p1, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-ltz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 590
    :goto_1
    const-string p2, "Not true that %s is non-negative."

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 80
    iput-wide p3, p0, Lcom/google/common/graph/m;->edgeCount:J

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

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/v;->adjacentNodes()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/google/common/graph/m;->b:Z

    return v0
.end method

.method public final checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/v<",
            "TN;TV;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/v;

    if-eqz v0, :cond_0

    return-object v0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Node "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an element of this graph."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 170
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public edgeCount()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/google/common/graph/m;->edgeCount:J

    return-wide v0
.end method

.method public edgeValueOrDefault(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 151
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 152
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/graph/m;->edgeValueOrDefault_internal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/graph/m;->edgeValueOrDefault_internal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final edgeValueOrDefault_internal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/v;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/common/graph/v;->value(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object p3

    :cond_1
    return-object p1
.end method

.method public hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->isOrderingCompatible(Lcom/google/common/graph/EndpointPair;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/m;->hasEdgeConnecting_internal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/graph/m;->hasEdgeConnecting_internal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasEdgeConnecting_internal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/v;

    if-eqz p1, :cond_0

    .line 175
    invoke-interface {p1}, Lcom/google/common/graph/v;->successors()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/v;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/google/common/graph/m$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/common/graph/m$a;-><init>(Lcom/google/common/graph/m;Ljava/lang/Object;Lcom/google/common/graph/v;)V

    return-object v1
.end method

.method public isDirected()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/google/common/graph/m;->a:Z

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

    .line 100
    iget-object v0, p0, Lcom/google/common/graph/m;->c:Lcom/google/common/graph/ElementOrder;

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

    .line 85
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0}, Lcom/google/common/graph/c0;->unmodifiableKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/v;->predecessors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->checkedConnections(Ljava/lang/Object;)Lcom/google/common/graph/v;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/graph/v;->successors()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
