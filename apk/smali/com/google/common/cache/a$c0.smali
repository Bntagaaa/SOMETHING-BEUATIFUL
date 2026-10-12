.class final Lcom/google/common/cache/a$c0;
.super Lcom/google/common/cache/a$e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c0"
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
.method public getAccessTime()J
    .locals 2

    .line 1276
    iget-wide v0, p0, Lcom/google/common/cache/a$c0;->d:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/google/common/cache/a$c0;->e:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Lcom/google/common/cache/a$c0;->f:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 0

    .line 1281
    iput-wide p1, p0, Lcom/google/common/cache/a$c0;->d:J

    return-void
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/google/common/cache/a$c0;->e:Lcom/google/common/cache/f;

    return-void
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1307
    iput-object p1, p0, Lcom/google/common/cache/a$c0;->f:Lcom/google/common/cache/f;

    return-void
.end method
