.class Lcom/google/common/util/concurrent/AbstractIdleService$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractIdleService$b;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AbstractIdleService$b;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$b;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$b$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$b$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService$b;

    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractIdleService$b;->p:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->startUp()V

    .line 63
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    return-void
.end method
