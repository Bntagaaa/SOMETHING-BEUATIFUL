.class Lcom/google/common/graph/a$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/a;->edges()Ljava/util/Set;
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
.field public final synthetic a:Lcom/google/common/graph/a;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/a;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

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

    .line 89
    instance-of v0, p1, Lcom/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 92
    :cond_0
    check-cast p1, Lcom/google/common/graph/EndpointPair;

    .line 93
    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/a;->isOrderingCompatible(Lcom/google/common/graph/EndpointPair;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-interface {v0}, Lcom/google/common/graph/h;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/graph/h;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-interface {v0}, Lcom/google/common/graph/h;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/common/graph/r$b;

    .line 68
    invoke-direct {v1, v0}, Lcom/google/common/graph/r;-><init>(Lcom/google/common/graph/h;)V

    return-object v1

    .line 40
    :cond_0
    new-instance v1, Lcom/google/common/graph/r$c;

    .line 114
    invoke-direct {v1, v0}, Lcom/google/common/graph/r;-><init>(Lcom/google/common/graph/h;)V

    .line 115
    invoke-interface {v0}, Lcom/google/common/graph/h;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, v1, Lcom/google/common/graph/r$c;->g:Ljava/util/HashSet;

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/google/common/graph/a$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 80
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/google/common/graph/a$a;->a:Lcom/google/common/graph/a;

    invoke-virtual {v0}, Lcom/google/common/graph/a;->edgeCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
