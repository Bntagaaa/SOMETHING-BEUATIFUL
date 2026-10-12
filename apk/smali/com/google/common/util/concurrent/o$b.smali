.class final Lcom/google/common/util/concurrent/o$b;
.super Lcom/google/common/util/concurrent/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/o<",
        "TV;>.c<TV;>;"
    }
.end annotation


# instance fields
.field public final g:Ljava/util/concurrent/Callable;

.field public final synthetic h:Lcom/google/common/util/concurrent/o;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/o;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/common/util/concurrent/o$b;->h:Lcom/google/common/util/concurrent/o;

    .line 181
    invoke-direct {p0, p1, p3}, Lcom/google/common/util/concurrent/o$c;-><init>(Lcom/google/common/util/concurrent/o;Ljava/util/concurrent/Executor;)V

    .line 182
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/o$b;->g:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/o$c;->e:Z

    .line 188
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$b;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$b;->g:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/common/util/concurrent/o$b;->h:Lcom/google/common/util/concurrent/o;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
