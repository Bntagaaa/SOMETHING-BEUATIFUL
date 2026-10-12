.class Lcom/google/common/util/concurrent/Striped$l;
.super Lcom/google/common/util/concurrent/Striped$k;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$k<",
        "T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field public final e:Lcom/google/common/base/Supplier;

.field public final f:I

.field public final g:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 1

    .line 444
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$k;-><init>(I)V

    .line 441
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Striped$l;->g:Ljava/lang/ref/ReferenceQueue;

    .line 445
    iget p1, p0, Lcom/google/common/util/concurrent/Striped$k;->c:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/google/common/util/concurrent/Striped$l;->f:I

    .line 446
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 447
    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$l;->e:Lcom/google/common/base/Supplier;

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .line 452
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$l;->f:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$l;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$l;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Striped$l$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_2

    return-object v3

    .line 460
    :cond_2
    iget-object v3, p0, Lcom/google/common/util/concurrent/Striped$l;->e:Lcom/google/common/base/Supplier;

    invoke-interface {v3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    .line 461
    new-instance v4, Lcom/google/common/util/concurrent/Striped$l$a;

    iget-object v5, p0, Lcom/google/common/util/concurrent/Striped$l;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v3, v5, p1}, Lcom/google/common/util/concurrent/Striped$l$a;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    .line 462
    :cond_3
    invoke-virtual {v0, p1, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 479
    :goto_1
    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 481
    check-cast p1, Lcom/google/common/util/concurrent/Striped$l$a;

    .line 484
    :cond_4
    iget v1, p1, Lcom/google/common/util/concurrent/Striped$l$a;->a:I

    invoke-virtual {v0, v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_4

    goto :goto_1

    :cond_6
    return-object v3

    .line 462
    :cond_7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v1, :cond_3

    .line 464
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Striped$l$a;

    if-nez v1, :cond_8

    move-object v6, v2

    goto :goto_2

    .line 465
    :cond_8
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_3

    return-object v6
.end method

.method public size()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$l;->f:I

    return v0
.end method
