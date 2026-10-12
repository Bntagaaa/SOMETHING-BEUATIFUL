.class abstract Lcom/google/common/collect/m3$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "i"
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
.field public a:I

.field public b:I

.field public c:Lcom/google/common/collect/m3$o;

.field public d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public e:Lcom/google/common/collect/m3$j;

.field public f:Lcom/google/common/collect/m3$j0;

.field public g:Lcom/google/common/collect/m3$j0;

.field public final synthetic h:Lcom/google/common/collect/m3;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m3;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m3$i;->h:Lcom/google/common/collect/m3;

    .line 2516
    iget-object p1, p1, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/m3$i;->a:I

    const/4 p1, -0x1

    .line 2517
    iput p1, p0, Lcom/google/common/collect/m3$i;->b:I

    .line 2518
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    .line 2525
    iput-object v0, p0, Lcom/google/common/collect/m3$i;->f:Lcom/google/common/collect/m3$j0;

    .line 2527
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2531
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2535
    :cond_1
    iget v0, p0, Lcom/google/common/collect/m3$i;->a:I

    if-ltz v0, :cond_2

    .line 2536
    iget-object v1, p0, Lcom/google/common/collect/m3$i;->h:Lcom/google/common/collect/m3;

    iget-object v1, v1, Lcom/google/common/collect/m3;->c:[Lcom/google/common/collect/m3$o;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/m3$i;->a:I

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/google/common/collect/m3$i;->c:Lcom/google/common/collect/m3$o;

    .line 2537
    iget v0, v0, Lcom/google/common/collect/m3$o;->b:I

    if-eqz v0, :cond_1

    .line 2538
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->c:Lcom/google/common/collect/m3$o;

    iget-object v0, v0, Lcom/google/common/collect/m3$o;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/m3$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2539
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/m3$i;->b:I

    .line 2540
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lcom/google/common/collect/m3$j;)Z
    .locals 3

    .line 2577
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->h:Lcom/google/common/collect/m3;

    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1124
    invoke-interface {p1}, Lcom/google/common/collect/m3$j;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1127
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/m3$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 2580
    new-instance v2, Lcom/google/common/collect/m3$j0;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/common/collect/m3$j0;-><init>(Lcom/google/common/collect/m3;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/google/common/collect/m3$i;->f:Lcom/google/common/collect/m3$j0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2587
    iget-object p1, p0, Lcom/google/common/collect/m3$i;->c:Lcom/google/common/collect/m3$o;

    invoke-virtual {p1}, Lcom/google/common/collect/m3$o;->g()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/common/collect/m3$i;->c:Lcom/google/common/collect/m3$o;

    invoke-virtual {p1}, Lcom/google/common/collect/m3$o;->g()V

    const/4 p1, 0x0

    return p1

    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->c:Lcom/google/common/collect/m3$o;

    invoke-virtual {v0}, Lcom/google/common/collect/m3$o;->g()V

    .line 2588
    throw p1
.end method

.method public final c()Lcom/google/common/collect/m3$j0;
    .locals 1

    .line 2597
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->f:Lcom/google/common/collect/m3$j0;

    if-eqz v0, :cond_0

    .line 2600
    iput-object v0, p0, Lcom/google/common/collect/m3$i;->g:Lcom/google/common/collect/m3$j0;

    .line 2601
    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->a()V

    .line 2602
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->g:Lcom/google/common/collect/m3$j0;

    return-object v0

    .line 2598
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final d()Z
    .locals 1

    .line 2549
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->e:Lcom/google/common/collect/m3$j;

    if-eqz v0, :cond_1

    .line 2550
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/m3$j;->getNext()Lcom/google/common/collect/m3$j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/m3$i;->e:Lcom/google/common/collect/m3$j;

    iget-object v0, p0, Lcom/google/common/collect/m3$i;->e:Lcom/google/common/collect/m3$j;

    if-eqz v0, :cond_1

    .line 2551
    invoke-virtual {p0, v0}, Lcom/google/common/collect/m3$i;->b(Lcom/google/common/collect/m3$j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2550
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->e:Lcom/google/common/collect/m3$j;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 3

    .line 2561
    :cond_0
    iget v0, p0, Lcom/google/common/collect/m3$i;->b:I

    if-ltz v0, :cond_2

    .line 2562
    iget-object v1, p0, Lcom/google/common/collect/m3$i;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/m3$i;->b:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/m3$j;

    iput-object v0, p0, Lcom/google/common/collect/m3$i;->e:Lcom/google/common/collect/m3$j;

    if-eqz v0, :cond_0

    .line 2563
    invoke-virtual {p0, v0}, Lcom/google/common/collect/m3$i;->b(Lcom/google/common/collect/m3$j;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/m3$i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 2593
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->f:Lcom/google/common/collect/m3$j0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 2607
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->g:Lcom/google/common/collect/m3$j0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/g0;->e(Z)V

    .line 2608
    iget-object v0, p0, Lcom/google/common/collect/m3$i;->g:Lcom/google/common/collect/m3$j0;

    invoke-virtual {v0}, Lcom/google/common/collect/m3$j0;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/m3$i;->h:Lcom/google/common/collect/m3;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/m3;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2609
    iput-object v0, p0, Lcom/google/common/collect/m3$i;->g:Lcom/google/common/collect/m3$j0;

    return-void
.end method
