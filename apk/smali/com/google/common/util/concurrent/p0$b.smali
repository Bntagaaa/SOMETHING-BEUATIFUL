.class final Lcom/google/common/util/concurrent/p0$b;
.super Lcom/google/common/util/concurrent/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/z<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;

.field public final synthetic e:Lcom/google/common/util/concurrent/p0;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/p0;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$b;->e:Lcom/google/common/util/concurrent/p0;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/z;-><init>()V

    .line 115
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/p0$b;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$b;->e:Lcom/google/common/util/concurrent/p0;

    if-nez p2, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-void

    .line 133
    :cond_0
    invoke-virtual {v0, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$b;->e:Lcom/google/common/util/concurrent/p0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/FluentFuture$a;->isDone()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$b;->d:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/common/util/concurrent/p0$b;->d:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
