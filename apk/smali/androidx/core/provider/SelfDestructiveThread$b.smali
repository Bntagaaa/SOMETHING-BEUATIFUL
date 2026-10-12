.class Landroidx/core/provider/SelfDestructiveThread$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Callable;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Landroid/os/Handler;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/SelfDestructiveThread$b;->a:Ljava/util/concurrent/Callable;

    iput-object p2, p0, Landroidx/core/provider/SelfDestructiveThread$b;->b:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/core/provider/SelfDestructiveThread$b;->c:Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 147
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread$b;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    new-instance v1, Landroidx/core/provider/SelfDestructiveThread$b$a;

    invoke-direct {v1, p0, v0}, Landroidx/core/provider/SelfDestructiveThread$b$a;-><init>(Landroidx/core/provider/SelfDestructiveThread$b;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/core/provider/SelfDestructiveThread$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
