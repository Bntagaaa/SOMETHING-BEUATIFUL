.class public Lcom/google/common/graph/ImmutableGraph$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/ImmutableGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/graph/MutableGraph;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/GraphBuilder;)V
    .locals 4

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Lcom/google/common/graph/GraphBuilder;

    .line 71
    iget-boolean v1, p1, Lcom/google/common/graph/c;->a:Z

    .line 71
    invoke-direct {v0, v1}, Lcom/google/common/graph/c;-><init>(Z)V

    .line 178
    iget-boolean v1, p1, Lcom/google/common/graph/c;->b:Z

    iput-boolean v1, v0, Lcom/google/common/graph/c;->b:Z

    .line 179
    iget-object v1, p1, Lcom/google/common/graph/c;->c:Lcom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lcom/google/common/graph/c;->c:Lcom/google/common/graph/ElementOrder;

    .line 180
    iget-object v1, p1, Lcom/google/common/graph/c;->e:Lcom/google/common/base/Optional;

    iput-object v1, v0, Lcom/google/common/graph/c;->e:Lcom/google/common/base/Optional;

    .line 181
    iget-object p1, p1, Lcom/google/common/graph/c;->d:Lcom/google/common/graph/ElementOrder;

    iput-object p1, v0, Lcom/google/common/graph/c;->d:Lcom/google/common/graph/ElementOrder;

    .line 121
    new-instance p1, Lcom/google/common/graph/ElementOrder;

    sget-object v1, Lcom/google/common/graph/ElementOrder$Type;->STABLE:Lcom/google/common/graph/ElementOrder$Type;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lcom/google/common/graph/ElementOrder;-><init>(Lcom/google/common/graph/ElementOrder$Type;Ljava/util/Comparator;)V

    .line 161
    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v2

    sget-object v3, Lcom/google/common/graph/ElementOrder$Type;->UNORDERED:Lcom/google/common/graph/ElementOrder$Type;

    if-eq v2, v3, :cond_1

    .line 162
    invoke-virtual {p1}, Lcom/google/common/graph/ElementOrder;->type()Lcom/google/common/graph/ElementOrder$Type;

    move-result-object v2

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "The given elementOrder (%s) is unsupported. incidentEdgeOrder() only supports ElementOrder.unordered() and ElementOrder.stable()."

    .line 160
    invoke-static {v1, v2, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 167
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/graph/ElementOrder;

    iput-object p1, v0, Lcom/google/common/graph/c;->d:Lcom/google/common/graph/ElementOrder;

    .line 130
    invoke-virtual {v0}, Lcom/google/common/graph/GraphBuilder;->build()Lcom/google/common/graph/MutableGraph;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/ImmutableGraph$Builder;->a:Lcom/google/common/graph/MutableGraph;

    return-void
.end method


# virtual methods
.method public addNode(Ljava/lang/Object;)Lcom/google/common/graph/ImmutableGraph$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/ImmutableGraph$Builder<",
            "TN;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph$Builder;->a:Lcom/google/common/graph/MutableGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph$Builder;->a:Lcom/google/common/graph/MutableGraph;

    invoke-static {v0}, Lcom/google/common/graph/ImmutableGraph;->copyOf(Lcom/google/common/graph/Graph;)Lcom/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public putEdge(Lcom/google/common/graph/EndpointPair;)Lcom/google/common/graph/ImmutableGraph$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Lcom/google/common/graph/ImmutableGraph$Builder<",
            "TN;>;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph$Builder;->a:Lcom/google/common/graph/MutableGraph;

    invoke-interface {v0, p1}, Lcom/google/common/graph/MutableGraph;->putEdge(Lcom/google/common/graph/EndpointPair;)Z

    return-object p0
.end method

.method public putEdge(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/ImmutableGraph$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lcom/google/common/graph/ImmutableGraph$Builder<",
            "TN;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/common/graph/ImmutableGraph$Builder;->a:Lcom/google/common/graph/MutableGraph;

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object p0
.end method
