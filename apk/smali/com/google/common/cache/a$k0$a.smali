.class Lcom/google/common/cache/a$k0$a;
.super Lcom/google/common/cache/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a$k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/a$d<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/cache/f;

.field public b:Lcom/google/common/cache/f;


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3532
    iget-object v0, p0, Lcom/google/common/cache/a$k0$a;->a:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3544
    iget-object v0, p0, Lcom/google/common/cache/a$k0$a;->b:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3537
    iput-object p1, p0, Lcom/google/common/cache/a$k0$a;->a:Lcom/google/common/cache/f;

    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3549
    iput-object p1, p0, Lcom/google/common/cache/a$k0$a;->b:Lcom/google/common/cache/f;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    return-void
.end method
