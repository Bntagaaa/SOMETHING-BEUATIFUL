.class Lcom/google/common/collect/v5$c$d;
.super Lcom/google/common/collect/Maps$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$c0<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/v5$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$c;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/google/common/collect/v5$c$d;->b:Lcom/google/common/collect/v5$c;

    .line 572
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$c0;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 577
    invoke-static {p1}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2116
    sget-object v0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 577
    iget-object v0, p0, Lcom/google/common/collect/v5$c$d;->b:Lcom/google/common/collect/v5$c;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5$c;->b(Lcom/google/common/base/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 582
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2116
    sget-object v0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 582
    iget-object v0, p0, Lcom/google/common/collect/v5$c$d;->b:Lcom/google/common/collect/v5$c;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5$c;->b(Lcom/google/common/base/Predicate;)Z

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

    .line 587
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 2116
    sget-object v0, Lcom/google/common/collect/Maps$e;->b:Lcom/google/common/collect/Maps$e$b;

    invoke-static {p1, v0}, Lcom/google/common/base/Predicates;->compose(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)Lcom/google/common/base/Predicate;

    move-result-object p1

    .line 587
    iget-object v0, p0, Lcom/google/common/collect/v5$c$d;->b:Lcom/google/common/collect/v5$c;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v5$c;->b(Lcom/google/common/base/Predicate;)Z

    move-result p1

    return p1
.end method
