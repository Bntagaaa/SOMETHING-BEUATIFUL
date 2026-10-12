.class final Lcom/google/common/cache/a$e;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
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
.field public final a:Lcom/google/common/cache/a$e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3655
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3656
    new-instance v0, Lcom/google/common/cache/a$e$a;

    .line 3657
    invoke-direct {v0}, Lcom/google/common/cache/a$d;-><init>()V

    .line 3667
    iput-object v0, v0, Lcom/google/common/cache/a$e$a;->a:Lcom/google/common/cache/f;

    .line 3679
    iput-object v0, v0, Lcom/google/common/cache/a$e$a;->b:Lcom/google/common/cache/f;

    .line 3656
    iput-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 3760
    iget-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    :goto_0
    if-eq v1, v0, :cond_0

    .line 3762
    invoke-interface {v1}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v2

    .line 3763
    sget-object v3, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1781
    sget-object v3, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    .line 1782
    invoke-interface {v1, v3}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1783
    invoke-interface {v1, v3}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    move-object v1, v2

    goto :goto_0

    .line 3767
    :cond_0
    invoke-interface {v0, v0}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 3768
    invoke-interface {v0, v0}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 3738
    check-cast p1, Lcom/google/common/cache/f;

    .line 3739
    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

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

    .line 3744
    iget-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

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

    .line 3773
    new-instance v0, Lcom/google/common/cache/a$e$b;

    invoke-virtual {p0}, Lcom/google/common/cache/a$e;->peek()Lcom/google/common/cache/f;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/cache/a$e$b;-><init>(Lcom/google/common/cache/a$e;Lcom/google/common/cache/f;)V

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

    .line 3697
    invoke-interface {p1}, Lcom/google/common/cache/f;->getPreviousInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    sget-object v2, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1775
    invoke-interface {v0, v1}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1776
    invoke-interface {v1, v0}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    .line 3700
    iget-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getPreviousInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    .line 1775
    invoke-interface {v1, p1}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1776
    invoke-interface {p1, v1}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1775
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1776
    invoke-interface {v0, p1}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3655
    check-cast p1, Lcom/google/common/cache/f;

    invoke-virtual {p0, p1}, Lcom/google/common/cache/a$e;->offer(Lcom/google/common/cache/f;)Z

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

    .line 3708
    iget-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 3655
    invoke-virtual {p0}, Lcom/google/common/cache/a$e;->peek()Lcom/google/common/cache/f;

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

    .line 3714
    iget-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3719
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/common/cache/a$e;->remove(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 3655
    invoke-virtual {p0}, Lcom/google/common/cache/a$e;->poll()Lcom/google/common/cache/f;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 3726
    check-cast p1, Lcom/google/common/cache/f;

    .line 3727
    invoke-interface {p1}, Lcom/google/common/cache/f;->getPreviousInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v0

    .line 3728
    invoke-interface {p1}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    .line 3729
    sget-object v2, Lcom/google/common/cache/a;->w:Ljava/util/logging/Logger;

    .line 1775
    invoke-interface {v0, v1}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1776
    invoke-interface {v1, v0}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1781
    sget-object v0, Lcom/google/common/cache/a$q;->a:Lcom/google/common/cache/a$q;

    .line 1782
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setNextInAccessQueue(Lcom/google/common/cache/f;)V

    .line 1783
    invoke-interface {p1, v0}, Lcom/google/common/cache/f;->setPreviousInAccessQueue(Lcom/google/common/cache/f;)V

    if-eq v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 3

    .line 3750
    iget-object v0, p0, Lcom/google/common/cache/a$e;->a:Lcom/google/common/cache/a$e$a;

    invoke-interface {v0}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 3752
    invoke-interface {v1}, Lcom/google/common/cache/f;->getNextInAccessQueue()Lcom/google/common/cache/f;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v2
.end method
