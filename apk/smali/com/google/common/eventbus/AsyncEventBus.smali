.class public Lcom/google/common/eventbus/AsyncEventBus;
.super Lcom/google/common/eventbus/EventBus;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 57
    new-instance v0, Lcom/google/common/eventbus/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/eventbus/a$c;-><init>(I)V

    .line 39
    sget-object v1, Lcom/google/common/eventbus/EventBus$a;->a:Lcom/google/common/eventbus/EventBus$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/a;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 57
    new-instance v0, Lcom/google/common/eventbus/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/eventbus/a$c;-><init>(I)V

    .line 62
    sget-object v1, Lcom/google/common/eventbus/EventBus$a;->a:Lcom/google/common/eventbus/EventBus$a;

    const-string v2, "default"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/a;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 2

    .line 57
    new-instance v0, Lcom/google/common/eventbus/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/eventbus/a$c;-><init>(I)V

    .line 52
    const-string v1, "default"

    invoke-direct {p0, v1, p1, v0, p2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/a;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method
