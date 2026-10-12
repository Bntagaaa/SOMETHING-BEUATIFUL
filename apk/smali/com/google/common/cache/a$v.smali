.class final Lcom/google/common/cache/a$v;
.super Lcom/google/common/cache/a$w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "v"
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

.field public volatile h:J

.field public i:Lcom/google/common/cache/f;

.field public j:Lcom/google/common/cache/f;


# virtual methods
.method public getAccessTime()J
    .locals 2

    .line 1080
    iget-wide v0, p0, Lcom/google/common/cache/a$v;->e:J

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

    .line 1093
    iget-object v0, p0, Lcom/google/common/cache/a$v;->f:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/google/common/cache/a$v;->i:Lcom/google/common/cache/f;

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

    .line 1106
    iget-object v0, p0, Lcom/google/common/cache/a$v;->g:Lcom/google/common/cache/f;

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

    .line 1146
    iget-object v0, p0, Lcom/google/common/cache/a$v;->j:Lcom/google/common/cache/f;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 1120
    iget-wide v0, p0, Lcom/google/common/cache/a$v;->h:J

    return-wide v0
.end method

.method public setAccessTime(J)V
    .locals 0

    .line 1085
    iput-wide p1, p0, Lcom/google/common/cache/a$v;->e:J

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

    .line 1098
    iput-object p1, p0, Lcom/google/common/cache/a$v;->f:Lcom/google/common/cache/f;

    return-void
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

    .line 1138
    iput-object p1, p0, Lcom/google/common/cache/a$v;->i:Lcom/google/common/cache/f;

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

    .line 1111
    iput-object p1, p0, Lcom/google/common/cache/a$v;->g:Lcom/google/common/cache/f;

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

    .line 1151
    iput-object p1, p0, Lcom/google/common/cache/a$v;->j:Lcom/google/common/cache/f;

    return-void
.end method

.method public setWriteTime(J)V
    .locals 0

    .line 1125
    iput-wide p1, p0, Lcom/google/common/cache/a$v;->h:J

    return-void
.end method
