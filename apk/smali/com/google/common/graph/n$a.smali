.class Lcom/google/common/graph/n$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/n;->adjacentNodes()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/graph/n;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/n;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/common/graph/n$a;->a:Lcom/google/common/graph/n;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/n$a;->a:Lcom/google/common/graph/n;

    iget-object v0, v0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    .line 262
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/n$a;->a:Lcom/google/common/graph/n;

    iget-object v0, v0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 239
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 240
    new-instance v2, Lcom/google/common/graph/n$a$a;

    invoke-direct {v2, v0, v1}, Lcom/google/common/graph/n$a$a;-><init>(Ljava/util/Iterator;Ljava/util/HashSet;)V

    return-object v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/google/common/graph/n$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/n$a;->a:Lcom/google/common/graph/n;

    iget-object v0, v0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    .line 257
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
