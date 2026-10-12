.class Lcom/google/common/graph/n$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/n;->incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/graph/n$i<",
        "TN;>;",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/n$f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/graph/n$i;)Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/n$i<",
            "TN;>;)",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 393
    instance-of v0, p1, Lcom/google/common/graph/n$i$b;

    iget-object v1, p0, Lcom/google/common/graph/n$f;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 394
    iget-object p1, p1, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    invoke-static {v1, p1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1

    .line 396
    :cond_0
    iget-object p1, p1, Lcom/google/common/graph/n$i;->a:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    check-cast p1, Lcom/google/common/graph/n$i;

    invoke-virtual {p0, p1}, Lcom/google/common/graph/n$f;->apply(Lcom/google/common/graph/n$i;)Lcom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
