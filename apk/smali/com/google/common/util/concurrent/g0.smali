.class Lcom/google/common/util/concurrent/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ExecutorService;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/g0;->a:Ljava/util/concurrent/ExecutorService;

    iput-wide p2, p0, Lcom/google/common/util/concurrent/g0;->b:J

    iput-object p4, p0, Lcom/google/common/util/concurrent/g0;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/google/common/util/concurrent/g0;->a:Ljava/util/concurrent/ExecutorService;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 215
    iget-wide v1, p0, Lcom/google/common/util/concurrent/g0;->b:J

    iget-object v3, p0, Lcom/google/common/util/concurrent/g0;->c:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
