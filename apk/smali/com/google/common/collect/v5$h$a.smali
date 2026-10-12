.class Lcom/google/common/collect/v5$h$a;
.super Lcom/google/common/collect/v5$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/v5<",
        "TR;TC;TV;>.i<",
        "Ljava/util/Map$Entry<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/v5$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$h;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/google/common/collect/v5$h$a;->b:Lcom/google/common/collect/v5$h;

    iget-object p1, p1, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    invoke-direct {p0, p1}, Lcom/google/common/collect/v5$i;-><init>(Lcom/google/common/collect/v5;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 784
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 785
    check-cast p1, Ljava/util/Map$Entry;

    .line 786
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/v5$h$a;->b:Lcom/google/common/collect/v5$h;

    iget-object v0, v0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 788
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Collections2;->c(Ljava/lang/Object;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/google/common/collect/v5$h$a;->b:Lcom/google/common/collect/v5$h;

    iget-object v0, v0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 768
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/v5$h$a$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/v5$h$a$a;-><init>(Lcom/google/common/collect/v5$h$a;)V

    .line 845
    new-instance v2, Lcom/google/common/collect/t3;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/t3;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 795
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 796
    check-cast p1, Ljava/util/Map$Entry;

    .line 797
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 798
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/v5$h$a;->b:Lcom/google/common/collect/v5$h;

    iget-object v0, v0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    .line 799
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/google/common/collect/v5$h$a;->b:Lcom/google/common/collect/v5$h;

    iget-object v0, v0, Lcom/google/common/collect/v5$h;->d:Lcom/google/common/collect/v5;

    iget-object v0, v0, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
