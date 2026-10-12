.class Lcom/google/common/collect/k1;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/n1$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1$a;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/n1$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/n1$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 253
    new-instance v0, Lcom/google/common/collect/k1$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k1$a;-><init>(Lcom/google/common/collect/k1;)V

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/n1$a;

    iget-object v0, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/n1$a;

    iget-object v0, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/google/common/collect/k1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
