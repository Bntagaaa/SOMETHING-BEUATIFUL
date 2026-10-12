.class Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map$Entry;

.field public b:Ljava/util/Map$Entry;

.field public final synthetic c:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;)V
    .locals 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->c:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    const/4 v0, 0x0

    .line 290
    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->a:Ljava/util/Map$Entry;

    .line 284
    iget-object p1, p1, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->d:Lcom/google/common/collect/ForwardingNavigableMap;

    .line 291
    invoke-interface {p1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->c:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    iput-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->a:Ljava/util/Map$Entry;

    .line 284
    iget-object v0, v0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->d:Lcom/google/common/collect/ForwardingNavigableMap;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;

    return-object v1

    :catchall_0
    move-exception v1

    .line 306
    iget-object v2, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;

    iput-object v2, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->a:Ljava/util/Map$Entry;

    .line 284
    iget-object v0, v0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->d:Lcom/google/common/collect/ForwardingNavigableMap;

    .line 307
    iget-object v2, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->b:Ljava/util/Map$Entry;

    .line 308
    throw v1

    .line 301
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->c:Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;

    iget-object v0, v0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap;->d:Lcom/google/common/collect/ForwardingNavigableMap;

    .line 314
    iget-object v1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardDescendingMap$a;->a:Ljava/util/Map$Entry;

    return-void
.end method
