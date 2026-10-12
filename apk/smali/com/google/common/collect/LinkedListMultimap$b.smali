.class Lcom/google/common/collect/LinkedListMultimap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashSet;

.field public b:Lcom/google/common/collect/LinkedListMultimap$d;

.field public c:Lcom/google/common/collect/LinkedListMultimap$d;

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 1

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->e:Lcom/google/common/collect/LinkedListMultimap;

    .line 415
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->a:Ljava/util/HashSet;

    .line 97
    iget-object v0, p1, Lcom/google/common/collect/LinkedListMultimap;->f:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 416
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 97
    iget p1, p1, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 418
    iput p1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->d:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 421
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->d:I

    if-ne v0, v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 422
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 421
    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->d:I

    if-ne v0, v1, :cond_3

    .line 435
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_2

    .line 436
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 437
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->a:Ljava/util/HashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$d;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->b:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    return-object v0

    .line 302
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 422
    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->e:Lcom/google/common/collect/LinkedListMultimap;

    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 421
    iget v2, p0, Lcom/google/common/collect/LinkedListMultimap$b;->d:I

    if-ne v1, v2, :cond_1

    .line 447
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/g0;->e(Z)V

    .line 448
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    iget-object v1, v1, Lcom/google/common/collect/LinkedListMultimap$d;->a:Ljava/lang/Object;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/LinkedListMultimap$f;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->b(Ljava/util/Iterator;)V

    const/4 v1, 0x0

    .line 449
    iput-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$b;->c:Lcom/google/common/collect/LinkedListMultimap$d;

    .line 97
    iget v0, v0, Lcom/google/common/collect/LinkedListMultimap;->j:I

    .line 450
    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$b;->d:I

    return-void

    .line 422
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
