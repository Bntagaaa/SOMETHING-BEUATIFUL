.class final Lcom/google/common/util/concurrent/AbstractFuture$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/common/util/concurrent/AbstractFuture;

.field public final b:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$g;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 319
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$g;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 68
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$g;->b:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 68
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->f(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->f:Lcom/google/common/util/concurrent/AbstractFuture$b;

    .line 329
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture$g;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;->b(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$g;->a:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 68
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->c(Lcom/google/common/util/concurrent/AbstractFuture;)V

    :cond_1
    :goto_0
    return-void
.end method
