.class Lcom/google/common/collect/Iterators$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/Iterator;

.field public b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;

.field public d:Ljava/util/ArrayDeque;


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->b:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1320
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    goto :goto_3

    .line 1321
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1322
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 1336
    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return v0

    .line 1341
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$k;->b:Ljava/util/Iterator;

    .line 1343
    instance-of v1, v0, Lcom/google/common/collect/Iterators$k;

    if-eqz v1, :cond_0

    .line 1347
    check-cast v0, Lcom/google/common/collect/Iterators$k;

    .line 1348
    iget-object v1, v0, Lcom/google/common/collect/Iterators$k;->b:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/google/common/collect/Iterators$k;->b:Ljava/util/Iterator;

    .line 1353
    iget-object v1, p0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    if-nez v1, :cond_5

    .line 1354
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    .line 1356
    :cond_5
    iget-object v1, p0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 1357
    iget-object v1, v0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    if-eqz v1, :cond_6

    .line 1358
    :goto_4
    iget-object v1, v0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1359
    iget-object v1, p0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    iget-object v2, v0, Lcom/google/common/collect/Iterators$k;->d:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    .line 1362
    :cond_6
    iget-object v0, v0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$k;->c:Ljava/util/Iterator;

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Lcom/google/common/collect/Iterators$k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->b:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/collect/Iterators$k;->a:Ljava/util/Iterator;

    .line 1372
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1374
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1380
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->a:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 1381
    iget-object v0, p0, Lcom/google/common/collect/Iterators$k;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x0

    .line 1382
    iput-object v0, p0, Lcom/google/common/collect/Iterators$k;->a:Ljava/util/Iterator;

    return-void
.end method
