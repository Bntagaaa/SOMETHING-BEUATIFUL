.class Lcom/google/common/collect/k1$a;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Iterator;

.field public final synthetic d:Lcom/google/common/collect/k1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k1;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/google/common/collect/k1$a;->d:Lcom/google/common/collect/k1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 254
    iget-object p1, p1, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/n1$a;

    iget-object p1, p1, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    iget-object p1, p1, Lcom/google/common/collect/n1;->f:Lcom/google/common/collect/Multimap;

    .line 255
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/k1$a;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/google/common/collect/k1$a;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public computeNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/k1$a;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 263
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    new-instance v2, Lcom/google/common/collect/n1$c;

    iget-object v3, p0, Lcom/google/common/collect/k1$a;->d:Lcom/google/common/collect/k1;

    iget-object v3, v3, Lcom/google/common/collect/k1;->a:Lcom/google/common/collect/n1$a;

    iget-object v3, v3, Lcom/google/common/collect/n1$a;->d:Lcom/google/common/collect/n1;

    invoke-direct {v2, v3, v1}, Lcom/google/common/collect/n1$c;-><init>(Lcom/google/common/collect/n1;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/google/common/collect/n1;->g(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 264
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
