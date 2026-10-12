.class abstract Lcom/google/common/util/concurrent/n;
.super Lcom/google/common/util/concurrent/i;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/i<",
        "TV;TC;>;"
    }
.end annotation


# instance fields
.field public p:Ljava/util/AbstractCollection;


# virtual methods
.method public abstract combine(Ljava/util/List;)Ljava/lang/Object;
.end method

.method public final k(ILjava/lang/Object;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/common/util/concurrent/n;->p:Ljava/util/AbstractCollection;

    if-eqz v0, :cond_0

    .line 53
    invoke-static {p2}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/common/util/concurrent/n;->p:Ljava/util/AbstractCollection;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/n;->combine(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/common/util/concurrent/i$a;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/i;->o(Lcom/google/common/util/concurrent/i$a;)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/google/common/util/concurrent/n;->p:Ljava/util/AbstractCollection;

    return-void
.end method
