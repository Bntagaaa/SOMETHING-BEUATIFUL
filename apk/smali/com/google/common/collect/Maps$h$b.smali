.class Lcom/google/common/collect/Maps$h$b;
.super Lcom/google/common/collect/Maps$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Maps$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$h;)V
    .locals 0

    .line 2783
    iput-object p1, p0, Lcom/google/common/collect/Maps$h$b;->b:Lcom/google/common/collect/Maps$h;

    .line 2784
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 2789
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$b;->b:Lcom/google/common/collect/Maps$h;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2790
    iget-object v0, v0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 2798
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$b;->b:Lcom/google/common/collect/Maps$h;

    iget-object v1, v0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$a;->e:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$h;->c(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

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

    .line 2803
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$b;->b:Lcom/google/common/collect/Maps$h;

    iget-object v1, v0, Lcom/google/common/collect/Maps$a;->d:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/common/collect/Maps$a;->e:Lcom/google/common/base/Predicate;

    invoke-static {v1, v0, p1}, Lcom/google/common/collect/Maps$h;->d(Ljava/util/Map;Lcom/google/common/base/Predicate;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 2809
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 2814
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$n;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
