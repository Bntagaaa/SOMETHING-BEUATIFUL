.class final Lcom/google/common/graph/Traverser$b$e;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$b$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/HashSet;

.field public final e:Lcom/google/common/graph/Traverser$c;

.field public final synthetic f:Lcom/google/common/graph/Traverser$b;


# direct methods
.method public constructor <init>(Lcom/google/common/graph/Traverser$b;Ljava/lang/Iterable;Lcom/google/common/graph/Traverser$c;)V
    .locals 2

    .line 436
    iput-object p1, p0, Lcom/google/common/graph/Traverser$b$e;->f:Lcom/google/common/graph/Traverser$b;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 432
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/Traverser$b$e;->c:Ljava/util/ArrayDeque;

    .line 433
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$b$e;->d:Ljava/util/HashSet;

    .line 437
    new-instance v0, Lcom/google/common/graph/Traverser$b$e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/google/common/graph/Traverser$b$e$a;-><init>(Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 438
    iput-object p3, p0, Lcom/google/common/graph/Traverser$b$e;->e:Lcom/google/common/graph/Traverser$c;

    return-void
.end method


# virtual methods
.method public computeNext()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/Traverser$b$e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 447
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/graph/Traverser$b$e$a;

    .line 448
    iget-object v2, p0, Lcom/google/common/graph/Traverser$b$e;->d:Ljava/util/HashSet;

    iget-object v3, v1, Lcom/google/common/graph/Traverser$b$e$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 449
    iget-object v4, v1, Lcom/google/common/graph/Traverser$b$e$a;->b:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    .line 450
    iget-object v6, p0, Lcom/google/common/graph/Traverser$b$e;->e:Lcom/google/common/graph/Traverser$c;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/google/common/graph/Traverser$c;->a:Lcom/google/common/graph/Traverser$c;

    if-eq v6, v3, :cond_3

    :cond_2
    if-nez v5, :cond_4

    sget-object v3, Lcom/google/common/graph/Traverser$c;->b:Lcom/google/common/graph/Traverser$c;

    if-ne v6, v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-nez v5, :cond_5

    .line 453
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 456
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 457
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 468
    new-instance v2, Lcom/google/common/graph/Traverser$b$e$a;

    .line 318
    iget-object v5, p0, Lcom/google/common/graph/Traverser$b$e;->f:Lcom/google/common/graph/Traverser$b;

    .line 468
    iget-object v5, v5, Lcom/google/common/graph/Traverser$b;->a:Lcom/google/common/graph/SuccessorsFunction;

    invoke-interface {v5, v4}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/google/common/graph/Traverser$b$e$a;-><init>(Ljava/lang/Object;Ljava/lang/Iterable;)V

    .line 458
    invoke-virtual {v0, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    if-eqz v3, :cond_0

    .line 461
    iget-object v0, v1, Lcom/google/common/graph/Traverser$b$e$a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0
.end method
