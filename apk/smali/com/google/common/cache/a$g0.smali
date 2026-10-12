.class final Lcom/google/common/cache/a$g0;
.super Lcom/google/common/cache/a$e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/a$e0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile d:J

.field public e:Lcom/google/common/cache/f;

.field public f:Lcom/google/common/cache/f;


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

    .line 1336
    iget-object v0, p0, Lcom/google/common/cache/a$g0;->e:Lcom/google/common/cache/f;

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

    .line 1349
    iget-object v0, p0, Lcom/google/common/cache/a$g0;->f:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1323
    iget-wide v0, p0, Lcom/google/common/cache/a$g0;->d:J

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

    .line 1341
    iput-object p1, p0, Lcom/google/common/cache/a$g0;->e:Lcom/google/common/cache/f;

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

    .line 1354
    iput-object p1, p0, Lcom/google/common/cache/a$g0;->f:Lcom/google/common/cache/f;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    .line 1328
    iput-wide p1, p0, Lcom/google/common/cache/a$g0;->d:J

    return-void
.end method
