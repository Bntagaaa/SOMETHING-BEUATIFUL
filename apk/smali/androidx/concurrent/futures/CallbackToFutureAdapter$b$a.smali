.class Landroidx/concurrent/futures/CallbackToFutureAdapter$b$a;
.super Landroidx/concurrent/futures/AbstractResolvableFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/concurrent/futures/CallbackToFutureAdapter$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/concurrent/futures/AbstractResolvableFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Landroidx/concurrent/futures/CallbackToFutureAdapter$b;


# direct methods
.method public constructor <init>(Landroidx/concurrent/futures/CallbackToFutureAdapter$b;)V
    .locals 0

    .line 147
    iput-object p1, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$b$a;->h:Landroidx/concurrent/futures/CallbackToFutureAdapter$b;

    invoke-direct {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public pendingToString()Ljava/lang/String;
    .locals 3

    .line 151
    iget-object v0, p0, Landroidx/concurrent/futures/CallbackToFutureAdapter$b$a;->h:Landroidx/concurrent/futures/CallbackToFutureAdapter$b;

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-nez v0, :cond_0

    .line 153
    const-string v0, "Completer object has been garbage collected, future will fail soon"

    return-object v0

    .line 155
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->a:Ljava/lang/Object;

    const-string v2, "]"

    .line 0
    invoke-static {v1, v0, v2}, L_COROUTINE/a;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
