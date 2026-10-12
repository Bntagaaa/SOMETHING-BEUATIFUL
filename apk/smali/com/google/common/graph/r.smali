.class abstract Lcom/google/common/graph/r;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/r$c;,
        Lcom/google/common/graph/r$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/common/graph/h;

.field public final d:Ljava/util/Iterator;

.field public e:Ljava/lang/Object;

.field public f:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/h;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/common/graph/r;->e:Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/r;->f:Ljava/util/Iterator;

    .line 44
    iput-object p1, p0, Lcom/google/common/graph/r;->c:Lcom/google/common/graph/h;

    .line 45
    invoke-interface {p1}, Lcom/google/common/graph/h;->nodes()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/r;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final advance()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/r;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/common/graph/r;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/r;->e:Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lcom/google/common/graph/r;->c:Lcom/google/common/graph/h;

    invoke-interface {v2, v0}, Lcom/google/common/graph/h;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/r;->f:Ljava/util/Iterator;

    return v1
.end method
