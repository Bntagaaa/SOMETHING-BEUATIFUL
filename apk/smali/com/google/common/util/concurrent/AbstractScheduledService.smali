.class public abstract Lcom/google/common/util/concurrent/AbstractScheduledService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$c;,
        Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lcom/google/common/util/concurrent/AbstractService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractScheduledService;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$c;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitRunning()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->awaitRunning()V

    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final awaitTerminated()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->awaitTerminated()V

    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractService;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public executor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    .line 336
    new-instance v0, Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V

    .line 337
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$a;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$a;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 355
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 343
    invoke-virtual {p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractScheduledService;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->isRunning()Z

    move-result v0

    return v0
.end method

.method public abstract runOneIteration()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract scheduler()Lcom/google/common/util/concurrent/AbstractScheduledService$Scheduler;
.end method

.method public serviceName()Ljava/lang/String;
    .locals 1

    .line 366
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shutDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->startAsync()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public startUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService;->a:Lcom/google/common/util/concurrent/AbstractService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService;->stopAsync()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
