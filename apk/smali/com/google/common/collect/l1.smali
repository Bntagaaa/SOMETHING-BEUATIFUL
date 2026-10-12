.class Lcom/google/common/collect/l1;
.super Lcom/google/common/collect/Maps$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/n1$a;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1$a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/google/common/collect/l1;->b:Lcom/google/common/collect/n1$a;

    .line 221
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 236
    iget-object v0, p0, Lcom/google/common/collect/l1;->b:Lcom/google/common/collect/n1$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1$a;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/google/common/collect/l1;->b:Lcom/google/common/collect/n1$a;

    iget-object v0, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2112
    sget-object v1, Lcom/google/common/collect/Maps$e;->a:Lcom/google/common/collect/Maps$e$a;

    invoke-static {p1, v1}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 226
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/l1;->b:Lcom/google/common/collect/n1$a;

    iget-object v0, v0, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2112
    sget-object v1, Lcom/google/common/collect/Maps$e;->a:Lcom/google/common/collect/Maps$e$a;

    invoke-static {p1, v1}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 231
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
