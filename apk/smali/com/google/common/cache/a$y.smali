.class final Lcom/google/common/cache/a$y;
.super Lcom/google/common/cache/a$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/a$w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile e:J

.field public f:Lcom/google/common/cache/f;

.field public g:Lcom/google/common/cache/f;


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

    .line 1047
    iget-object v0, p0, Lcom/google/common/cache/a$y;->f:Lcom/google/common/cache/f;

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

    .line 1060
    iget-object v0, p0, Lcom/google/common/cache/a$y;->g:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1034
    iget-wide v0, p0, Lcom/google/common/cache/a$y;->e:J

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

    .line 1052
    iput-object p1, p0, Lcom/google/common/cache/a$y;->f:Lcom/google/common/cache/f;

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

    .line 1065
    iput-object p1, p0, Lcom/google/common/cache/a$y;->g:Lcom/google/common/cache/f;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    .line 1039
    iput-wide p1, p0, Lcom/google/common/cache/a$y;->e:J

    return-void
.end method
