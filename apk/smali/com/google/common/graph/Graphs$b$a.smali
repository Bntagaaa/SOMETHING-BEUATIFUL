.class Lcom/google/common/graph/Graphs$b$a;
.super Lcom/google/common/graph/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Graphs$b;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/b0<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/google/common/graph/Graphs$b;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Graphs$b;Lcom/google/common/graph/Graphs$b;Ljava/lang/Object;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/google/common/graph/Graphs$b$a;->c:Lcom/google/common/graph/Graphs$b;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/b0;-><init>(Lcom/google/common/graph/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
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

    .line 287
    iget-object v0, p0, Lcom/google/common/graph/Graphs$b$a;->c:Lcom/google/common/graph/Graphs$b;

    .line 288
    invoke-virtual {v0}, Lcom/google/common/graph/Graphs$b;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/b0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/Graph;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/graph/Graphs$b$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/graph/Graphs$b$a$a;-><init>(Lcom/google/common/graph/Graphs$b$a;)V

    .line 287
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
