.class Lcom/google/common/graph/h0$a;
.super Lcom/google/common/graph/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/h0;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/e0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/google/common/graph/h0;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/h0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/google/common/graph/h0$a;->d:Lcom/google/common/graph/h0;

    iput-object p4, p0, Lcom/google/common/graph/h0$a;->c:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/e0;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/google/common/graph/h0$a;->d:Lcom/google/common/graph/h0;

    .line 66
    iget-object v1, v0, Lcom/google/common/graph/h0;->b:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 66
    :goto_0
    check-cast v1, Lcom/google/common/collect/Multiset;

    if-nez v1, :cond_1

    .line 68
    iget-object v1, v0, Lcom/google/common/graph/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v1

    .line 69
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/google/common/graph/h0;->b:Ljava/lang/ref/SoftReference;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/h0$a;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
