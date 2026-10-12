.class Lcom/google/common/graph/n$b;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/n;->predecessors()Ljava/util/Set;
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

    .line 270
    iput-object p1, p0, Lcom/google/common/graph/n$b;->a:Lcom/google/common/graph/n;

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
    iget-object v0, p0, Lcom/google/common/graph/n$b;->a:Lcom/google/common/graph/n;

    .line 311
    iget-object v0, v0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 544
    sget-object v0, Lcom/google/common/graph/n;->e:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    instance-of p1, p1, Lcom/google/common/graph/n$j;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TN;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/n$b;->a:Lcom/google/common/graph/n;

    iget-object v1, v0, Lcom/google/common/graph/n;->b:Ljava/util/AbstractCollection;

    if-nez v1, :cond_0

    .line 274
    iget-object v0, v0, Lcom/google/common/graph/n;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    new-instance v1, Lcom/google/common/graph/n$b$a;

    invoke-direct {v1, v0}, Lcom/google/common/graph/n$b$a;-><init>(Ljava/util/Iterator;)V

    return-object v1

    .line 288
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 289
    new-instance v1, Lcom/google/common/graph/n$b$b;

    invoke-direct {v1, v0}, Lcom/google/common/graph/n$b$b;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/google/common/graph/n$b;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/n$b;->a:Lcom/google/common/graph/n;

    iget v0, v0, Lcom/google/common/graph/n;->c:I

    return v0
.end method
