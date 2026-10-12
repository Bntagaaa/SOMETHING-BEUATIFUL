.class abstract Lcom/google/common/graph/b0;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/google/common/graph/a;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/a;Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/common/graph/b0;->b:Lcom/google/common/graph/a;

    .line 33
    iput-object p2, p0, Lcom/google/common/graph/b0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 54
    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    .line 59
    iget-object v0, p0, Lcom/google/common/graph/b0;->b:Lcom/google/common/graph/a;

    invoke-interface {v0}, Lcom/google/common/graph/h;->isDirected()Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/graph/b0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 60
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object p1

    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 67
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 72
    :cond_4
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 77
    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/google/common/graph/b0;->b:Lcom/google/common/graph/a;

    invoke-interface {v0}, Lcom/google/common/graph/h;->isDirected()Z

    move-result v1

    iget-object v2, p0, Lcom/google/common/graph/b0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 44
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->inDegree(Ljava/lang/Object;)I

    move-result v1

    .line 45
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->outDegree(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    .line 46
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    sub-int/2addr v1, v0

    return v1

    .line 48
    :cond_0
    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
