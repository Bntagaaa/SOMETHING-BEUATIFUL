.class Lcom/google/common/collect/n1$b$a;
.super Lcom/google/common/collect/Multisets$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n1$b;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$h<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/n1$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n1$b;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/google/common/collect/n1$b$a;->a:Lcom/google/common/collect/n1$b;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/Multiset;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/n1$b$a;->a:Lcom/google/common/collect/n1$b;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TK;>;>;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/google/common/collect/n1$b$a;->a:Lcom/google/common/collect/n1$b;

    invoke-virtual {v0}, Lcom/google/common/collect/Multimaps$g;->d()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
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

    .line 406
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/n1$b$a;->a:Lcom/google/common/collect/n1$b;

    new-instance v1, Lcom/google/common/collect/o1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/o1;-><init>(Lcom/google/common/base/Predicate;)V

    iget-object p1, v0, Lcom/google/common/collect/n1$b;->d:Lcom/google/common/collect/n1;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

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

    .line 411
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 394
    iget-object v0, p0, Lcom/google/common/collect/n1$b$a;->a:Lcom/google/common/collect/n1$b;

    new-instance v1, Lcom/google/common/collect/o1;

    invoke-direct {v1, p1}, Lcom/google/common/collect/o1;-><init>(Lcom/google/common/base/Predicate;)V

    iget-object p1, v0, Lcom/google/common/collect/n1$b;->d:Lcom/google/common/collect/n1;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/n1;->h(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/common/collect/n1$b$a;->a:Lcom/google/common/collect/n1$b;

    iget-object v0, v0, Lcom/google/common/collect/n1$b;->d:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/l;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
