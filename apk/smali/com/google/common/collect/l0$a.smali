.class Lcom/google/common/collect/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/l0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/l0;)V
    .locals 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/l0$a;->d:Lcom/google/common/collect/l0;

    .line 71
    iget v0, p1, Lcom/google/common/collect/l0;->d:I

    .line 444
    iput v0, p0, Lcom/google/common/collect/l0$a;->a:I

    .line 445
    invoke-virtual {p1}, Lcom/google/common/collect/l0;->c()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/l0$a;->b:I

    const/4 p1, -0x1

    .line 446
    iput p1, p0, Lcom/google/common/collect/l0$a;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 450
    iget v0, p0, Lcom/google/common/collect/l0$a;->b:I

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
            "()TE;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/common/collect/l0$a;->d:Lcom/google/common/collect/l0;

    iget v1, v0, Lcom/google/common/collect/l0;->d:I

    .line 481
    iget v2, p0, Lcom/google/common/collect/l0$a;->a:I

    if-ne v1, v2, :cond_1

    .line 457
    invoke-virtual {p0}, Lcom/google/common/collect/l0$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget v1, p0, Lcom/google/common/collect/l0$a;->b:I

    iput v1, p0, Lcom/google/common/collect/l0$a;->c:I

    .line 461
    iget-object v2, v0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 462
    invoke-virtual {v0, v1}, Lcom/google/common/collect/l0;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/l0$a;->b:I

    return-object v2

    .line 458
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 482
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/google/common/collect/l0$a;->d:Lcom/google/common/collect/l0;

    iget v1, v0, Lcom/google/common/collect/l0;->d:I

    .line 481
    iget v2, p0, Lcom/google/common/collect/l0$a;->a:I

    if-ne v1, v2, :cond_1

    .line 469
    iget v1, p0, Lcom/google/common/collect/l0$a;->c:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/collect/g0;->e(Z)V

    .line 477
    iget v1, p0, Lcom/google/common/collect/l0$a;->a:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/collect/l0$a;->a:I

    .line 471
    iget-object v1, v0, Lcom/google/common/collect/l0;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/l0$a;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/l0;->remove(Ljava/lang/Object;)Z

    .line 472
    iget v1, p0, Lcom/google/common/collect/l0$a;->b:I

    iget v2, p0, Lcom/google/common/collect/l0$a;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/l0;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/l0$a;->b:I

    const/4 v0, -0x1

    .line 473
    iput v0, p0, Lcom/google/common/collect/l0$a;->c:I

    return-void

    .line 482
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
