.class Lcom/google/common/collect/n1$b;
.super Lcom/google/common/collect/Multimaps$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/google/common/collect/n1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/google/common/collect/n1$b;->d:Lcom/google/common/collect/n1;

    .line 345
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$g;-><init>(Lcom/google/common/collect/Multimap;)V

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 376
    new-instance v0, Lcom/google/common/collect/n1$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n1$b$a;-><init>(Lcom/google/common/collect/n1$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 350
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/g0;->b(ILjava/lang/String;)V

    if-nez p2, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$g;->count(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/n1$b;->d:Lcom/google/common/collect/n1;

    iget-object v1, v0, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 361
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 362
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 70
    iget-object v4, v0, Lcom/google/common/collect/n1;->g:Lcom/google/common/base/Predicate;

    .line 70
    invoke-static {p1, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_2

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return v2
.end method
