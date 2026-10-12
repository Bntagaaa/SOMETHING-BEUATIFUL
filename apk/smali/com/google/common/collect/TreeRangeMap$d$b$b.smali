.class Lcom/google/common/collect/TreeRangeMap$d$b$b;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$d$b;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/collect/TreeRangeMap$d$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap$d$b;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$d$b$b;->a:Lcom/google/common/collect/TreeRangeMap$d$b;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b$b;->a:Lcom/google/common/collect/TreeRangeMap$d$b;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$d$b$b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b$b;->a:Lcom/google/common/collect/TreeRangeMap$d$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$d$b;->b()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
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

    .line 636
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b$b;->a:Lcom/google/common/collect/TreeRangeMap$d$b;

    invoke-static {v0, p1}, Lcom/google/common/collect/TreeRangeMap$d$b;->a(Lcom/google/common/collect/TreeRangeMap$d$b;Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 641
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$d$b$b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
