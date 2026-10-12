.class Lcom/google/common/graph/AbstractNetwork$a$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractNetwork$a;->edges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/graph/AbstractNetwork$a;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/AbstractNetwork$a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/common/graph/AbstractNetwork$a$a;->a:Lcom/google/common/graph/AbstractNetwork$a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 93
    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    .line 97
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$a$a;->a:Lcom/google/common/graph/AbstractNetwork$a;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/a;->isOrderingCompatible(Lcom/google/common/graph/EndpointPair;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/google/common/graph/AbstractNetwork$a;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/graph/AbstractNetwork$a;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$a$a;->a:Lcom/google/common/graph/AbstractNetwork$a;

    iget-object v0, v0, Lcom/google/common/graph/AbstractNetwork$a;->a:Lcom/google/common/graph/AbstractNetwork;

    .line 73
    invoke-interface {v0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/AbstractNetwork$a$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/AbstractNetwork$a$a$a;-><init>(Lcom/google/common/graph/AbstractNetwork$a$a;)V

    .line 72
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/common/graph/AbstractNetwork$a$a;->a:Lcom/google/common/graph/AbstractNetwork$a;

    iget-object v0, v0, Lcom/google/common/graph/AbstractNetwork$a;->a:Lcom/google/common/graph/AbstractNetwork;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
