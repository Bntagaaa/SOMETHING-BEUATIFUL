.class Lcom/google/common/graph/Graphs$b;
.super Lcom/google/common/graph/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/s<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/graph/Graph;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Graph;)V
    .locals 0

    .line 263
    invoke-direct {p0}, Lcom/google/common/graph/s;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/google/common/graph/Graphs$b;->a:Lcom/google/common/graph/Graph;

    return-void
.end method


# virtual methods
.method public delegate()Lcom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/common/graph/Graphs$b;->a:Lcom/google/common/graph/Graph;

    return-object v0
.end method

.method public bridge synthetic delegate()Lcom/google/common/graph/h;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    return-object v0
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

    .line 316
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/graph/Graphs;->c(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->hasEdgeConnecting(Lcom/google/common/graph/EndpointPair;)Z

    move-result p1

    return p1
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/Graph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->outDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/google/common/graph/Graphs$b$a;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/common/graph/Graphs$b$a;-><init>(Lcom/google/common/graph/Graphs$b;Lcom/google/common/graph/Graphs$b;Ljava/lang/Object;)V

    return-object v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->inDegree(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$b;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$b;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
