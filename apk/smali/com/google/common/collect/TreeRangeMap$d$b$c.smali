.class Lcom/google/common/collect/TreeRangeMap$d$b$c;
.super Lcom/google/common/collect/Maps$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$d$b;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$c0<",
        "Lcom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/TreeRangeMap$d$b;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/TreeRangeMap$d$b;Ljava/util/Map;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$d$b$c;->b:Lcom/google/common/collect/TreeRangeMap$d$b;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$c0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 683
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    sget-object v0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b$c;->b:Lcom/google/common/collect/TreeRangeMap$d$b;

    invoke-static {v0, p1}, Lcom/google/common/collect/TreeRangeMap$d$b;->a(Lcom/google/common/collect/TreeRangeMap$d$b;Lcom/google/common/base/Predicate;)Z

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

    .line 688
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    sget-object v0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$d$b$c;->b:Lcom/google/common/collect/TreeRangeMap$d$b;

    invoke-static {v0, p1}, Lcom/google/common/collect/TreeRangeMap$d$b;->a(Lcom/google/common/collect/TreeRangeMap$d$b;Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
