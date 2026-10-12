.class final Lcom/google/common/graph/k;
.super Lcom/google/common/graph/m;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/MutableValueGraph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/m<",
        "TN;TV;>;",
        "Lcom/google/common/graph/MutableValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/google/common/graph/ElementOrder;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/c;)V
    .locals 3

    .line 57
    iget-object v0, p1, Lcom/google/common/graph/c;->c:Lcom/google/common/graph/ElementOrder;

    iget-object v1, p1, Lcom/google/common/graph/c;->e:Lcom/google/common/base/Optional;

    const/16 v2, 0xa

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/common/graph/ElementOrder;->a(I)Ljava/util/AbstractMap;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/common/graph/m;-><init>(Lcom/google/common/graph/c;Ljava/util/Map;J)V

    .line 49
    iget-object p1, p1, Lcom/google/common/graph/c;->d:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/common/graph/k;->d:Lcom/google/common/graph/ElementOrder;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/graph/v;
    .locals 7

    .line 172
    invoke-virtual {p0}, Lcom/google/common/graph/m;->isDirected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    .line 160
    sget-object v0, Lcom/google/common/graph/n$h;->a:[I

    iget-object v5, p0, Lcom/google/common/graph/k;->d:Lcom/google/common/graph/ElementOrder;

    invoke-virtual {v5}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v0, v0, v6

    if-eq v0, v2, :cond_1

    if-ne v0, v4, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v5}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 171
    :goto_0
    new-instance v4, Lcom/google/common/graph/n;

    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {v4, v5, v0, v1, v1}, Lcom/google/common/graph/n;-><init>(Ljava/util/HashMap;Ljava/util/List;II)V

    goto :goto_1

    .line 47
    :cond_2
    new-instance v0, Lcom/google/common/graph/g0;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {v0, v5}, Lcom/google/common/graph/g0;-><init>(Ljava/util/Map;)V

    move-object v4, v0

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1, v4}, Lcom/google/common/graph/c0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-object v4
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

    .line 55
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/common/graph/m;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/k;->a(Ljava/lang/Object;)Lcom/google/common/graph/v;

    const/4 p1, 0x1

    return p1
.end method

.method public putEdgeValue(Lcom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 108
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/common/graph/k;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .line 80
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "value"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-virtual {p0}, Lcom/google/common/graph/m;->allowsSelfLoops()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const-string v2, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v0, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/v;

    if-nez v0, :cond_1

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/common/graph/k;->a(Ljava/lang/Object;)Lcom/google/common/graph/v;

    move-result-object v0

    .line 92
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/google/common/graph/v;->addSuccessor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v2, p2}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/v;

    if-nez v2, :cond_2

    .line 95
    invoke-virtual {p0, p2}, Lcom/google/common/graph/k;->a(Ljava/lang/Object;)Lcom/google/common/graph/v;

    move-result-object v2

    .line 97
    :cond_2
    invoke-interface {v2, p1, p3}, Lcom/google/common/graph/v;->addPredecessor(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v0, :cond_4

    .line 99
    iget-wide p1, p0, Lcom/google/common/graph/m;->edgeCount:J

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/common/graph/m;->edgeCount:J

    const-wide/16 v2, 0x0

    cmp-long p3, p1, v2

    if-lez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 602
    :goto_0
    const-string p3, "Not true that %s is positive."

    invoke-static {v1, p3, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    :cond_4
    return-object v0
.end method

.method public removeEdge(Lcom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)TV;"
        }
    .end annotation

    .line 167
    invoke-virtual {p0, p1}, Lcom/google/common/graph/a;->validateEndpoints(Lcom/google/common/graph/EndpointPair;)V

    .line 168
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/graph/k;->removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TV;"
        }
    .end annotation

    .line 147
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/v;

    .line 151
    iget-object v1, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v1, p2}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/v;

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-interface {v0, p2}, Lcom/google/common/graph/v;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 158
    invoke-interface {v1, p1}, Lcom/google/common/graph/v;->removePredecessor(Ljava/lang/Object;)V

    .line 159
    iget-wide v0, p0, Lcom/google/common/graph/m;->edgeCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/graph/m;->edgeCount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 590
    :goto_0
    const-string v2, "Not true that %s is non-negative."

    invoke-static {p1, v2, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    :cond_2
    return-object p2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 114
    const-string v0, "node"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/v;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/graph/m;->allowsSelfLoops()Z

    move-result v2

    const-wide/16 v3, 0x1

    if-eqz v2, :cond_1

    .line 123
    invoke-interface {v0, p1}, Lcom/google/common/graph/v;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 124
    invoke-interface {v0, p1}, Lcom/google/common/graph/v;->removePredecessor(Ljava/lang/Object;)V

    .line 125
    iget-wide v5, p0, Lcom/google/common/graph/m;->edgeCount:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/m;->edgeCount:J

    .line 129
    :cond_1
    invoke-interface {v0}, Lcom/google/common/graph/v;->successors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 130
    iget-object v6, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v6, v5}, Lcom/google/common/graph/c0;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/graph/v;

    invoke-interface {v5, p1}, Lcom/google/common/graph/v;->removePredecessor(Ljava/lang/Object;)V

    .line 131
    iget-wide v5, p0, Lcom/google/common/graph/m;->edgeCount:J

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/common/graph/m;->edgeCount:J

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/graph/m;->isDirected()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 134
    invoke-interface {v0}, Lcom/google/common/graph/v;->predecessors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 135
    iget-object v6, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v6, v2}, Lcom/google/common/graph/c0;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/v;

    invoke-interface {v2, p1}, Lcom/google/common/graph/v;->removeSuccessor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 136
    iget-wide v6, p0, Lcom/google/common/graph/m;->edgeCount:J

    sub-long/2addr v6, v3

    iput-wide v6, p0, Lcom/google/common/graph/m;->edgeCount:J

    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/google/common/graph/m;->nodeConnections:Lcom/google/common/graph/c0;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/c0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-wide v2, p0, Lcom/google/common/graph/m;->edgeCount:J

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    .line 590
    :cond_5
    const-string p1, "Not true that %s is non-negative."

    invoke-static {v1, p1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    return v5
.end method
