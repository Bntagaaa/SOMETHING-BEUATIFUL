.class abstract Lcom/google/common/collect/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
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

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/k0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k0;)V
    .locals 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/k0$b;->d:Lcom/google/common/collect/k0;

    .line 76
    iget v0, p1, Lcom/google/common/collect/k0;->e:I

    .line 556
    iput v0, p0, Lcom/google/common/collect/k0$b;->a:I

    .line 557
    invoke-virtual {p1}, Lcom/google/common/collect/k0;->g()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/k0$b;->b:I

    const/4 p1, -0x1

    .line 558
    iput p1, p0, Lcom/google/common/collect/k0$b;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public hasNext()Z
    .locals 1

    .line 562
    iget v0, p0, Lcom/google/common/collect/k0$b;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/common/collect/k0$b;->d:Lcom/google/common/collect/k0;

    iget v1, v0, Lcom/google/common/collect/k0;->e:I

    .line 594
    iget v2, p0, Lcom/google/common/collect/k0$b;->a:I

    if-ne v1, v2, :cond_1

    .line 570
    invoke-virtual {p0}, Lcom/google/common/collect/k0$b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    iget v1, p0, Lcom/google/common/collect/k0$b;->b:I

    iput v1, p0, Lcom/google/common/collect/k0$b;->c:I

    .line 574
    invoke-virtual {p0, v1}, Lcom/google/common/collect/k0$b;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 575
    iget v2, p0, Lcom/google/common/collect/k0$b;->b:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/k0;->h(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k0$b;->b:I

    return-object v1

    .line 571
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 595
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/google/common/collect/k0$b;->d:Lcom/google/common/collect/k0;

    iget v1, v0, Lcom/google/common/collect/k0;->e:I

    .line 594
    iget v2, p0, Lcom/google/common/collect/k0$b;->a:I

    if-ne v1, v2, :cond_1

    .line 582
    iget v1, p0, Lcom/google/common/collect/k0$b;->c:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/g0;->e(Z)V

    .line 590
    iget v1, p0, Lcom/google/common/collect/k0$b;->a:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/collect/k0$b;->a:I

    .line 584
    iget-object v1, v0, Lcom/google/common/collect/k0;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/k0$b;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/k0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget v1, p0, Lcom/google/common/collect/k0$b;->b:I

    iget v2, p0, Lcom/google/common/collect/k0$b;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/k0;->b(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/k0$b;->b:I

    const/4 v0, -0x1

    .line 586
    iput v0, p0, Lcom/google/common/collect/k0$b;->c:I

    return-void

    .line 595
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
