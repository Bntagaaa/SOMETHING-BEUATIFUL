.class Lcom/google/common/graph/d0;
.super Lcom/google/common/graph/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/d0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/c0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public volatile transient c:Lcom/google/common/graph/d0$a;

.field public volatile transient d:Lcom/google/common/graph/d0$a;


# virtual methods
.method public clearCache()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/google/common/graph/c0;->clearCache()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/google/common/graph/d0;->c:Lcom/google/common/graph/d0$a;

    .line 84
    iput-object v0, p0, Lcom/google/common/graph/d0;->d:Lcom/google/common/graph/d0$a;

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/common/graph/d0;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/c0;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    new-instance v1, Lcom/google/common/graph/d0$a;

    invoke-direct {v1, p1, v0}, Lcom/google/common/graph/d0$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/google/common/graph/d0;->c:Lcom/google/common/graph/d0$a;

    iput-object p1, p0, Lcom/google/common/graph/d0;->d:Lcom/google/common/graph/d0$a;

    .line 94
    iput-object v1, p0, Lcom/google/common/graph/d0;->c:Lcom/google/common/graph/d0$a;

    :cond_1
    return-object v0
.end method

.method public getIfCached(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lcom/google/common/graph/c0;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/d0;->c:Lcom/google/common/graph/d0$a;

    if-eqz v0, :cond_1

    .line 67
    iget-object v1, v0, Lcom/google/common/graph/d0$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 68
    iget-object p1, v0, Lcom/google/common/graph/d0$a;->b:Ljava/lang/Object;

    return-object p1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/d0;->d:Lcom/google/common/graph/d0$a;

    if-eqz v0, :cond_2

    .line 71
    iget-object v1, v0, Lcom/google/common/graph/d0$a;->a:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/google/common/graph/d0;->c:Lcom/google/common/graph/d0$a;

    iput-object p1, p0, Lcom/google/common/graph/d0;->d:Lcom/google/common/graph/d0$a;

    .line 94
    iput-object v0, p0, Lcom/google/common/graph/d0;->c:Lcom/google/common/graph/d0$a;

    .line 75
    iget-object p1, v0, Lcom/google/common/graph/d0$a;->b:Ljava/lang/Object;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
