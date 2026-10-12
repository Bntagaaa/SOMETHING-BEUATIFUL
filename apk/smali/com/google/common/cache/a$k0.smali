.class final Lcom/google/common/cache/a$k0;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lcom/google/common/cache/f<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/cache/a$k0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3516
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3517
    new-instance v0, Lcom/google/common/cache/a$k0$a;

    .line 3518
    invoke-direct {v0}, Lcom/google/common/cache/a$d;-><init>()V

    .line 3528
    iput-object v0, v0, Lcom/google/common/cache/a$k0$a;->a:Lcom/google/common/cache/f;

    .line 3540
    iput-object v0, v0, Lcom/google/common/cache/a$k0$a;->b:Lcom/google/common/cache/f;

    .line 3517
    iput-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 3621
    iget-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    :goto_0
    if-eq v1, v0, :cond_0

    .line 3623
    invoke-interface {v1}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v2

    .line 3624
    sget-object v3, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1794
    sget-object v3, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    .line 1795
    invoke-interface {v1, v3}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1796
    invoke-interface {v1, v3}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    move-object v1, v2

    goto :goto_0

    .line 3628
    :cond_0
    invoke-interface {v0, v0}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 3629
    invoke-interface {v0, v0}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3599
    check-cast p1, Lcom/google/common/cache/f;

    .line 3600
    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object p1

    sget-object v0, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 3605
    iget-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3634
    new-instance v0, Lcom/google/common/cache/a$k0$b;

    invoke-virtual {p0}, Lcom/google/common/cache/a$k0;->peek()Lcom/google/common/cache/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/a$k0$b;-><init>(Lcom/google/common/cache/a$k0;Lcom/google/common/cache/f;)V

    return-object v0
.end method

.method public offer(Lcom/google/common/cache/f;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3558
    invoke-interface {p1}, Lcom/google/common/cache/f;->getPreviousInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    sget-object v2, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1788
    invoke-interface {v0, v1}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1789
    invoke-interface {v1, v0}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    .line 3561
    iget-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getPreviousInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    .line 1788
    invoke-interface {v1, p1}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1789
    invoke-interface {p1, v1}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1788
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1789
    invoke-interface {v0, p1}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3516
    check-cast p1, Lcom/google/common/cache/f;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$k0;->offer(Lcom/google/common/cache/f;)Z

    move-result p1

    return p1
.end method

.method public peek()Lcom/google/common/cache/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3569
    iget-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 3516
    invoke-virtual {p0}, Lcom/google/common/cache/a$k0;->peek()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lcom/google/common/cache/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3575
    iget-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3580
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/cache/a$k0;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 3516
    invoke-virtual {p0}, Lcom/google/common/cache/a$k0;->poll()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 3587
    check-cast p1, Lcom/google/common/cache/f;

    .line 3588
    invoke-interface {p1}, Lcom/google/common/cache/f;->getPreviousInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v0

    .line 3589
    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    .line 3590
    sget-object v2, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1788
    invoke-interface {v0, v1}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1789
    invoke-interface {v1, v0}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1794
    sget-object v0, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    .line 1795
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setNextInWriteQueue(Lcom/google/common/cache/f;)V

    .line 1796
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setPreviousInWriteQueue(Lcom/google/common/cache/f;)V

    if-eq v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 3

    .line 3611
    iget-object v0, p0, Lcom/google/common/cache/a$k0;->a:Lcom/google/common/cache/a$k0$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 3613
    invoke-interface {v1}, Lcom/google/common/cache/f;->getNextInWriteQueue()Lcom/google/common/cache/f;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v2
.end method
