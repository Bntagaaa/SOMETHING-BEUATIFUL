.class Lcom/google/common/collect/v5$c$b;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/v5$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/collect/v5$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v5$c;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/google/common/collect/v5$c$b;->d:Lcom/google/common/collect/v5$c;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 506
    iget-object p1, p1, Lcom/google/common/collect/v5$c;->e:Lcom/google/common/collect/v5;

    iget-object p1, p1, Lcom/google/common/collect/v5;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/v5$c$b;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/google/common/collect/v5$c$b;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TR;TV;>;"
        }
    .end annotation

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/v5$c$b;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/google/common/collect/v5$c$b;->d:Lcom/google/common/collect/v5$c;

    iget-object v2, v2, Lcom/google/common/collect/v5$c;->d:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Lcom/google/common/collect/v5$c$b$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/v5$c$b$a;-><init>(Lcom/google/common/collect/v5$c$b;Ljava/util/Map$Entry;)V

    return-object v1

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
