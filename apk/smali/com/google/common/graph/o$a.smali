.class Lcom/google/common/graph/o$a;
.super Lcom/google/common/graph/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/o;->edgesConnecting(Ljava/lang/Object;)Ljava/util/Set;
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

.field public final synthetic d:Lcom/google/common/graph/o;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/o;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/common/graph/o$a;->d:Lcom/google/common/graph/o;

    iput-object p4, p0, Lcom/google/common/graph/o$a;->c:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/google/common/graph/e0;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/google/common/graph/o$a;->d:Lcom/google/common/graph/o;

    .line 86
    iget-object v1, v0, Lcom/google/common/graph/o;->e:Ljava/lang/ref/SoftReference;

    invoke-static {v1}, Lcom/google/common/graph/o;->a(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset;

    if-nez v1, :cond_0

    .line 88
    iget-object v1, v0, Lcom/google/common/graph/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/HashMultiset;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/HashMultiset;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/google/common/graph/o;->e:Ljava/lang/ref/SoftReference;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/o$a;->c:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
