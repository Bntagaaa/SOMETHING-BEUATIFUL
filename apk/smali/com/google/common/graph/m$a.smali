.class Lcom/google/common/graph/m$a;
.super Lcom/google/common/graph/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/m;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
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
.field public final synthetic c:Lcom/google/common/graph/v;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/m;Ljava/lang/Object;Lcom/google/common/graph/v;)V
    .locals 0

    .line 122
    iput-object p3, p0, Lcom/google/common/graph/m$a;->c:Lcom/google/common/graph/v;

    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/b0;-><init>(Lcom/google/common/graph/a;Ljava/lang/Object;)V

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

    .line 125
    iget-object v0, p0, Lcom/google/common/graph/m$a;->c:Lcom/google/common/graph/v;

    iget-object v1, p0, Lcom/google/common/graph/b0;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/google/common/graph/v;->incidentEdgeIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
